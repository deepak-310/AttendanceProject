<?php
 include("../config/config.php");
$branch = $_POST["branch"];
$year = $_POST["year"];
$sem  = $_POST['sem'];
$div = $_POST['div'];


// echo $branch;
// echo $year;
// echo $sem;
// echo $div;


$sql = mysqli_query($con,"select * from student where branch_name='$branch' and year='$year' and semester='$sem' and divison='$div';");
$student = mysqli_query($con,"select * from student where branch_name='$branch' and divison='$div' and   semester='$sem' and year='$year' ;");

$subject = mysqli_query($con,"select * from subject  where branch_name='$branch'");
 

 
?>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin 2 - Dashboard</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link
    href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
    rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

</head>

<body id="page-top">
  <!-- Page Wrapper -->
  <div id="wrapper">

    <?php include("sidebar.php");?>
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <?php include("navbar.php");?>

        <!-- Begin Page Content -->
        <div class="container-fluid">
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-danger">DataTables </h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <form name="form1" action="saveAttendance.php" method="POST">
                <div class="form-group col-md-6">
                                            <label for="inputEmail4">Select subject</label>
                                            <select required name="sub"  class="form-control" id="textboxid">
                                            echo ' <option value="">None</option>';
                                                <?php
                                
                                                while($myres=mysqli_fetch_array($subject)){
                                                    echo '<option>'.$myres['sub_name'].'</option>';
                
                                                }
                                
                                                ?>
                                            </select>

                                        </div>

                  <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">


                    <thead>


                      <tr>
                        <th>Roll No</th>
                        <th>Name</th>
                        <th>Attendance</th>

                      </tr>
                    </thead>

                    <tbody>
                      <?php
    while($res=mysqli_fetch_array($student)){
      ?>

                      <tr>

                        <td>
                          <?php echo $res['roll_no']; ?>
                        </td>
                        <td>
                          <?php echo $res['name']; ?>
                        </td>
                        <!-- <div class="wrapper">

                        </div> -->
                        <td>
                          <input type="radio" name="attend[<?php echo $res['addmission_no']; ?>]" value=1 id="option-1" checked>P
                         
                          <input type="radio" value=0 name="attend[<?php echo $res['addmission_no']; ?>]" id="option-2">A

                          

                          </td>


                      </tr>
                      <?php
                      }

                      ?>


                    </tbody>
                    
                  </table>
                  
                                       
                                        
                                 
                  <a class="divbtn"> <input type="submit" class="" name="submit" value="Submit"></a>

                </form>


              </div>


              <!--   -->








            </div>
            <!-- /.container-fluid -->

          </div>
        </div>
      </div>


      <!-- Bootstrap core JavaScript-->
      <script src="vendor/jquery/jquery.min.js"></script>
      <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

      <!-- Core plugin JavaScript-->
      <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

      <!-- Custom scripts for all pages-->
      <script src="js/sb-admin-2.min.js"></script>

      <!-- Page level plugins -->
      <script src="vendor/chart.js/Chart.min.js"></script>

      <!-- Page level custom scripts -->
      <script src="js/demo/chart-area-demo.js"></script>
      <script src="js/demo/chart-pie-demo.js"></script>

</body>

</html>


