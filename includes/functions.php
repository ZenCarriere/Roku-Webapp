<?php
    include("connect.php");
    $result = array();


function getAllIndexProjects($conn) {

    $query = "SELECT * FROM tbl_index";

    $runQuery = $conn->query($query);

    while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)){
        $result[] = $row;
    }

    echo (json_encode($result));

}

function getAllPortfolioProjects($conn) {

    $query = "SELECT * FROM tbl_portfolio";

    $runQuery = $conn->query($query);

    while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)){
        $result[] = $row;
    }

    echo (json_encode($result));

}

function getSingleIndexProject($conn, $id) {

    $query = "SELECT * FROM tbl_index WHERE id=" . $id . "";

    $runQuery = $conn->query($query);

    while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)){
        $result[] = $row;
    }

    echo (json_encode($result));

}

function getSinglePortfolioProject($conn, $id) {

    $query = "SELECT * FROM tbl_portfolio WHERE id=" . $id . "";

    $runQuery = $conn->query($query);

    while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)){
        $result[] = $row;
    }

    echo (json_encode($result));

}