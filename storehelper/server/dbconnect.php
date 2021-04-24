<?php
$servername = "localhost";
$username   = "crimsonw_storehelperuser";
$password   = "2573SECpl=ZW";
$dbname     = "crimsonw_storehelperdb";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>