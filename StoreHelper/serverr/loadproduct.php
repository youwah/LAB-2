<?php
include_once("dbconnect.php");
$prname = $_POST['prname'];

if ($prname == "") {
    $sqlloadproduct ="SELECT * FROM tbl_products ORDER BY prid DESC";
} else {
    $sqlloadproduct = "SELECT * FROM tbl_products WHERE prname LIKE '%$prname%'";
}


$result = $conn->query($sqlloadproduct);

if($result ->num_rows >0){
    
    $response["products"]=array();
    while ($row = $result -> fetch_assoc()){
        $list = array();
        $list[id] = $row['prid'];
        $list[name] = $row['prname'];
        $list[type] = $row['prtype'];
        $list[price] = $row['prprice'];
        $list[qty] = $row['prqty'];
        $list[datecreated] = $row['datecreated'];
        array_push($response["products"],$list);
    }
    echo json_encode($response);
}else{
    echo "nodata";
}


?>

