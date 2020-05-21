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
            <li><a href="../index.php">Home</a></li>          
            <li><a href="html_course.php">HTML</a></li>
            <li><a href="css_course.php">CSS</a></li>
            <li><a href="php_course.php">PHP</a></li>
            <li><a href="python_course.php">Python</a></li>
            <li><a href="contact.php">Contact</a></li>
            <li class="current"><a href="about.php">About</a></li>
            <li><a href="../student/signup.php">Register</a></li>
            <li><a href="../student/index.php">login</a></li>           
          </ul>
        </nav>
      </div>
    </header>


	<header id="head" class="secondary">
            <div class="container">
                    <h1>About Us</h1>
                    <p>Know more about the organization!</p>
                </div>
    </header>

    <section class="container">
        <div class="row">
            <section class="col-sm-8 maincontent">
                <h3>About Us</h3>
                <p>
                    <img src="../images/csit.png" alt="" class="img-rounded pull-right" width="300">
                    There are many terms used to describe learning that is delivered online, via the internet, ranging from 
					Distance Education, to computerized electronic learning, online learning, internet learning and many 
					others. We define eLearning as courses that are specifically delivered via the internet to somewhere 
					other than the classroom where the professor is teaching. It is not a course delivered via a DVD or 
					CD-ROM, video tape or over a television channel. It is interactive in that you can also communicate 
					with your teachers, professors or other students in your class. Sometimes it is delivered live, 
					where you can “electronically” raise your hand and interact in real time and sometimes it is a 
					lecture that has been prerecorded. There is always a teacher or professor interacting /communicating 
					with you and grading your participation, your assignments and your tests. eLearning has been proven 
					to be a successful method of training and education is becoming a way of life for many citizens in 
					North Carolina. 
                </p>
                <p>The day-to-day aspects of this job can vary, but in nearly all cases the work involves maintaining computer systems, keeping networks in working order, and being available to solve problems and address complaints as they arise.</p>
                            </section>


           <!-- <aside class="col-sm-4 sidebar sidebar-right">

                <div class="panel">
                    <h4>Latest Topic</h4>
                    <?php
                                        
                                        include "../functions/connect.php";
                                      
                                        $sql = "SELECT * FROM `tbl_topic` ";
                                        $run = mysqli_query($con,$sql);

                                        while($row=mysqli_fetch_array($run)){
                                        
                                            $id = $row['topic_Id'];
                                            $title = $row['title'];
                                         
                                            ?>
                   <ul class="list-unstyled list-spaces">
                        <li><a href="../functions/alert.php"><?php echo ucfirst($title);?></a><br>
                            <span class="small text-muted">abc</span></li>
                      <?php 
                        }
                      ?>
                    </ul>
                </div>

            </aside>-->

        </div>
    </section>

  
			<div style="margin-left: 550px; font-size: 30px;">
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-dribbble"></i></a>
                <a href="#"><i class="fa fa-flickr"></i></a>
                <a href="#"><i class="fa fa-github"></i></a>
            </div>

			<div class="clear"></div>
		</div>
		

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
<?php include("footer.php");?>
</html>
