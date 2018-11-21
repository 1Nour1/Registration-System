<?php
session_start();
include_once'dbh.inc.php';
if(isset($_GET['select']))
{
     $depart_id=$_GET['select'];
     $query = "UPDATE uuser SET department_id = '{$depart_id}' WHERE username = '{$_SESSION['username']}' ";
     $update_query = mysqli_query($conn,$query);
     if(!$update_query)
     {
       die("Update Failed!!".mysqli_error($conn));
     }else
     {
        $_SESSION['department_id']=$depart_id;
header("Location: ../courses.php?choose=successful");
        
     }

}

 ?>
