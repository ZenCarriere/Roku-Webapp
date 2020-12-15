<?php
include("connect.php");
include("functions.php");

if(isset($_GET["id"])){
    $targetID = $_GET["id"];
    $result = getSinglePortfolioProject($pdo, $targetID);

    return $result;
} else{
    $allUsers = getAllPortfolioProjects($pdo);

    return $allUsers;
}