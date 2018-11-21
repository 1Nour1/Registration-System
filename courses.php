<?php

include_once'header.php';
include_once'dbh.inc.php';
echo "<h2 class='welcome'>Welcome ".$_SESSION['username']."</h2>";
?>

   <div class="main-container">
      <div class="main-wrapper">
           <table class="table-design ">
           <tr class="tr-design">
           <th>Name</th>
           <th>Description</th>
           <th>Instructor</th>
           <th>Credit Hours</th>
           </tr>
           <?php
            $department_id=$_SESSION['department_id'];
            $query = "SELECT * FROM course WHERE department_id = '{$department_id}'";
            $selected_dep = mysqli_query($conn,$query);
            if(!$selected_dep)
               {
                 die("Update Failed!!".mysqli_error($conn));
               }
               while($row=mysqli_fetch_assoc($selected_dep))
               {
                   $name = $row['course_name'];
                   $description = $row['course_description'];
                   $instructor = $row['instructor_name'];
                   $credit_hours = $row['credit_hours'];

                   echo"<td class= 'td_design'>$name</td>";
                   echo"<td class= 'td_design'>$description</td>";
                   echo"<td class= 'td_design'>$instructor</td>";
                   echo"<td class= 'td_design'>$credit_hours</td>";
                   echo"</tr>";
               }
            ?>
           </table>
       </div>
    </div>

</body>
</html>
