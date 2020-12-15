<?php
include("connect.php");
include("functions.php");

if(isset($_GET["id"])){
    $targetID = $_GET["id"];
    $result = getSingleKidsSocialImage($pdo, $targetID);

    return $result;
} else{
    $allUsers = getAllKidsSocialImages ($pdo);

    return $allUsers;
}