<?php
session_start();
 ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
    <header>
      <nav>
        <div class="main-wrapper">
          <ul>
            <li><a href="index.php">HOME</a></li>
          </ul>
          <div class="nav-login">
            <?php
            if (isset($_SESSION['u_id'])) {
              echo ' <form  action="includes/logout.inc.php" method="PosT">
                 <button type="submit" name="submit">Logout</button>
               </form>';
            }elseif (isset($_SESSION['username'])) {
              echo ' <form  action="includes/logout.inc.php" method="PosT">
                 <button type="submit" name="submit">Logout</button>
               </form>';
            }
            else {
              echo '  <form  action="includes/login.inc.php" method="POST">
                  <input type="text" name="username" placeholder="Username/ email">
                  <input type="password" name="password" placeholder="Password">
                  <button type="submit" name="submit">Login</button>
                </form>
                <a href="signup.php">Sign up</a>';
            }
             ?>
          </div>
        </div>
      </nav>
    </header>
