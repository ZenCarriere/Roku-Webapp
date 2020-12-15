<?php
include("connect.php");
include("functions.php");

if(isset($_GET["id"])){
    $targetID = $_GET["id"];
    $result = getSingleLandingImage($pdo, $targetID);

    return $result;
} else{
    $allUsers = getAllLandingImages($pdo);

    return $allUsers;
}