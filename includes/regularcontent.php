<?php
include("connect.php");
include("functions.php");

if(isset($_GET["id"])){
    $targetID = $_GET["id"];
    $result = getSingleContentImage($pdo, $targetID);

    return $result;
} else{
    $allUsers = getAllContentImages($pdo);

    return $allUsers;
}