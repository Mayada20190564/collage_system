<?php include '../Layout/header.php' ?>
<?php include '../Layout/nav.php' ?>
<?php include '../Layout/conn.php';



$date = date('Y-m-d H:i:s');
if (isset($_SESSION['studentStatus'])){
  if($_SESSION['studentStatus']=="notapplied"){
  $id=$_SESSION['student'];
 

?>
<!-- Apply -->
<section class="ApplySection">
  <!-- container -->
  <div class="container ApplyContainer">
    <!-- row -->
    <div class="row">

      <div class="col-6 ApplyingForm">

        <h2 class="ApplyingHeading ">
          <img src="/CS-StudentPanel/assets/img/logo2.png" alt="error404">
          Admission form
        </h2>
        <!--Applying form  -->
        <?php
              if (isset( $_POST['apply']) ){
                $grade=$_POST['grade'];
                $Egrade=$_POST['E-grade'];
                $finalTotal= $grade+ $Egrade;
                $ssn=$_POST['ssn'];
                $Phone=$_POST['Phone'];
                /*Image code*/
                $peronalImageType=$_FILES['peronalImage']['type'];
                $peronalImageName=$_FILES['peronalImage']['name'];
                $peronalImageTemp=$_FILES['peronalImage']['tmp_name'];
                
                $certificateImageType=$_FILES['certificateImage']['type'];
                $certificateImageName=$_FILES['certificateImage']['name'];
                $certificateImageTemp=$_FILES['certificateImage']['tmp_name'];
            
                $location='../upload/profile/';
                move_uploaded_file($peronalImageTemp,$location.$peronalImageName);
                move_uploaded_file($certificateImageTemp,$location.$certificateImageName);
            
            
                /*End Image code*/
            
                $Specialization1=$_POST['Specialization1'];
                $Specialization2=$_POST['Specialization2'];
                $Specialization3=$_POST['Specialization3'];
            
                if($Specialization1==$Specialization2||$Specialization1==$Specialization3||$Specialization2=$Specialization3){
                  echo "<div class='alert alert-danger' role='alert'>
                  The 3 Specializations have to be different
                </div>";
                }else{
               $u= "UPDATE `student` SET `phone`=' $Phone',`grade`='$grade',`E_grade`='$Egrade',`final_total`='$finalTotal',`SSN`='$ssn',`personal_img`='$peronalImageName',`high_school_cer`='$certificateImageName',`specialization1`='$Specialization1',`specialization2`='$Specialization2',`specialization3`='$Specialization3',status='applied' WHERE ID=$id" ;
               $UPDATE=mysqli_query($conn,$u);
               $_SESSION['studentStatus']="applied";
               ?>
            <script>
              window.location.href = '/CS-StudentPanel/index.php';
            </script>
            <?php 
                }
            }

          ?>
        <form class="Admission-form" action="" method="POST" enctype="multipart/form-data">

          <label for="">
            Grade :
          </label>
          <input class="form-control" type="text" name="grade" placeholder="grade" maxlength="10" required>
          <div class="invalid-feedback">Please enter your Grade!</div>
          <label for="">
            English-Grade :
          </label>
          <input class="form-control" type="text" name="E-grade" placeholder="E-grade" required>
          <div class="invalid-feedback">Please enter your English-Grade!</div>

          <label for="">
            SSN :
          </label>
          <input class="form-control" type="text" name="ssn" placeholder="ssn" required>
          <div class="invalid-feedback">Please enter your SSN!</div>
          <label for="">
            Phone Number :
          </label>
          <input class="form-control" type="text" name="Phone" placeholder="01*********" maxlength="15" required>
          <div class="invalid-feedback">Please enter your Phone!</div>

          <label for="">
            Personal Image:
          </label>
          <input class="form-control" type="file" name="peronalImage" placeholder="Personal Image" required accept="image/*" required>
          <div class="invalid-feedback">Please enter your Personal Image!</div>
          <label for="">
            Certificate of Secondary Education :
          </label>
          <input class="form-control" type="file" name="certificateImage" placeholder="Certificate" required accept="image/*" required>
          <div class="invalid-feedback">Please enter your Certificate!</div>

          <label class="my-2" for="">
            Specialization :
          </label> <br>
          <label for="">
            1st Specialization :
          </label>
          <select class="form-control" name="Specialization1" id="" required>
            <option value="">Choose your Specialization</option>
            <option value="1">BIS</option>
            <option value="2">FMI</option>
            <option value="3">FOC</option>
          </select> <br>
          <div class="invalid-feedback">Please enter your password!</div>
          <label for="">
            2nd Specialization :
          </label>
          <select class="form-control" name="Specialization2" id="" required>
            <option value="">Choose your Specialization</option>
            <option value="1">BIS</option>
            <option value="2">FMI</option>
            <option value="3">FOC</option>
          </select> <br>
          <div class="invalid-feedback">Please enter your password!</div>
          <label for="">
            3rd Specialization :
          </label>
          <select class="form-control" name="Specialization3" id="ddlFruits" required>
            <option value="">Choose your Specialization</option>
            <option value="1">BIS</option>
            <option value="2">FMI</option>
            <option value="3">FOC</option>
          </select> <br>
          <div class="invalid-feedback">Please enter your password!</div>
          <div class="d-grid gap-2">
            <button class="btn btn-primary" name="apply">Apply</button>
            
          </div>
        </form>
        <!-- Applying form -->

      </div>
      <div class="col-6 ">
        <div class="ApplyingImage">
          <img class="img-fluid rounded applyImg " src="/CS-StudentPanel/assets/img/APPform.jpg" alt="">

        </div>
      </div>


    </div>
    <!-- row -->
  </div>


  <!-- /container -->

</section>
<!-- jQuery Plugins -->

<?php
}
else{
  
  ?>
<script>
  window.location.href = '/CS-StudentPanel/index.php';
</script>
<?php 
}
}
else {
  ?>
<script>
  window.location.href = '/CS-StudentPanel/Auth/pages-register.php';
</script>
<?php 
} include '../Layout/script.php' ?>