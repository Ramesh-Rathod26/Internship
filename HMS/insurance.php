<?php

 $server="localhost";
 $username="root";
 $password="";

 $dbname="myhmsdb";

 $conn=mysqli_connect($server,$username,$password,$dbname);





// $con=mysqli_connect("localhost","root","","myhmsdb");
    if(isset($_POST['inssub']))
        {
            $pid = $_POST['pid'];
            $policy_no = $_POST['policy_no'];
            $ins_type= $_POST['ins_type'];
            $company =  $_POST['company'];
           

            $query="insert into insurance(pid,policy_no,ins_type,company) values('$pid','$policy_no','$ins_type','$company')";
            $result = mysqli_query($conn,$query) or die(mysqli_error());

         if($result){

            echo '<script type="text/javascript">'; 
            		echo 'alert("Insurance claimed Successfully!");'; 
            		echo 'window.location.href = "admin-panel1.php";';
            		echo '</script>';

         }

         else{
            echo '<script type="text/javascript">'; 
            echo 'alert("Sorry! Claim later...");'; 
            echo 'window.location.href = "insurance.php";';
            echo '</script>';
         }
        }

        ?>