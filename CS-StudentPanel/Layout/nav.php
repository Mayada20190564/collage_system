<?php
session_start();

if (isset($_GET['out'])) {
  session_unset();
  session_destroy();
  header("location:/CS-StudentPanel/index.php");
}
?>
<!-- ======= Header ======= -->
<header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">
        <h1 class="logo me-auto"><a href="/CS-StudentPanel/index.php">Mentor</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.php" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

        <nav id="navbar" class="navbar order-last order-lg-0 w-100">

            <ul class="me-auto">
                <li><a class="" href="/CS-StudentPanel/index.php">Home</a></li>
                <li><a href="/CS-StudentPanel/Specializations/Specialization.php">Specialization</a></li>
                <li><a href="/CS-StudentPanel/News/News.php">News</a></li>
                <li><a href="/CS-StudentPanel/FAQs/FAQs.php">FAQs</a></li>
            </ul>
            <ul class="ms-auto">
                <div class="none">
                    <li><a class="active" href="/CS-StudentPanel/index.php">Home</a></li>
                    <li><a href="/CS-StudentPanel/Specializations/Specialization.php">Specialization</a></li>
                    <li><a href="/CS-StudentPanel/News/News.php">News</a></li>
                    <li><a href="/CS-StudentPanel/FAQs/FAQs.php">FAQs</a></li>
                </div>
                <?php if (isset($_SESSION['student'])) : ?>
             
                <li><a href="/CS-StudentPanel/Students/users-profile.php">
                        <i class="bi bi-person-circle fs-4"></i>
                        <?php echo $_SESSION['studentName'] ?>
                    </a>
                </li>
                <li>
                    <form action="" method="GET">
                        <button name="out" class="btn"  onMouseOver="this.style.color='#dc3545'"  onMouseOut="this.style.color='#343a40'" ><i class="bi bi-box-arrow-right fs-5 fst-normal">Logout</i></button>
                    </form>
                </li>


                <?php else: ?>
                <li><a href="/CS-StudentPanel/Auth/pages-login.php">Login <i class="bi bi-box-arrow-in-right fs-5"></i></a></li>
                <li><a href="/CS-StudentPanel/Auth/pages-register.php">Register</a></li>
                <!-- <li><a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="MessageDots bi bi-chat-square-dots-fill" viewBox="0 0 16 16">
  <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2h-2.5a1 1 0 0 0-.8.4l-1.9 2.533a1 1 0 0 1-1.6 0L5.3 12.4a1 1 0 0 0-.8-.4H2a2 2 0 0 1-2-2V2zm5 4a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm4 0a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
</svg></a></li> -->



                <?php endif; ?>

            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>


        </nav><!-- .navbar -->







    </div>

</header><!-- End Header -->