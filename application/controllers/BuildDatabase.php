<?php

class BuildDatabase extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $this->load->dbforge();
        $this->createTableRepositories();
        $this->createTableDevelopers();
        echo "Database has been builded";
    }

    private function createTableDevelopers()
    {
        $fields = array(
            'id' => array(
                'type' => 'INT',
                'constraint' => 11,
                'auto_increment' => TRUE
            ),
            'username' => array(
                'type' => 'VARCHAR',
                'constraint' => '50',
                'null' => TRUE
            ),
            'url' => array(
                'type' => 'VARCHAR',
                'constraint' => '255',
                'null' => TRUE
            ),
            'avatar' => array(
                'type' => 'VARCHAR',
                'constraint' => '255',
                'null' => TRUE
            ),
            'repoId' => array(
                'type' => 'INT',
                'constraint' => '11',
                'null' => TRUE
            )
        );
        $this->dbforge->add_key('id', true);
        $this->dbforge->add_field($fields);
        $this->dbforge->create_table('developer', TRUE);
    }

    private function createTableRepositories()
    {
        $fields = array(
            'rank' => array(
                'type' => 'INT',
                'constraint' => 11
            ),
            'username' => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
                'null' => TRUE
            ),
            'repositoryName' => array(
                'type' => 'VARCHAR',
                'constraint' => '255',
                'null' => TRUE
            ),
            'url' => array(
                'type' => 'VARCHAR',
                'constraint' => '255',
                'null' => TRUE
            ),
            'description' => array(
                'type' => 'VARCHAR',
                'constraint' => '255',
                'null' => TRUE
            ),
            'language' => array(
                'type' => 'VARCHAR',
                'constraint' => '50',
                'null' => TRUE
            ),
            'languageColor' => array(
                'type' => 'VARCHAR',
                'constraint' => '7',
                'null' => TRUE
            ),
            'totalStars' => array(
                'type' => 'INT',
                'constraint' => '11',
                'null' => TRUE
            ),
            'forks' => array(
                'type' => 'INT',
                'constraint' => '11',
                'null' => TRUE
            ),
            'starsSince' => array(
                'type' => 'INT',
                'constraint' => '11',
                'null' => TRUE
            ),
        );
        $this->dbforge->add_key('rank', true);
        $this->dbforge->add_field($fields);
        $this->dbforge->create_table('repositories', TRUE);
    }
}