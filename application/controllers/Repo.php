<?php

class Repo extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('repo_model');
    }

    public function index()
    {
        $this->get();
    }

    public function get()
    {
        if ($this->repo_model->hasRecords()){
            $this->update();
        }else{

        }
    }

    public function update(){

    }


    private function githubRequest()
    {
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL, "https://api.github.com/search/repositories?q=stars:>1&sort=stars");
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);

        $agent = 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)';
        curl_setopt($curl, CURLOPT_USERAGENT, $agent);

        $output = json_decode(curl_exec($curl));
        curl_close($curl);

        return $output;
    }

}