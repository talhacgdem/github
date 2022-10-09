<?php

class Repo_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('developer_model');
    }

    private string $table = "repositories";
    private string $joinTable = "developer";

    // Clear tables
    public function deleteAll()
    {
        $this->db->empty_table($this->table);
        $this->developer_model->empty();
    }


    public function hasRecords(): bool
    {
        return $this->db->get($this->table)->result_id->num_rows > 0;
    }

    public function getAll(): array
    {
        $results = $this->db
            ->order_by("rank")
            ->get($this->table)
            ->result_array();

        return $this->getDevelopers($results);
    }

    private function getDevelopers($repos): array
    {
        $result = array();
        foreach ($repos as $repo) {
            $repo['developers'] = $this->developer_model->getDevelopersFromRepoId($repo['rank']);
            $result[] = $repo;
        }
        return $result;
    }

    public function add($data): bool
    {
        return $this->db->insert($this->table, $data);
    }


    public function addDevelopers($data): bool
    {
        return $this->developer_model->insertAll($data);
    }

}