<?php
  session_start();
  if (isset($_SESSION['username'])&&$_SESSION['username']!=""){
  }
  else
  {
    header("Location:../home.php");
  }
$username=$_SESSION['username'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>E-Learning</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
  </head>
<body>

	<header>
      <div class="container">
        <div id="branding">
          <h1>E-Learning</h1>
        </div>
        <nav>
          <ul>
            <li><a href="home.php">Home</a></li> 
            <li><a href="S_pages/html_course.php">HTML</a></li>
            <li><a href="S_pages/css_course.php">CSS</a></li>
            <li><a href="S_pages/php_course.php">PHP</a></li>
            <li><a href="S_pages/python_course.php">Python</a></li>
            <li class="current"><a href="user-details.php">Profile</a></li>
           <li><a href="../functions/user_logout.php">Logout</a></li>

          </ul>
        </nav>
      </div>
    </header>


	<header id="head" class="secondary">
            <div class="container">
                    <h1>User Details</h1>                    
                </div>
    </header>


<div class="container">


</div>
	<div id="courses">
		<section class="container">
			<h3>Update Account Information</h3>
			<div class="row">
				<div class="col-md-8">
					<div class="featured-box"> 
					 		<?php
include "../functions/connect.php";

$s = mysqli_query($con,"SELECT * FROM `tbl_user` WHERE `username`='$username'");
while($r = mysqli_fetch_array($s)){
	$Id = $r['user_Id'];
	$f = $r['fname'];
	$l = $r['lname'];
	$dob = $r['dob'];
	$g = $r['gender'];
	$uname = $r['username'];
	$pwd = $r['password'];
	
}
extract($_POST);
if(isset($upt)){
				
	$e = mysqli_query($con,"UPDATE `tbl_user` SET `fname`='$fname',`lname`='$lname',`dob`='$dob',`gender`='$gender',`username`='$username',`password`='$password' WHERE `username`='$username'");
	if($e==true)
                                  {
                                        echo '<script language="javascript">';
                                        echo 'alert("Successfully Updated")';
                                        echo '</script>';
                                        echo '<meta http-equiv="refresh" content="0;url=user-details.php" />';
                                  }
}

 ?>	

	<style> 
input[type=text] {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
</style>

<form method="POST">
  <label>First Name</label><br>
    <input type="text"name="fname"  id="form" class="form-control"placeholder="First Name"  value="" ><br>
    <label>Last Name</label><br>
    <input type="text" name="lname" id="form" class="form-control"placeholder="Last Name"  value="" ><br>
    <label>Date of birth</label><br>
    <input type="date" name="dob" id="form"class="form-control"  value="<?php echo $dob;?>" ><br>
    <label>Gender</label><br>
    <select name="gender" class="form-control"id="form"  >
      <option><?php echo 'gender';?></option>
      <option value="Male">Male</option>
      <option value="Female">Female</option>
    </select><br>
    <label>Username</label><br>
    <input type="text" id="form" name="username"class="form-control" placeholder="Username"  value="<?php echo 'username';?>" ><br>
    <label>Password</label><br>
    <input type="password" id="form" name="password" class="form-control"placeholder="Password"  value="<?php echo 'password';?>" ><br>
    <input type="submit" value="Update" name="upt" class="btn btn-primary" />
  </form>
       	 				</div>
					</div>
							
				</div>
				
			</div>

		</section>
	</div>
  
		
	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="../js/modernizr-latest.js"></script> 
	<script type='text/javascript' src='../js/jquery.min.js'></script>
    <script type='text/javascript' src='../js/fancybox/jquery.fancybox.pack.js'></script>
    
    <script type='text/javascript' src='../js/jquery.mobile.customized.min.js'></script>
    <script type='text/javascript' src='../js/jquery.easing.1.3.js'></script> 
    <script type='text/javascript' src='../js/camera.min.js'></script> 
    <script src="../js/bootstrap.min.js"></script> 
	<script src="../js/custom.js"></script>
    <script>
		jQuery(function(){
			
			jQuery('#camera_wrap_4').camera({
                transPeriod: 500,
                time: 3000,
				height: '600',
				loader: 'false',
				pagination: true,
				thumbnails: false,
				hover: false,
                playPause: false,
                navigation: false,
				opacityOnGrid: false,
				imagePath: 'images/'
			});

		
      
	</script>
    
</body>
</html>
