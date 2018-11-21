<?php
session_start();
//this to make sure that people will have to run the code only by clicking the button (sign up only)
if (isset($_POST['submit'])) {

  include_once'dbh.inc.php';
  $email=mysqli_real_escape_string($conn,$_POST['email']);//mysqli is used for security here i wanted to make sure that if someone wrote a code in the username part to turn it in to string
  $username=mysqli_real_escape_string($conn,$_POST['username']);
  $password=mysqli_real_escape_string($conn,$_POST['password']);
  //Error handler to make sure no one left anything Empty
  if (empty($email) || empty($username) || empty($password) ) {
      echo "<script>
          alert('Please fill all the information');
          window.location.href=' ../signup.php';
        </script>";
    exit();
	} else {
		//Check if input characters are valid
		if (!preg_match("/^[a-zA-Z]*$/", $username)  ) {
      echo "<script>
            alert('Invalid username');
            window.location.href=' ../signup.php';
          </script>";
			exit();
		} else {
			//Check if email is valid
			if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo "<script>
              alert('Email format is incorrect');
              window.location.href=' ../signup.php';
            </script>";
				exit();
			} else {
				$sql = "SELECT * FROM uuser WHERE username='$username' OR email='$email'";
				$result = mysqli_query($conn, $sql); //to check with the database
				$resultCheck = mysqli_num_rows($result);//it will check the query named result and see if we had a row as a result

				if ($resultCheck > 0) {

          echo "<script>
                alert('User already exists');
                window.location.href=' ../signup.php';
              </script>";
					exit();
				} else {
          //Hasing the password for security
          $hashPassword = password_hash($password,PASSWORD_DEFAULT);
          //Now insert the user
          $ssql="INSERT INTO uuser (email,username,password) VALUES ('$email','$username','$hashPassword')";
          //Now to insert the content into our database
          mysqli_query($conn,$ssql);
          $uid = mysqli_insert_id($conn);
          $_SESSION['uid'] = $user_id;
            $_SESSION['username'] = $_POST['username'];
            header("Location: ../department.php?login=successful");
          exit();
				}
			}
		}
	}

} else {// if the used the url and wrote the address for this page here, we will send them back to signup page
	header("Location: ../signup.php");
	exit();
}
