<?php


function dbcon(){
	$host = "localhost";
	$user = "root";
	$pwd = "";
	$db = "db_elearning";

	$con = mysqli_connect($host,$user,$pwd) or die ("ERROR Connecting to Database");

	$sel = mysqli_select_db($db);
}

function dbclose(){
	$host = "localhost";
	$user = "root";
	$pwd = "";
	$db = "db_elearning";

	$con = mysqli_connect($host,$user,$pwd) or die ("ERROR Connecting to Database");

	$sel = mysqli_select_db($db);

	mysqli_close($con);
}

function topic(){
	dbcon();
	$sel = mysqli_query("SELECT * from tbl_topic");

	if($sel==true){
		while($row=mysqli_fetch_assoc($sel)){
			extract($row);
			echo '<option value='.$topic_Id.'>'.$name.'</option>';
		}
	}


	dbclose();
}

?>