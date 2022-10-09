<?php

class Repo extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('repo_model');

        $APILEVEL = 2; // 1: Own Java Spring Boot API, 2: Remote foreign API

        if ($APILEVEL == 1) {
            $this->API_URL = "http://localhost:8080/repositories/trends";
        } elseif ($APILEVEL == 2) {
            $this->API_URL = "https://gh-trending-api.herokuapp.com/repositories";
        }
    }

    private string $API_URL;

    public function index()
    {
        if ($this->repo_model->hasRecords()){
            $this->get();
        }else{
            $this->update();
        }
    }

    public function get()
    {
        $data = array(
            'repositories' => $this->getAll(),
        );
        $this->load->view("showrepo", $data);
    }

    private function getAll(){
        return $this->repo_model->getAll();
    }

    /*
     * METHODS FOR UPDATE DATABASE
     */

    public function update()
    {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $this->API_URL);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $responseBody = curl_exec($ch);
        $responseHttpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        curl_close($ch);

        if ($responseHttpCode == 200) {
        $repositoriesArray = json_decode($responseBody);

        // Array sorting by daily star value
        $keys = array_column($repositoriesArray, 'starsSince');
        array_multisort($keys, SORT_DESC, $repositoriesArray);

        // Update the rank of sorted array elements
        $repositoriesArray = $this->updateRanksOnArray($repositoriesArray);

        // Send array for inserting
        $this->updateFromJson($repositoriesArray);
        } else {
            header('HTTP/1.1 503');
            die("Requested API Server is not accessible: " . $responseHttpCode);
        }

        echo "Database updated. " . date("Y-m-d H:i:s");
    }

    private function updateRanksOnArray($array){
        $result = array();
        foreach ($array as $k => $item) {
            $item->rank = $k+1;
            $result[] = $item;
        }
        return $result;
    }

    private function updateFromJson($repositories)
    {
        $this->repo_model->deleteAll();

        foreach ($repositories as $repository) {
            $repoId = $repository->rank;
            $dataRepository = array(
                'rank'              => $repoId,
                'username'          => $repository->username,
                'repositoryName'    => $repository->repositoryName,
                'url'               => $repository->url,
                'description'       => $repository->description,
                'language'          => $repository->language,
                'languageColor'     => $repository->languageColor,
                'totalStars'        => $repository->totalStars,
                'forks'             => $repository->forks,
                'starsSince'        => $repository->starsSince
            );
            if ($this->repo_model->add($dataRepository)) {
                $this->addDeveloper($repository->builtBy, $repoId);
            }else{
                echo "Failed to add object number: " . $repository->rank;
            }
        }
    }

    private function addDeveloper($developerArray, $repoId){
        $dataDeveloper = array();
        foreach ($developerArray as $developer){
            $dataDeveloper[] = array(
                'username'  => $developer->username,
                'url'       => $developer->url,
                'avatar'    => $developer->avatar,
                'repoId'    => $repoId
            );
        }
        if (!$this->repo_model->addDevelopers($dataDeveloper)){
            echo "Could not add developer records of Repository rank:" . $repoId;
        }

    }


}