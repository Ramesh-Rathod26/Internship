<?php

$server="localhost";
$username="root";
$password="";

$dbname="myhmsdb";

$conn=mysqli_connect($server,$username,$password,$dbname);
if(isset($_POST['btnSubmit']))
{
   $name = $_POST['txtName'];
   $email= $_POST['txtEmail'];
   $phone =  $_POST['txtPhone'];
   $address = $_POST['txtaddress'];

   $query="insert into ambulance(name,email,phone,address) values('$name','$email','$phone','$address')";
   $result = mysqli_query($conn,$query) or die(mysqli_error());
   if($result){
      echo '<script type="text/javascript">'; 
      echo 'alert("Ambulance booked successfully!");'; 
      echo 'window.location.href = "ambulance.html";';
      echo '</script>';
   }
   else{
      echo '<script type="text/javascript">'; 
      echo 'alert("Sorry!Ambulance not booked...");'; 
      echo 'window.location.href = "ambulance.html";';
      echo '</script>';
   }
}
?>

