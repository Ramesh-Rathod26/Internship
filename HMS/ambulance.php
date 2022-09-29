 <?php

 $server="localhost";
 $username="root";
 $password="";

 $dbname="myhmsdb";

 $conn=mysqli_connect($server,$username,$password,$dbname);





// $con=mysqli_connect("localhost","root","","myhmsdb");
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
           	
// 	if($result)
//     {
//     	echo '<script type="text/javascript">'; 
// 		echo 'alert("Ambulance booked successfully!");'; 
// 		echo 'window.location.href = "ambulance.html";';
// 		echo '</script>';
//     }
// ?>
 <!--
// $con=mysqli_connect("localhost","root","","myhmsdb");
// if(isset($_POST['btnSubmit']))
// {
// 	$name = $_POST['txtName'];
// 	$email = $_POST['txtEmail'];
// 	$contact = $_POST['txtPhone'];
// 	$message = $_POST['txtMsg'];

// 	$query="insert into contact(name,email,contact,message) values('$name','$email','$contact','$message');";
// 	$result = mysqli_query($con,$query);
	
// 	if($result)
//     {
//     	echo '<script type="text/javascript">'; 
// 		echo 'alert("Message sent successfully!");'; 
// 		echo 'window.location.href = "contact.html";';
// 		echo '</script>';
//     }
