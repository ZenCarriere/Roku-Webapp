<?php
include("connect.php");
include("functions.php");

if(isset($_GET["id"])){
    $targetID = $_GET["id"];
    $result = getSingleKidsContentImage($pdo, $targetID);

    return $result;
} else{
    $allUsers = getAllKidsContentImages($pdo);

    return $allUsers;
}