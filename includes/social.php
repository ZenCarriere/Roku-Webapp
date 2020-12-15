<?php
include("connect.php");
include("functions.php");

if(isset($_GET["id"])){
    $targetID = $_GET["id"];
    $result = getSingleSocialImage($pdo, $targetID);

    return $result;
} else{
    $allUsers = getAllSocialImages($pdo);

    return $allUsers;
}