<?php

include('config/app.php');
include('codes/authentication.php');







?>


<!DOCTYPE html>
<html lang="en">

<head>

    <title>Register Form</title>
    <style>
        body {
            
            padding: 0;
            margin: 0;
            background-image: url('./image/7.jpeg');
            background-repeat: no-repeat;
            background-size: cover;
        }
        
        .main {
            background: black;
            border-bottom: 2px solid white;
        }
        
        form {
            margin-top: 10px;
            padding: 10px;
            padding-left: 20px;
            border: 2px solid black;
            width: 30%;
            margin-left: auto;
            margin-right: auto;
            background: silver;
            border-top-right-radius: 20px;
            border-bottom-left-radius: 20px;
            border-top-left-radius: 20px;
            border-bottom-right-radius: 20px;
            opacity: 0.9;
        }
        
        form input {
            margin-top: 5px;
            font-size: 15px;
            padding: 6px;
            width: 70%;
        }
        
        form label {
            margin-top: 10px;
            font-size: 15px;
            font-weight: bold;
        }
    </style>

</head>

<body>

    <div class="main">
        <h1 style="color: wheat;">
            <center>REGISTRATION</center>
        </h1>
    </div>



    <form action="" method="POST">
        <label for="">Id Number</label><br>
        <input type="number" name="id" placeholder="Identification Number" required><br>
        <label for="">First Name</label><br>
        <input type="text" name="fname" placeholder="Leise" required><br>
        <label for="">Middle Name</label><br>
        <input type="text" name="mname" placeholder="Leslie" required><br>
        <label for="">Last Name</label><br>
        <input type="text" name="lname" placeholder="Isaac" required><br>
        <label for="email"></label><br>
        <input type="text" name="email" placeholder="Email" required><br>
        <label for="">Phone Number</label><br>
        <input type="number" name="pnumber" placeholder="0743496140" required><br> Male:
        <input type="radio" name="gender" value="male"><br> Female: <input type="radio" name="gender" value="female" required><br>
        <label for="">Password</label><br>
        <input type="password" name="password" placeholder="Password" required><br>
        <label for="">Confirm Password</label><br>
        <input type="password" name="cpassword" placeholder="Confirm Password" required><br>
        <input type="submit" name="submit">

    </form>
</body>

</html>