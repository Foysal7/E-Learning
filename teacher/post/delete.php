<?php
include "../../functions/connect.php";
if($_GET['post_Id'])
{
$id=$_GET['post_Id'];
 $sql = "DELETE FROM tbl_post WHERE post_Id='$id'";
 mysqli_query($con,$sql);
}

?>