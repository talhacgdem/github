<?php

class Developer_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    private string $table = "developer";

    public function insertAll($data): bool
    {
        return $this->db->insert_batch($this->table, $data);
    }

    public function getDevelopersFromRepoId($repoID): array
    {
        return $this->db->where('repoId', $repoID)->get($this->table)->result_array();
    }

    public function empty(): void
    {
        $this->db->empty_table($this->table);
        $this->db->query("ALTER TABLE $this->table AUTO_INCREMENT = 1");
    }
}