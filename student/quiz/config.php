<?php
define('DB_HOST', 'localhost');
define('DB_NAME', 'smarttut_developersguide');
define('DB_USER','smarttut_devel');
define('DB_PASSWORD','admin10');

$con=mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD) or die("Failed to connect to MySQL: " . mysqli_error());
$db=mysqli_select_db(DB_NAME,$con) or die("Failed to connect to MySQL: " . mysqli_error());


?>