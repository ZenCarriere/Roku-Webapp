<?php
include("connect.php");
include("functions.php");

if(isset($_GET["id"])){
    $targetID = $_GET["id"];
    $result = getSingleIndexProject($pdo, $targetID);

    return $result;
} else{
    $allUsers = getAllIndexProjects($pdo);

    return $allUsers;
}