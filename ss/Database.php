<?php
require 'Config.php';
class Database{
    private String $table;



    public function setTable($table){
        $this->table = $table;
    }

    public function select(){

    }





}

$db = new PDO('mysql:host=localhost;dbname=github', "root", "");



print_r($db->query("SELECT * FROM repos")->fetchAll(PDO::FETCH_ASSOC));
echo "<hr>";
$repo = new Repo(12, 32);

$stmt = $db->prepare("INSERT INTO repos (data) VALUES (?)");

$stmt->execute(array(
    serialize($repo)
));

print_r($db->query("SELECT * FROM repos")->fetchAll(PDO::FETCH_ASSOC));
echo "<hr>";





