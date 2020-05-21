<!DOCTYPE html>
<html>
<head>
	  <title>Question List</title>
	    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="../../bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
         <link rel="icon" type="image/png"  href="../../images/favicon.png">
</head>
<body>
<div class="container" style="margin:5% auto;">
	 <button class='pull-right'onclick=window.print() id='print-button'>Print</button>
	 <h2>Question List</h2>
	  <table class="table table-striped table-bordered" id="example2">
                                        <thead>
                                        <tr>
                                           
                                            <th>Quiz_Id</th>
                                            <th>Question_Name</th>
                                            <th>Option A</th>
                                            <th>Option B</th>
                                            <th>Option C</th>
                                            <th>Option D</th>
                                            <th>Answer</th>
                                           
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                        <?php
                                        
                                        include "../../functions/connect.php";
                                      
                                        $sql = "SELECT * FROM `tbl_quiz` ";
                                        $run = mysqli_query($con,$sql);

                                        while($row=mysqli_fetch_array($run)){
                                            $id = $row['quiz_Id'];
                                            echo '<tr class="odd gradeX" id="rec">';?>
                                           <?php
                            
                                            echo "<td>".$row['quiz_Id']."</td>";
                                            echo "<td>".$row['question_name']."</td>";
                                            echo "<td>".$row['answer1']."</td>";
                                            echo "<td>".$row['answer2']."</td>";
                                            echo "<td>".$row['answe3']."</td>";
                                            echo "<td>".$row['answer4']."</td>";
                                            echo "<td>".$row['answer']."</td>";
        									
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