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
            <li><a href="../index.php">Home</a></li>          
            <li><a href="html_course.php">HTML</a></li>
            <li><a href="css_course.php">CSS</a></li>
            <li><a href="php_course.php">PHP</a></li>
            <li><a href="python_course.php">Python</a></li>
            <li class="current"><a href="contact.php">Contact</a></li>
            <li><a href="about.php">About</a></li>
            <li><a href="../student/signup.php">Register</a></li>
            <li><a href="../student/index.php">login</a></li>           
          </ul>
        </nav>
      </div>
    </header>
<body>
    <style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 50%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container1 {
  margin-left: 100px;
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>


	
		

 
	<div class="container1" style="padding: 10px;">
				<div class="row">
					<div class="col-md-8">
						<h3 class="section-title">Your Message</h3>
						<p>
						Fill-out the forms provided below in order to send message to the administrator
						</p>
						
						<form class="form-light mt-20" role="form" method="POST" action="process-contact.php">
							<div class="form-group">
								<label>Name</label><br>
								<input type="text" class="form-control" name="name" placeholder="Your name">
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label>Email</label><br>
										<input type="text" class="form-control" name="email" placeholder="Email address">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Phone</label><br>
										<input type="text" class="form-control" name="phone" placeholder="Phone number">
									</div>
								</div>
							</div>
							<div class="form-group">
								<label>Subject</label><br>
								<input type="text" class="form-control" name="subject" placeholder="Subject">
							</div>
							<div class="form-group">
								<label>Message</label><br>
								<textarea class="form-control" id="message" name="message" placeholder="Write you message here..." style="height:100px;"></textarea>
							</div>
							<button type="submit" class="btn btn-two">Send message</button><p><br/></p>
						</form>
					</div>
					
				</div>
			</div>

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
