<!DOCTYPE html>
<?php ?>
<html>

<head>
  <title>Patient Details</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
    integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>

<body>
  <?php
include("newfunc.php");
if(isset($_POST['patient_search_submit']))
{
	$contact=$_POST['patient_contact'];
  $query="select p.fname,p.lname,p.email,p.contact,p.blood,p.address,b.policy_no,a.doctor,c.disease from patreg p,insurance b,appointmenttb a,prestb c where p.pid=b.pid and b.pid=a.pid and p.pid=c.pid and p.pid=$contact"  ;

  $result = mysqli_query($con,$query);
  $row=mysqli_fetch_array($result);
  if($row['lname']=="" & $row['email']=="" & $row['contact']==""   & $row['blood']==""  & $row['address']==""  & $row['policy_no']==""  & $row['doctor']==""  & $row['disease']=="" ){
    echo "<script> alert('No entries found! Please enter valid details'); 
          window.location.href = 'admin-panel1.php#list-doc';</script>";
  }
  else {
    echo "<div class='container-fluid' style='margin-top:50px;'>
	<div class='card'>
	<div class='card-body' style='background-color:#342ac1;color:#ffffff;'>
<table class='table table-hover'>
  <thead>
    <tr>
      <th scope='col'>First Name</th>
      <th scope='col'>Last Name</th>
      <th scope='col'>Email</th>
      <th scope='col'>Contact</th>
      <th scope='col'>Blood Group</th>
      <th scope='col'>Address</th>
      <th scope='col'>Policy_no</th>
      <th scope='col'>Disease</th>
      <th scope='col'>Prescribed Doc_id</th>
    </tr>
  </thead>
  <tbody>";
		    $fname = $row['fname'];
        $lname = $row['lname'];
        $email = $row['email'];
        $contact = $row['contact'];
        $blood = $row['blood'];
        $address = $row['address'];
        $policy_no = $row['policy_no'];
        $disease = $row['disease'];
        $ID = $row['doctor'];
        echo "<tr>
          <td>$fname</td>
          <td>$lname</td>
          <td>$email</td>
          <td>$contact</td>     
          <td>$blood</td>
          <td>$address</td>
          <td>$policy_no</td>
          <td>$disease</td>      
          <td>$ID</td>
        </tr>";
    
	echo "</tbody></table><center><a href='admin-panel1.php' class='btn btn-light'>Back to dashboard</a></div></center></div></div></div>";
  }
}
?>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
    integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
    crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
    integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
    crossorigin="anonymous"></script>
</body>

</html>