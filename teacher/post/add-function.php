<?php
 include "../../functions/connect.php";
 
   if(isset($_POST['abc'])){
                date_default_timezone_set("Asia/Taipei");
                $datetime=date("Y-m-d h:i:sa");
                $title=$_POST['title'];
                $content=$_POST['content'];
                $category=$_POST['category'];     
    $sql = mysqli_query($con,"INSERT INTO `tbl_post`(`title`, `content`, `datetime_posted`, `cat_name`) VALUES ('$title','$content','$datetime','$category')");

  if($sql==true)
      {
            echo '<script language="javascript">';
            echo 'alert("Successfully Added")';
            echo '</script>';
            echo '<meta http-equiv="refresh" content="0;url=add.php" />';
      }
         
   }
                 
                        


?>