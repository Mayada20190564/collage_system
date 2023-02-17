<?php include '../Layout/header.php';
include '../Layout/nav.php';
include '../Layout/conn.php';
$timestamp = date('Y-m-d H:i:s');
$nameError = $emailError  = $passError = "";
$cantRegister = false;
if (isset($_POST['register'])) {
  if (empty($_POST['name'])) {
    $nameError = "Name is required";
  } else {
    $name = $_POST['name'];
  }
  if (empty($_POST['email'])) {
    $emailError = "Email is required";
  } else {
    $email = $_POST['email'];
  }
  if (empty($_POST['password'])) {
    $passError = "password is required";
  } else {
    $pass = $_POST['password'];
  }
  //////// CHECK REGISTERATION //////////////////////
  $check = "SELECT * FROM `student` WHERE `email` = '$email';";
  $run = mysqli_query($conn, $check);
  $row = mysqli_fetch_assoc($run);
  $numRow = mysqli_num_rows($run);
  if($numRow > 0){
    $cantRegister = true;
  }else{
    $insert = "INSERT INTO student VALUES (NULL ,'$name','$email','$pass',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'notapplied','$timestamp','$timestamp');";
    $insertionNewStudentQuery=mysqli_query($conn, $insert);
    if($insertionNewStudentQuery){
    ////////// CREATE SESSION /////////////////////////
   $login = "SELECT * FROM `student` WHERE `email` = '$email' and `password` = '$pass';";
   $log = mysqli_query($conn, $login);
   $row = mysqli_fetch_assoc($log);
   $ID = $row['ID'];
   $_SESSION['student'] = $ID;
   $_SESSION['studentName']=$row['name'];
   $_SESSION['studentStatus']=$row['status'];
   $_SESSION['payment_reset']=$row['payment_reset'];
  
   ?>
<script>
  window.location.href = '/CS-StudentPanel/index.php';
</script>
<?php 
  }
   else{
    echo("Error description: " . mysqli_error($conn));
   }
  }
}
?>
<div class="rg_cont">

  <main class="RegisterMain">
    <div class="RegistrOverlay">
      <div class="container">
        <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

                <div class="d-flex justify-content-center py-4">
                  <a href="index.html" class="logo d-flex align-items-center w-auto">
                    <img src="assets/img/logo.png" alt="">
                    <span class="d-none d-lg-block"></span>
                  </a>
                </div><!-- End Logo -->

                <div class="card mb-3">
                  <div class="card-body RegisterCard">

                    <div class="pt-4 pb-2">
                      <h5 class="card-title text-center pb-0 fs-4 CreateAccount">Create an Account</h5>
                      <p class="text-center small">Enter your personal details to create account</p>
                      <?php if ($cantRegister) : ?>
                      <p style="color:red">*Account is already exist!! <a href="pages-login.html">Log in</a></p>
                      <?php endif; ?>
                    </div>

                    <form method="POST" class="row g-3 needs-validation">
                      <div class="col-12">
                        <label for="yourName" class="form-label">Your Name</label>
                        <input type="text" name="name" class="form-control" id="yourName" required>
                        <span class="error"><?php echo $nameError; ?></span>
                        <div class="invalid-feedback">Please, enter your name!</div>
                      </div>

                      <div class="col-12">
                        <label for="yourEmail" class="form-label">Your Email</label>
                        <input type="email" placeholder="example@domain.com" name="email" class="form-control"
                          id="yourEmail" required>
                        <span class="error"><?php echo $emailError; ?></span>
                        <div class="invalid-feedback">Please enter a valid Email adddress!</div>
                      </div>

                      <div class="col-12">
                        <label for="yourPassword" class="form-label">Password</label>
                        <input type="password" name="password" class="form-control" id="yourPassword" required>
                        <span class="error"> <?php echo $passError; ?></span>
                        <div class="invalid-feedback">Please enter your password!</div>
                      </div>

                      <!-- <div class="col-12">
                      <div class="form-check">
                        <input class="form-check-input" name="terms" type="checkbox" value="" id="acceptTerms"
                          >
                        <label class="form-check-label" for="acceptTerms">I agree and accept the <a href="#">terms
                            and
                            conditions</a></label>
                        <div class="invalid-feedback">You must agree before submitting.</div>
                      </div>
                    </div> -->
                      <div class="col-12">
                        <button class="btn btn-primary w-100" name="register" type="submit">Create Account</button>
                      </div>
                      <div class="col-12">
                        <p class="small mb-0">Already have an account? <a href="/CS-StudentPanel/Auth/pages-login.php">Log in</a></p>
                      </div>
                    </form>

                  </div>
                </div>



              </div>
            </div>
          </div>

        </section>

      </div>
    </div>

  </main><!-- End #main -->
</div>
<?php include '../Layout/script.php' ?>