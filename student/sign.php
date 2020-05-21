<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>E-Learning</title>
  </head>
  <body>
  <style>
    body {
      font-family: Arial, Helvetica, sans-serif;
      background-color: #074558;
      border: 1px solid #f1f1f1;
      height: 60%;
      width: 50%;
      margin-top: 10%;
      margin-left: 25%;

      color: #fff;

      }

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 2px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #827575;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  font-size: 20px;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
  color: black;
  background-color: white;
}


.container {
  padding-left: 20%;
  width: 50%;

}
a{
  color: #fff;
}
a:hover{
  color: #929292;
}
span.psw {
  float: right;
  padding-top: 16px;
}

@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
}
  </style>
 
<section class="login-form">


  <div class="container">
    <h1>Student</h1>
      <form method="post" class="form" action="../functions/user_login.php">
        <p><input type="text" name="username" value="" placeholder="Student Username"></p>
        <p><input type="password" name="password" value="" placeholder="Password"></p>
        
        <p class="submit"><input type="submit" name="commit" value="Login"></p>
        <p>Not a Member? <a href="signup.php">Register here!</a>.</p>
      </form>
    </div>
</section>
</body>

</html>
