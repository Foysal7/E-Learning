<!DOCTYPE html>
<html>
<head>
	  <title>Category List</title>
	    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="../../bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
         <link rel="icon" type="image/png"  href="../../images/favicon.png">
</head>
<body>
<div class="container" style="margin:5% auto;">
	 <button class='pull-right'onclick=window.print() id='print-button'>Print</button>
	 <h2>Category List</h2>
	  <table class="table table-striped table-bordered" id="example2">
                                        <thead>
                                        <tr>
                                           
                                            <th>Category_Id</th>
                                            <th>Category_Name</th>
                                           
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                        <?php
                                        
                                        include "../../functions/connect.php";
                                      
                                        $sql = "SELECT * FROM `tbl_category` ";
                                        $run = mysqli_query($con,$sql);

                                        while($row=mysqli_fetch_array($run)){
                                            $id = $row['cat_Id'];
                                            echo '<tr class="odd gradeX" id="rec">';?>
                                           <?php
                            
                                            echo "<td>".$row['cat_Id']."</td>";
                                            echo "<td>".$row['name']."</td>";
        									
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