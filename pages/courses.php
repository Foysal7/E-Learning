<!DOCTYPE html>
<html lang="en">
 <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <meta name="description" content="Affordable Web Design For Small And Medium-Sized Companies">
    <meta name="author" content="Sebastian Eschweiler">
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
            <li class="current"><a href="../index.php">Home</a></li>          
            <li><a href="html_course.php">HTML</a></li>
            <li><a href="css_course.php">CSS</a></li>
            <li><a href="php_course.php">PHP</a></li>
            <li><a href="python_course.php">Python</a></li>
            <li><a href="contact.php">Contact</a></li>
            <li><a href="about.php">About</a></li>
            <li><a href="../student/signup.php">Register</a></li>
            <li><a href="../student/index.php">login</a></li>           
          </ul>
        </nav>
      </div>
    </header>


	<header id="head" class="secondary">
            <div class="container">
                    <h1>Categories</h1>
                    <p>Courses that were posted by the administrator!</p>
                </div>
    </header>


<div class="container">


</div>
	<div id="courses">
		<section class="container">
			<h3>Different Categories</h3>
			<div class="row">
				<div class="col-md-4">
					<div class="featured-box"> 
					 			<?php
                                        
                                        include "../functions/connect.php";
                                      
                                        $sql = "SELECT * FROM `tbl_category` ";
                                        $run = mysqli_query($con,$sql);

                                        while($row=mysqli_fetch_array($run)){
                                        
                                            $id = $row['cat_Id'];
                                            $name = $row['name'];
                                            #$description = $row['description'];
                                            ?>
						<div class="text">
							<h3><?php echo $name;?></h3>
							<?php #echo $description;
							?>
							</div>
							    <?php }?>
					</div>
				</div>
				
			</div>

		</section>
	</div>
  
			<div class="social text-center">
				<a href="#"><i class="fa fa-twitter"></i></a>
				<a href="#"><i class="fa fa-facebook"></i></a>
				<a href="#"><i class="fa fa-dribbble"></i></a>
				<a href="#"><i class="fa fa-flickr"></i></a>
				<a href="#"><i class="fa fa-github"></i></a>
			</div>

			<div class="clear"></div>
		</div>
		<div class="footer2">
			<div class="container">
				<div class="row">

					<div class="col-md-6 panel">
						<div class="panel-body">
							<p class="simplenav">
								<a href="../index.php">Home</a> | 
								<a href="about.php">About</a> |
								<a href="courses.php">Courses</a> |
								<a href="contact.php">Contact</a>
							</p>
						</div>
					</div>

					<div class="col-md-6 panel">
						<div class="panel-body">
							<p class="text-right">
								E-Learning Copyright &copy; 2019.
							</p>
						</div>
					</div>

				</div>
			</div>
		</div>
	</footer>

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

		});
      
	</script>
    
</body>
</html>
