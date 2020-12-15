<?php
    include("connect.php");
    $result = array();


function getAllLandingImages($conn) {

    $query = "SELECT * FROM landing";

    $runQuery = $conn->query($query);

    while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)){
        $result[] = $row;
    }

    echo (json_encode($result));

}


function getAllSocialImages($conn) {

    $query = "SELECT * FROM social";

    $runQuery = $conn->query($query);

    while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)){
        $result[] = $row;
    }

    echo (json_encode($result));

}

function getAllKidsSocialImages($conn) {

    $query = "SELECT * FROM kidsocial";

    $runQuery = $conn->query($query);

    while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)){
        $result[] = $row;
    }

    echo (json_encode($result));

}

function getAllContentImages($conn) {

    $query = "SELECT * FROM regularcontent";

    $runQuery = $conn->query($query);

    while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)){
        $result[] = $row;
    }

    echo (json_encode($result));

}
function getAllKidsContentImages($conn) {

    $query = "SELECT * FROM kidcontent";

    $runQuery = $conn->query($query);

    while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)){
        $result[] = $row;
    }

    echo (json_encode($result));

}

function getSingleKidsContentImage($conn, $id) {

    $query = "SELECT * FROM kidcontent WHERE id=" . $id . "";

    $runQuery = $conn->query($query);

    while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)){
        $result[] = $row;
    }

    echo (json_encode($result));

}

function getSingleContentImage($conn, $id) {

    $query = "SELECT * FROM regularcontent WHERE id=" . $id . "";

    $runQuery = $conn->query($query);

    while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)){
        $result[] = $row;
    }

    echo (json_encode($result));

}

function getSingleLandingImage($conn, $id) {

    $query = "SELECT * FROM landing WHERE id=" . $id . "";

    $runQuery = $conn->query($query);

    while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)){
        $result[] = $row;
    }

    echo (json_encode($result));

}

function getSingleSocialImage($conn, $id) {

    $query = "SELECT * FROM social WHERE id=" . $id . "";

    $runQuery = $conn->query($query);

    while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)){
        $result[] = $row;
    }

    echo (json_encode($result));

}

function getSingleKidsSocialImage($conn, $id) {

    $query = "SELECT * FROM kidsocial WHERE id=" . $id . "";

    $runQuery = $conn->query($query);

    while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)){
        $result[] = $row;
    }

    echo (json_encode($result));

}