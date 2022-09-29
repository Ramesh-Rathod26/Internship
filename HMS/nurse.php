<?php

 $server="localhost";
 $username="root";
 $password="";

 $dbname="myhmsdb";

 $conn=mysqli_connect($server,$username,$password,$dbname);





// $con=mysqli_connect("localhost","root","","myhmsdb");
    if(isset($_POST['nursub']))
        {
            $name = $_POST['name'];
            $email= $_POST['email'];
            $shift =  $_POST['shift'];
            $salary = $_POST['salary'];
            $age = $_POST['age'];

            $query="insert into nurse(name,email,shift,salary,age) values('$name','$email','$shift','$salary','$age')";
            $result = mysqli_query($conn,$query) or die(mysqli_error());

         if($result){

            echo '<script type="text/javascript">'; 
            		echo 'alert("Nurse profile updated!");'; 
            		echo 'window.location.href = "admin-panel1.php";';
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