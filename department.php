<?php
// session_start();
include_once'header.php';
include_once'dbh.inc.php';
echo "<h2 class='welcome'>Welcome ".$_SESSION['username']."</h2>";
 ?>

 <div class="main-container">
     <div class="main-wrapper">
         <table class="table-design">
             <thead>
                <tr class="tr-design">
                 <th>Department</th>
                 <th>Description</th>
                 <th>Select</th>
                </tr>
             </thead>
             <tbody>
               <form action="includes/department.inc.php" method="get">
                <?php
                 $query = "SELECT * FROM department ";
                 $selected_department = mysqli_query($conn,$query);
                 if(!$selected_department)
                 {
                     die("Fetch ERROR!!".mysqli_error($conn));
                 }
                 while($row =mysqli_fetch_assoc($selected_department))
                 { $name = $row['name'];
                     $dept_id = $row['dept_id'];
                     $description = $row['description'];

                 echo"<tr><td class= 'td_design'>$name</td>";
                 echo"<td class= 'td_design'>$description</td>";
                 echo"<td class= 'td_design'><button name='select' class='btn btn-primary' value=$dept_id>Select</button></td></tr>";
                 }
                     ?>
                </form>
             </tbody>
         </table>


     </div>
 </div>
</body>
</html>
