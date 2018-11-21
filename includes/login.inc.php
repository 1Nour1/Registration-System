<?php
session_start();
if(isset($_POST['submit'])){

  include 'dbh.inc.php';
  $username = mysqli_real_escape_string($conn,$_POST['username']);//mysqli to make sure no one writes any code in it
    $password = mysqli_real_escape_string($conn,$_POST['password']);
    //Error handler to make sure no one left anything Empty
    if (empty($username) || empty($password)) {
      //header("Location: ../signup.php?signup=empty");
      echo "<script>
  alert('Please fill all the information');
  window.location.href=' ../index.php';
  </script>";
  exist();

} else {
  $sql= "SELECT * FROM uuser WHERE  username='$username' OR email='$username'";
$result= mysqli_query($conn,$sql);
  $resultCheck=mysqli_num_rows($result);
  if($resultCheck < 1){
      echo "<script>
      alert('User does not exist');
      window.location.href=' ../index.php';
      </script>";
  exit();
} else {//we will check if the password matches with the user
  //we are taking all the data that we got from database and we put them in an array in php called $row
  if ($row = mysqli_fetch_assoc($result)) {
    //deHashing the password
    $hashedPassword = password_verify($password, $row['password']);
    if ($hashedPassword == false) {
      echo "<script>
  alert('Wrong Password');
  window.location.href=' ../index.php';
  </script>";
  exist();
}elseif ($hashedPassword == true) {
  //Log in the user
  $_SESSION['u_id'] = $row['user_id'];
  $_SESSION['u_email'] = $row['email'];
  $_SESSION['username'] = $row['username'];
  $_SESSION['u_password'] = $row['password'];
  //now to check if the user already has a department
  if ($row['department_id'] == NULL) {
      header("Location: ../department.php?login=successful");
      exit();
  }else {
      $_SESSION['department_id'] =$row['department_id'];
    header("Location: ../courses.php?choose=successful");

  }




}
  }
}
}
} else {//if he didn't press the actual login button
      echo "<script>
  alert('Error');
  window.location.href=' ../index.php';
  </script>";
  exit();
    }
 ?>
