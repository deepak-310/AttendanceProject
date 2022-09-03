<?php
    session_start();
    $uname = null;
    $pass = null; 
    $utype=null;
    if (isset($_POST['teacher_username']) and isset($_POST['teacher_pass'])){{
        $uname = $_POST['teacher_username'];
        $pass = $_POST['teacher_pass'];
        $utype="teacher";
        // echo $_POST['form'];
    }}else if(isset($_POST['admin_username']) and isset($_POST['admin_pass'])){
        $uname = $_POST['admin_username'];
        $pass = $_POST['admin_pass'];
        $utype="admin";
    }

    $server = "localhost:3305";
    $username = "root";
    $password = "";
    $db="attendance_system";
    $conn=mysqli_connect($server,$username,$password,$db);

   
    if (mysqli_connect_errno()) {
        printf("Connect failed: %s\n", mysqli_connect_error());
        exit();
    }

        
      $sql = "select * from users where email_id='" . $uname . "' and password='" . $pass . "' and user_type='". $utype . "'"; ;
      $result = mysqli_query($conn,$sql);
      while($row = mysqli_fetch_array($result)){
        if('teacher'==$row["user_type"]){
            $_SESSION['uname']=$row['username'];
            
            header('Location:teacher/index.php');
            exit();
        }else if('admin' == $row["user_type"]){
            $_SESSION['uname']=$row['username'];
   
            header('Location:Admin/index.php');
            exit();
        }else{
            ?>
        <script>
          alert('Login  UnSuccessfully');
          window.location.assign('login.php')
        </script>
          <?php
           
            exit();
        }
      }

      ?>
      <script>
        alert('Login  UnSuccessfully');
        window.location.assign('login.php')
      </script>
        <?php
      mysqli_close($conn);
?>