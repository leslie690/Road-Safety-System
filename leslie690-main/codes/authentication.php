<?php
// include('config/app.php');
include_once('controllers/RegisterController.php');

if(isset($_POST['submit']))
{
    $id = validateInput($db->conn,$_POST['id']);
    $fname = validateInput($db->conn,$_POST['fname']);
    $mname = validateInput($db->conn,$_POST['mname']);
    $lname = validateInput($db->conn,$_POST['lname']);
    $email = validateInput($db->conn, $_POST['email']);
    $pnumber = validateInput($db->conn, $_POST['pnumber']);
    $gender = validateInput($db->conn, $_POST['gender']);
    $password=validateInput($db->conn, $_POST['password']);
    $cpassword=validateInput($db->conn, $_POST['cpassword']);

    $register = new RegisterController;
    $result_password = $register->confirmPassword($password,$cpassword);
    if($result_password)
    {
        $result_user = $register->isUserExists($email);
        if($result_user){
            redirect("Email Already Exists", "login.php");
        }else{
            $register_query = $register->registration($id,$fname,$mname,$lname,$email,$pnumber,$gender,$password);
            if($register_query){
                redirect("Registered Successfully", "come.php");
            }else{
                redirect("Something went Wrong", "register.php");
            }
        }
    }
    else
    {
        redirect("Password and Confirm Password Does not match", "signup.php");
    }
    
}


?>