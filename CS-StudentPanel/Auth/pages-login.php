<?php include '../Layout/header.php';
include '../Layout/nav.php';
include '../Layout/conn.php';
$allowed = false;
if (isset($_POST['login'])) {
  $email = $_POST['email'];
  $pass = $_POST['password'];

  $login = "SELECT * FROM `student` WHERE `email` = '$email' and `password` = '$pass' ";
  $log = mysqli_query($conn, $login);
  $row = mysqli_fetch_assoc($log);
  $numRow = mysqli_num_rows($log);
  if ($numRow > 0) {
    $ID = $row['ID'];
    $_SESSION['student'] = $ID;
    $_SESSION['studentName']=$row['name'];
    $_SESSION['studentStatus']=$row['status'];
    $_SESSION['payment_reset']=$row['payment_reset'];

    ?>
    <script>
            window.location.href='/CS-StudentPanel/index.php';
        </script>
    <?php 
  } else {
    $allowed = true;
  }
}
?>
<div class="log_cont">

  <main class="LoginMain">
    <div class="LoginOverlay">
      <div class="container">

        <section class="section Login min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

                <div class="card mb-3">

                  <div class="card-body">

                    <div class="pt-4 pb-2">
                      <h5 class="card-title text-center pb-0 fs-4">Login to Your Account</h5>
                      <p class="text-center small">Enter your email & password to login</p>
                      <?php if ($allowed) : ?>
                        <p style="color:red">*Please check your email and password</p>
                      <?php endif; ?>
                    </div>
                    <form method="POST" class="row g-3 needs-validation">

                      <div class="col-12">
                        <label for="yourUsername" class="form-label">Email</label>
                        <div class="input-group has-validation">

                          <input type="text" name="email" class="form-control" id="yourUsername" required>
                          <div class="invalid-feedback">Please enter your email.</div>
                        </div>
                      </div>

                      <div class="col-12">
                        <label for="yourPassword" class="form-label">Password</label>
                        <input type="password" name="password" class="form-control" id="yourPassword" required>
                        <div class="invalid-feedback">Please enter your password!</div>
                      </div>

                      <div class="col-12">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="remember" value="true" id="rememberMe">
                          <label class="form-check-label" for="rememberMe">Remember me</label>
                        </div>
                      </div>
                      <div class="col-12">
                        <button name="login" class="btn btn-primary w-100" type="submit">Login</button>
                      </div>
                      <div class="col-12">
                        <p class="small mb-0">Don't have account? <a href="/CS-StudentPanel/Auth/pages-register.php">Create an account</a>
                        </p>
                      </div>
                    </form>

                  </div>
                </div>



              </div>
            </div>
          </div>

        </section>

      </div>
  </main><!-- End #main -->
</div>

<?php include '../Layout/script.php' ?>