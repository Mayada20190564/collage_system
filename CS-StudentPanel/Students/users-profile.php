<?php include '../Layout/header.php' ?>
<?php include '../Layout/nav.php' ?>
<?php include '../Layout/conn.php' ?>

<?php 

if(isset($_SESSION['student'])){
  $_SESSION['msgSend'] ;
  $id=$_SESSION['student'];
  $selectStudentData="SELECT * FROM student WHERE id=$id";
  $selectStudentDataQuery=mysqli_query($conn,$selectStudentData);
  $row = mysqli_fetch_assoc($selectStudentDataQuery);
  $name=$row['name'];
  $email=$row['email'];
  $phone=$row['phone'];
  $grade=$row['grade'];
  $e_grade=$row['E_grade'];
  $finalTotal=$row['final_total'];
  $ssn=$row['SSN'];
  $status=$row['status'];
  $password =$row['password'];
  $img=$row['personal_img'];
  if(empty($img)){
    $img="default.png";
  }


  if(isset($_POST['EditStudent'])){
    $name=$_POST['fullName'];
    $email=$_POST['email'];
    $phone=$_POST['phone'];
    $old_password=$_POST['old_password'];
    $new_password=$_POST['new_password'];
    if($old_password == $password){
      $updateStudentData="UPDATE student SET name='$name', email='$email', phone='$phone', password='$new_password' WHERE id=$id AND password='$old_password'";
      $updateStudentDataQuery=mysqli_query($conn,$updateStudentData);}
  else{
    echo "<div class='alert alert-danger mt-5 pt-5'>
    Data didnt updated
          </div>";
  }
  }

  if(isset($_POST['deleteImg'])){
    $deleteImg="UPDATE student SET personal_img='' WHERE id=$id;";
    $deleteImgQuery=mysqli_query($conn,$deleteImg);
    header("location:/CS-StudentPanel/students/users-profile.php");
  }
  // Chat 
  if (isset($_SESSION['student'])) {
    $_SESSION['msgSend'] = "null";
    $student_id = $_SESSION['student'];
    $read = "SELECT question , reply FROM `ask` WHERE `student_id` =$student_id ";
    $msgs = mysqli_query($conn, $read);
    // To get student name
    $getName = "SELECT `name` FROM student WHERE ID =$student_id";
    $runGetName = mysqli_query($conn , $getName);
    $row = mysqli_fetch_assoc($runGetName);
    $Name = $row['name'];
  }
 //To Send
  if (isset($_SESSION['student']) && isset($_POST['send'])) {
    // for($i =0 ; $i<10 ; $i++){
    //   echo "true";
    //   echo '<br>';
    // }
    //Get super admin ID  
    $GetsuperAdminID = "SELECT `id` FROM `users` WHERE role = 0";
    $run = mysqli_query($conn , $GetsuperAdminID);
    $row = mysqli_fetch_assoc($run);
    $superAdminID = $row['id'];
    $msg = $_POST['body']; 
    if(empty($msg)){
      
    }else{
      //Send student question
      $student_id = $_SESSION['student'];
      $send = "INSERT INTO `ask` VALUES (NULL,'$msg','', $student_id, $superAdminID , NULL , NULL)";
       $s = mysqli_query($conn, $send);
       if($s){
        $_SESSION['msgSend'] = "Message sent successfully";
       }
      ?>
<script>
  window.location.href = '/CS-StudentPanel/students/users-profile.php'
</script>
<?php
    }

    
  
  }
  //upload pay reset code
  if(isset($_POST['upload_reset'])){
    $payResetType=$_FILES['pay_reset']['type'];
    $payResetName=$_FILES['pay_reset']['name'];
    $payResetTemp=$_FILES['pay_reset']['tmp_name'];
    $location='../upload/profile/';
    move_uploaded_file($payResetTemp,$location.$payResetName);
    $uploadPayementReset= "UPDATE `student` SET `payment_reset`='$payResetName' WHERE ID=$id" ;
    $uploadPayementResetQuery=mysqli_query($conn,$uploadPayementReset);
    $uploadPayementResetpre_dec= "UPDATE `pre_decision` SET `paymentreset`='$payResetName' WHERE studentid=$id" ;
    $uploadPayementResetpre_decQuery=mysqli_query($conn,$uploadPayementResetpre_dec);
    $_SESSION['payment_reset']=$payResetName;
  }
?>





<main id="main" class="ProfileMain ">
  <section class="section profile">
    <div class="row justify-content-center">
      <div class="col-xl-4 col-lg-4 col-md-5 col-sm-10 mb-2">

        <div class="card UserCard">
          <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">
            <img src="../upload/profile/<?php echo $img ?>" alt="Profile" class="rounded img-responsive">
            <h2><?php echo $name; ?></h2>
            <h3><?php echo $status; ?></h3>
          </div>
        </div>

      </div>


      <div class="col-xl-7 col-lg-7 col-md-7 col-sm-10 ">
        <!--------Profile Information-------------------------------------->
        <?php
            if($_SESSION['msgSend'] != "null" ):
         ?>
         <div class="alert alert-success w-50">
           <?php echo $_SESSION['msgSend'];?>
         </div>
        <?php
        endif;?>
        <div class="card ProfileInformation ">
          <div class="card-body pt-3">
            <!-- Bordered Tabs -->
            <ul class="nav nav-tabs nav-tabs-bordered">

              <li class="nav-item">
                <button class="nav-link " data-bs-toggle="tab"
                  data-bs-target="#profile-overview">Overview</button>
              </li>

              <li class="nav-item">
                <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">Edit Profile</button>
              </li>

              <li class="nav-item">
                <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-progress">Progress</button>
              </li>
              <li class="nav-item">
                <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#Chat-box">Ask us</button>
              </li>

            </ul>
            <div class="tab-content pt-2">

              <div class="tab-pane fade  profile-overview" id="profile-overview">

                <h5 class="card-title">Profile Details</h5>

                <div class="row">
                  <div class="col-lg-3 col-md-4 label ">Full Name</div>
                  <div class="col-lg-9 col-md-8"><?php echo $name; ?></div>
                </div>



                <div class="row">
                  <div class="col-lg-3 col-md-4 label">Email</div>
                  <div class="col-lg-9 col-md-8"><?php echo $email; ?></div>
                </div>


                <div class="row">
                  <div class="col-lg-3 col-md-4 label">Phone</div>
                  <div class="col-lg-9 col-md-8"><?php echo $phone; ?></div>
                </div>

                <div class="row">
                  <div class="col-lg-3 col-md-4 label">Grade</div>
                  <div class="col-lg-9 col-md-8"><?php echo $grade; ?></div>
                </div>

                <div class="row">
                  <div class="col-lg-3 col-md-4 label">E-grade</div>
                  <div class="col-lg-9 col-md-8"><?php echo $e_grade; ?></div>
                </div>

                <div class="row">
                  <div class="col-lg-3 col-md-4 label">final-total</div>
                  <div class="col-lg-9 col-md-8"><?php echo $finalTotal; ?></div>
                </div>

                <div class="row">
                  <div class="col-lg-3 col-md-4 label">SSN</div>
                  <div class="col-lg-9 col-md-8"><?php echo $ssn; ?></div>
                </div>

                <div class="row">
                  <div class="col-lg-3 col-md-4 label">Status</div>
                  <div class="col-lg-9 col-md-8"><?php echo $status; ?></div>
                </div>


              </div>

              <div class="tab-pane fade profile-edit pt-3" id="profile-edit">

                <!-- Profile Edit Form -->
                <form method="POST" enctype="multipart/form-data">
                  <div class="row mb-3">
                    <label for="profileImage" class="col-md-4 col-lg-3 col-form-label">Profile Image</label>
                    <div class="col-md-8 col-lg-9">
                      <img src="../upload/profile/<?php echo $img ?>" alt="Profile" class="rounded img-responsive">
                      <div class="pt-2">
                        <button name="updateImg" class="btn btn-primary btn-sm m-1"><i class="bi bi-upload"></i>
                        <button name="deleteImg" class="btn btn-danger btn-sm m-1"><i class="bi bi-trash"></i>
                      </div>
                    </div>
                  </div>

                  <div class="row mb-3">
                    <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Full Name</label>
                    <div class="col-md-8 col-lg-9">
                      <input name="fullName" type="text" class="form-control" id="fullName" value="<?php echo $name; ?>"
                        required>
                      <div class="invalid-feedback">Please enter your Full Name!</div>
                    </div>
                  </div>

                  <div class="row mb-3">
                    <label for="Email" class="col-md-4 col-lg-3 col-form-label">Email</label>
                    <div class="col-md-8 col-lg-9">
                      <input name="email" type="email" class="form-control" id="Email" value="<?php echo $email; ?>"
                        required>
                      <div class="invalid-feedback">Please enter your Email!</div>
                    </div>
                  </div>

                  <div class="row mb-3">
                    <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Phone</label>
                    <div class="col-md-8 col-lg-9">
                      <input name="phone" type="text" class="form-control" id="Phone" value="<?php echo $phone; ?>"
                        required>
                      <div class="invalid-feedback">Please enter your Phone!</div>
                    </div>
                  </div>

                  <div class="row mb-3">
                    <label for="old_password" class="col-md-4 col-lg-3 col-form-label">Old password</label>
                    <div class="col-md-8 col-lg-9">
                      <input name="old_password" type="password" class="form-control" id="old_password"
                        placeholder="*********" required>
                      <div class="invalid-feedback">Please enter your Old password!</div>
                    </div>
                  </div>

                  <div class="row mb-3">
                    <label for="new_password" class="col-md-4 col-lg-3 col-form-label">New password</label>
                    <div class="col-md-8 col-lg-9">
                      <input name="new_password" type="password" class="form-control" id="new_password"
                        placeholder="*********" required>
                      <div class="invalid-feedback">Please enter your New password!</div>
                    </div>
                  </div>

                  <div class="text-center">
                    <button type="submit" class="btn btn-primary" name="EditStudent">Save Changes</button>
                  </div>
                </form><!-- End Profile Edit Form -->

              </div>

              <div class="tab-pane fade profile-edit pt-3" id="profile-progress">
                <?php  if($status == 'notapplied'){ ?>
                <div class="checkListCont">
                  <ul>
                    <li class="list-group-item "><i class="bi bi-check-circle"></i>Register on our website.</li>
                    <li class="list-group-item disabled" aria-disabled="true"><i class="bi bi-dash-circle"></i>Fill out
                      the form to stand a chance to join our study program.</li>
                    <li class="list-group-item disabled" aria-disabled="true"><i class="bi bi-dash-circle"></i>The
                      admission process is underway</li>
                    <li class="list-group-item disabled" aria-disabled="true"><i class="bi bi-dash-circle"></i>Your name
                      has been set and accepted
                    </li>
                    <li class="list-group-item disabled" aria-disabled="true"><i class="bi bi-dash-circle"></i>Pay the
                      fees to complete your joining
                    </li>
                    <li class="list-group-item disabled" aria-disabled="true"><i
                        class="bi bi-dash-circle"></i>Congratulations, you have been chosen to join us, Welcome in our
                      universty</li>
                  </ul>
                </div>
                <div class="progress mt-2">
                  <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 25%"
                    aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <div class="d-grid gap-2 col-6 mx-auto">
                  <a href="/CS-StudentPanel/Students/Applying.php"
                    class=" icon-button my-3 btn-get-started mx-auto">Apply now</a>
                </div>








                <?php  }elseif($status == 'applied'){ ?>
                <div class="checkListCont">
                  <ul>
                    <li class="list-group-item "><i class="bi bi-check-circle"></i>Register on our website.</li>
                    <li class="list-group-item "><i class="bi bi-check-circle"></i>Fill out the form to stand a chance
                      to
                      join our study program.</li>
                    <li class="list-group-item "><i class="bi bi-check-circle"></i>The
                      admission process is underway</li>
                    <li class="list-group-item disabled" aria-disabled="true"><i class="bi bi-dash-circle"></i>Your name
                      has been set and accepted
                    </li>
                    <li class="list-group-item disabled" aria-disabled="true"><i class="bi bi-dash-circle"></i>Pay the
                      fees to complete your joining
                    </li>
                    <li class="list-group-item disabled" aria-disabled="true"><i
                        class="bi bi-dash-circle"></i>Congratulations, you have been chosen to join us, Welcome in our
                      universty</li>
                  </ul>
                </div>
                <div class="progress mt-2 ">
                  <div class="progress-bar progress-bar-striped bg-warning" role="progressbar" style="width: 50%"
                    aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                </div>












                <?php  }elseif($status == 'semiaccepted'){ ?>
                <div class="checkListCont">
                  <ul>
                    <li class="list-group-item "><i class="bi bi-check-circle"></i>Register on our website.</li>
                    <li class="list-group-item "><i class="bi bi-check-circle"></i>Fill out the form to stand a chance
                      to
                      join our study program.</li>
                    <li class="list-group-item "><i class="bi bi-check-circle"></i>The admission process is underway
                    </li>
                    <li class="list-group-item "><i class="bi bi-check-circle"></i>Your name has been set and accepted
                    </li>
                    <?php
                    if($_SESSION['payment_reset']=="null"||$_SESSION['payment_reset']==" "||$_SESSION['payment_reset']==""){
                    ?>
                    <li class="list-group-item disabled" aria-disabled="true"><i class="bi bi-dash-circle"></i>Pay the
                      fees to complete your joining
                    </li>
                    <?php }else{?>
                      <li class="list-group-item "><i class="bi bi-check-circle"></i>Pay the
                      fees to complete your joining
                    </li>
                      <?php } ?>
                    <li class="list-group-item disabled" aria-disabled="true"><i
                        class="bi bi-dash-circle"></i>Congratulations, you have been chosen to join us, Welcome in our
                      universty</li>
                  </ul>
                </div>
                <div class="progress mt-2">
                  <div class="progress-bar progress-bar-striped bg-warning" role="progressbar" style="width: 75%"
                    aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <?php
                if($_SESSION['payment_reset']=="null"||$_SESSION['payment_reset']==" "||$_SESSION['payment_reset']==""){
                ?>
                <form action="" method="POST" enctype="multipart/form-data">
                  <h5><?php echo $_SESSION['payment_reset']  ?></h5>
                  <div class="form-group mt-5">
                    <h6 for="">Please upload the image of your payment reset</h6>
                    <input type="file" name="pay_reset" required>
                    <div class="invalid-feedback">Please enter your payment reset!</div>
                    <div class="d-grid gap-2 col-6 mx-auto">
                      <button href="/CS-StudentPanel/Students/Applying.php"
                        class=" icon-button  btn-get-started mx-auto" name="upload_reset">Send</button>
                    </div>
                  </div>
                </form>
                <?php }else{}?>










                <?php  }elseif($status == 'accepted'){ ?>
                <div class="checkListCont">
                  <ul>
                    <li class="list-group-item "><i class="bi bi-check-circle"></i>Register on our website.</li>
                    <li class="list-group-item "><i class="bi bi-check-circle"></i>Fill out the form to stand a chance
                      to
                      join our study program. </li>
                    <li class="list-group-item "><i class="bi bi-check-circle"></i>The admission process is underway
                    </li>
                    <li class="list-group-item "><i class="bi bi-check-circle"></i>Your name has been set and accepted
                    </li>
                    <li class="list-group-item"><i class="bi bi-check-circle"></i>Pay the fees to complete your joining
                    </li>
                    <li class="list-group-item"><i class="bi bi-check-circle"></i>Congratulations, you have been chosen
                      to join us, Welcome in our
                      universty</li>
                  </ul>
                </div>
                <div class="progress mt-2">
                  <div class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: 100%"
                    aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                </div>










                <?php  }elseif($status == 'Rejected'){ ?>
                <div class="checkListCont">
                  <ul>
                    <li class="list-group-item"><i class="bi bi-x-circle text-danger"></i>We are sorry, but your
                      application to join our university has been rejected</li>
                  </ul>
                </div>
                <div class="progress mt-2">
                  <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 100%"
                    aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div>
              <?php  }else{} ?>
            </div>
            <!-- chatBox by atef -->
            <div class="tab-pane fade show pt-3 active" id="Chat-box">
              <div class="container panel-body" id="parentDiv">
                <div class="chat" >
                  <ul>
                    <?php foreach ($msgs as $data) { ?>
                    <li>
                      <div class="ask">
                        <div>
                          <img src="../upload/profile/<?php echo $img ?>" class="rounded-circle p-1"
                            alt="William Harris" width="40" height="40">
                          <span class="time-right">message </span>

                          <div class="col-md-10 col-sm-12 askMsg m-2 p-2">
                            <?php echo $data['question'] ?>
                          </div>
                        </div>

                      </div>
                    </li>
                    <?php if ($data['reply'] != "") : ?>
                    <li>
                      <div class="response">
                        <div>
                          <img src="../assets/img/mentor.png" class="rounded-circle p-1"
                            alt="William Harris" width="40" height="40">
                          <span class="time-right">reply </span>

                          <div class="col-md-10 col-sm-12  m-2 replyMsg p-2">
                            <?php echo $data['reply'] ?>
                          </div>
                        </div>

                      </div>
                    </li>
                    <?php endif; ?>
                    <?php }; ?>
                  </ul>
                </div>
              </div>
              <form method="POST">
                <div class="input-group mb-3">
                  <input name="body" type="text" class=" inputMsg form-control form-control-lg"
                    placeholder="Enter your Message" aria-label="Recipient's username" aria-describedby="button-addon2"
                    required>
                  <button class="btn btn-outline-primary sendMsg" name="send" type="submit"
                    id="button-addon2">Send</button>
                </div>
              </form>
            </div>
            <!-- end chatBox by atef -->

          </div>


        </div>
  </section>

</main><!-- End #main -->


<?php
}else{
 ?>
 
<script>
  window.location.href = '/CS-StudentPanel/Auth/pages-register.php';
</script>
<?php 
}
include '../Layout/script.php' ?>