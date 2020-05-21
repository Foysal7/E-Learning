<!DOCTYPE html>
<html>
<head>
	  <title>Post List</title>
	    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="../../bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
         <link rel="icon" type="image/png"  href="../../images/favicon.png">
</head>
<body>
<div class="container" style="margin:5% auto;">
	 <button class='pull-right'onclick=window.print() id='print-button'>Print</button>
	 <h2>Post List</h2>
	  <table class="table table-striped table-bordered" id="example2">
                                        <thead>
                                        <tr>
                                           
                                            <th>Post_Id</th>
                                            <th>Title</th>
                                            <th>Content</th>
                                            <th>Time & Date</th>
                                            <th>Category</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                        <?php
                                        
                                        include "../../functions/connect.php";
                                      
                                        $sql = "SELECT * FROM `tbl_post` ";
                                        $run = mysqli_query($con,$sql);

                                        while($row=mysqli_fetch_array($run)){
                                            $id = $row['post_Id'];
                                            echo '<tr class="odd gradeX" id="rec">';?>
                                           <?php
                            
                                            echo "<td>".$row['post_Id']."</td>";
                                            echo "<td>".$row['title']."</td>";
                                            echo "<td>".$row['content']."</td>";
                                            echo "<td>".$row['datetime_posted']."</td>";
                                            echo "<td>".$row['cat_name']."</td>";
                                            echo "</tr>";
                                 
                                     
                                        }
                                    

                                        ?>
                                   
                                        
                                    </tbody>
                                    </table>
</div>
  <style type="text/css">
@media print {
    #print-button {
        display :  none;
    }

}
</style>

</body>
</html>