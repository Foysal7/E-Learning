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

     }
form {
  border: 1px solid #f1f1f1;
  margin-top: 3%;
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
  padding-left: 40%;
  width: 25%;

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

<form method="POST" class="form" action="../functions/signup-functions.php">
  <div class="container">
    <h2>Student Signup</h2>
    <input type="text" placeholder="First Name" name="fname" required>
    <input type="text" placeholder="Last Name" name="lname" required>
    <label>Date of birth</label><br>
    <input type="date" name="dob"  required style="width:95%; height: 30px; padding-left: 20px;">
    <br>
    <br>
    <select name="gender" style="width:100%; height: 30px; padding-left: 20px;">
    <option>Gender</option>
    <option value="Male">Male</option>
    <option value="Female">Female</option>
    </select>
    <br>   
    <input type="text" placeholder="Username" name="uname" required>
    <input type="password" placeholder="Password" name="psw" required>   
    <button type="submit" >Signup</button>
    <p>Already a member? <a href="../index.php">Login here!</a>.</p>
  </div>
</form>
</section>
</body>

</html>
