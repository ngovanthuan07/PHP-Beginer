<?php 
$host = "localhost";
$user = "root";
$passwords = "";
$database = "demo_db";

$con = mysqli_connect($host, $user, $passwords, $database);

if (mysqli_connect_errno()) {
    echo "Connect Fail: " . mysqli_connect_errno();
} else {
    echo "Success";
}

?>