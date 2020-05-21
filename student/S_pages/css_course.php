<!DOCTYPE html>
<html lang="en">
 <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>E-Learning</title>
    <link rel="stylesheet" href="../../css/style.css">
    <link rel="stylesheet" href="../../css/font-awesome.min.css">
  </head>
  <body>
    <header>
      <div class="container">
        <div id="branding">
          <h1>E-Learning</h1>
        </div>
        <nav>
          <ul>
            <li><a href="../home.php">Home</a></li>          
            <li><a href="html_course.php">HTML</a></li>
            <li class="current"><a href="css_course.php">CSS</a></li>
            <li><a href="php_course.php">PHP</a></li>
            <li><a href="python_course.php">Python</a></li>
            <li><a href="../user-details.php">Profile</a></li>
            <li><a href="../../functions/user_logout.php">Logout</a></li>        
          </ul>
        </nav>
      </div>
    </header>

<marquee style="font-size: 20px; font-family: sans-serif;color: #8ebf42; padding: 10px 0; background-color: black; font-weight: 800;">Welcome To HTML Tutorial</marquee><br>

<style>
.content-box{
  background-color: #f5f5f5;
  padding-bottom: 30px;


}
.title {
  text-align: left;
  margin-left: 20px;
  text-decoration-line: underline;
  font-size: 30px;
  color: black;
  text-decoration-line: none;
}

.content {
  text-align: left;
  font-size: 20px;
  color: #735c5c;
  background-color: white;
  width: 75%;
  border: 3px solid #4caf50;
  padding: 20px;
  margin: 10px;
}

</style>
</head>
<body class="content-box">
<?php
include "../../functions/connect.php";
$sql = mysqli_query($con,"SELECT * FROM `tbl_post` WHERE cat_name='CSS'");
        while ($row=mysqli_fetch_array($sql)) {?>
          <div class="title"><?php echo $row['title'];?></div>
          <div class="content"><?php echo $row['content']; ?></div>
         <!-- <h1 class="title"> <a href="<?php echo $row['title'];?>"><?php echo $row['title'];?> </a></h1>
          <h3 class="content"><?php echo $row['content']; ?></h3>-->
          
  <?php
}
?>


<br>
<br>
<footer style="background-color: black;">
      <p>Copyright E-Learning &copy; 2019-20</p>
    </footer>
</body>
</html>