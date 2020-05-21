<?php
  session_start();
  if (isset($_SESSION['username'])&&$_SESSION['username']!=""){
  }
  else
  {
    header("Location:../index.php");
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
            <li class="current"><a href="home.php">Home</a></li>
            <li><a href="./S_pages/html_course.php">HTML</a></li>
            <li><a href="./S_pages/css_course.php">CSS</a></li>
            <li><a href="./S_pages/php_course.php">PHP</a></li>            
            <li><a href="./S_pages/python_course.php">Python</a></li>
            <li><a href="./quiz.php">Quiz</a></li>
            <li><a href="user-details.php">Profile</a></li>
			     <li><a href="../functions/user_logout.php">Logout</a></li>        
          </ul>
        </nav>
      </div>
    </header>


<section id="showcase">
      <div class="container">
        <h1>Start Online Learning Here From today...</h1>
        <p>Our mission is to provide a free, world-class education to anyone, anywhere.You can learn anything.For every student,every classroom.Real results.Differentiate your classroom and engage every student.You can learn anything.</p>
      </div>
    </section>

    

    <section id="boxes">
      <div class="row">
      <div class="container">
        <div class="box">
          <i class="fa fa-signal fa-5x"></i>
          <h3><a href="S_pages/php_course.php">HTML</a></h3>
          <p>HTML Tutorial You can find here.!</p>
        </div>
        <div class="box">
          <i class="fa fa-photo fa-5x"></i>
          <h3> <a href="S_pages/html_course.php">CSS</a></h3>
          <p>CSS Tutorial You can find here.!</p>
        </div>
        <div class="box">
          <i class="fa fa-cube fa-5x"></i>
          <h3><a href="S_pages/css_course.php">PHP</a></h3>
          <p>PHP Tutorial You can find here.!</p>
        </div>
        <div class="box">
          <i class="fa fa-cube fa-5x"></i>
          <h3><a href="S_pages/css_course.php">PYTHON</a></h3>
          <p>PYTHON Tutorial You can find here.!</p>
        </div>
      </div>
    </div>
    </section>


    <footer style="background-color: black;">
      <p>Copyright E-Learning &copy; 2019</p>
    </footer>
  </body>
</html>