<?php include 'Layout/header.php' ?>
<?php include 'Layout/nav.php' ?>



    <!-- ======= Header  Section ======= -->
    <section id="HBackground" class="d-flex justify-content-center align-items-center">
        <div class=" position-relative w-100" data-aos="zoom-in" data-aos-delay="100">
            <div class="container position-relative" data-aos="zoom-in" data-aos-delay="100">
                <h1>Learning Today,<br>Leading Tomorrow</h1>
                <h2>Start your journey to the University with an Application for Admission.</h2>
                <?php if (isset($_SESSION['studentStatus'])){
                    if($_SESSION['studentStatus']=="notapplied"){?>
                <a href="/CS-StudentPanel/Students/Applying.php" class=" icon-button my-3 btn-get-started ">Apply now</a>
                <?php }
                }else{ ?>
                <a href="/CS-StudentPanel/Students/Applying.php" class=" icon-button my-3 btn-get-started ">Apply now</a>
                <?php } ?>
              </div>
        </div>
    </section><!-- End Header  Section -->

    <main id="main">

        <!-- ======= SuccessData Section ======= -->
        <section id="SuccessData" class="SuccessData">
            <div class="container" data-aos="fade-up">

                <div class="row">
                    <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
                        <img src="assets/img/capture_1.png" class="img-fluid" alt="">
                    </div>
                    <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content"
                        title="Why uniting your university’s data is the key to student success...">
                        <h3>Why uniting your university’s data is the key to student success</h3>
                        <p class="fst-italic">
                            Today, universities are blazing trails to unite student data across teams to create a truly
                            Connected
                            Campus. The result? They can drive student success like never before…

                            Imagine being able to track the development of an individual student across the entire
                            student
                            life-cycle
                            – from their general performance and well-being, to their participation in courses and
                            activities, and
                            across the different programmes your university offers.
                        </p>
                        <ul>
                            <li><i class="bi bi-check-circle"></i> Proactively drive student success.</li>
                            <li><i class="bi bi-check-circle"></i>Increase every team’s efficiency.</li>
                            <li><i class="bi bi-check-circle"></i> Accelerate innovation.</li>
                        </ul>
                        <p>
                            When all your data is in one place, it makes it easier to extend your tools and engagement
                            programmes, so
                            you’ll be able to respond to the needs of students today – and tomorrow – faster and with a
                            more
                            connected
                            infrastructure.
                        </p>

                    </div>
                </div>

            </div>
        </section><!-- End About Section -->

        <!-- ======= Counts Section ======= -->
        <section id="counts" class="counts section-bg">
            <div class="container">

                <div class="row counters">

                    <div class="col-lg-3 col-6 text-center">
                        <img src="./assets/img/staff-icon-png-15-removebg-preview.png" alt="error404"
                            class="CountersImage1">
                        <span data-purecounter-start="0" data-purecounter-end="1232" data-purecounter-duration="1"
                            class="purecounter"></span>
                        <p>Staff Members</p>
                    </div>

                    <div class="col-lg-3 col-6 text-center">
                        <img class="CountersImage2"
                            src="./assets/img/student-icon-website-design-desktop-envelopment-development-premium-pack-student-vector-flat-color-icon-167309055-removebg-preview.png">
                        <span data-purecounter-start="0" data-purecounter-end="207853" data-purecounter-duration="1"
                            class="purecounter"></span>
                        <p>University Students</p>
                    </div>

                    <div class="col-lg-3 col-6 text-center">
                        <img src="./assets/img/2037690-removebg-preview.png" alt="error404" class="CountersImage3">
                        <span data-purecounter-start="0" data-purecounter-end="1200" data-purecounter-duration="1"
                            class="purecounter"></span>
                        <p>University Events</p>
                    </div>

                    <div class="col-lg-3 col-6 text-center">
                        <img src="./assets/img/1995574 (1).png" alt="error404"
                            class="CountersImage4">
                        <span data-purecounter-start="0" data-purecounter-end="1500" data-purecounter-duration="1"
                            class="purecounter"></span>
                        <p>Trainers</p>
                    </div>

                </div>

            </div>
        </section><!-- End Counts Section -->

        <!-- ======= Why Us Section ======= -->
        <section id="why-us" class="why-us">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2> Our Specialization </h2>
                    <p>Know more about our Specializations</p>
                </div>

                <div class="row">

                    <div class="col-lg-4">
                        <a href="/CS-StudentPanel/Specializations/Specialization.php">
                            <div class="box" data-aos="zoom-in" data-aos-delay="100">
                                <span>01</span>
                                <h4>BIS</h4>
                                <p>Business Information Systems</p>
                            </div>
                        </a>

                    </div>

                    <div class="col-lg-4 mt-4 mt-lg-0">
                        <a href="/CS-StudentPanel/Specializations/Specialization.php">
                            <div class="box" data-aos="zoom-in" data-aos-delay="200">
                                <span>02</span>
                                <h4>FMI</h4>
                                <p>Financial Markets & Institutions</p>
                            </div>
                        </a>

                    </div>

                    <div class="col-lg-4 mt-4 mt-lg-0">
                        <a href="/CS-StudentPanel/Specializations/Specialization.php">
                            <div class="box" data-aos="zoom-in" data-aos-delay="300">
                                <span>03</span>
                                <h4> English section</h4>
                                <p>Faculty of Commarce English Section</p>
                            </div>
                        </a>

                    </div>

                </div>

            </div>
        </section><!-- End Why Us Section -->

        <!-- ======= About Section ======= -->
        <section id="about" class="about">
            <div class="container" data-aos="fade-up">

                <div class="row">
                    <div class="col-lg-4 d-flex align-items-stretch">
                        <div class="content">
                            <h3>About Helwan University</h3>
                            <p>
                                Helwan University is a member of the Egyptian Supreme Council of Universities. It was
                                established on
                                July 26, 1975 by Act No. 70 of 1975 over 350 acres of land. It is the youngest of 3
                                major
                                governmental universities in Cairo
                            </p>
                            <div class="text-center">
                                <a href="/CS-StudentPanel/Specializations/Specialization.php" class="more-btn">Learn More <i class="bx bx-chevron-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 d-flex " data-aos="zoom-in" data-aos-delay="100">
                        <div class="icon-boxes d-flex flex-column justify-content-center">
                            <div class="row">
                                <div class="col-xl-4 d-flex align-items-stretch">
                                    <div class="icon-box mt-4 mt-xl-0">
                                        <i class="bx bx-receipt"></i>
                                        <h4>Our Vision </h4>
                                        <p>To be a pioneer in the production and investment of knowledge with a globally
                                            advanced
                                            classification</p>
                                    </div>
                                </div>
                                <div class="col-xl-4 d-flex align-items-stretch">
                                    <div class="icon-box mt-4 mt-xl-0">
                                        <i class="bx bx-cube-alt"></i>
                                        <h4>Our Mission</h4>
                                        <p>Helwan University is working to achieve outstanding institutional performance
                                            that supports the
                                            production and investment of knowledge towards sustainable development. It
                                            affords smart and
                                            developed
                                            educational services in accordance with the quality standards.</p>
                                    </div>
                                </div>
                                <div class="col-xl-4 d-flex align-items-stretch">
                                    <div class="icon-box mt-4 mt-xl-0">
                                        <i class="bx bx-images"></i>
                                        <h4>Sectors</h4>
                                        <p>
                                            <a href=" http://www.helwan.edu.eg/?p=35458&lang=en">Postgradyate Studies
                                                and
                                                Research Sector </a>
                                            <a href="http://www.helwan.edu.eg/?p=35458&lang=en">Education an Student
                                                Affairs
                                                Sector </a>
                                            <a href="">Community Service and Environmental </a>
                                            <a href="">Development Sector </a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div><!-- End .content-->
                    </div>
                </div>

            </div>
        </section><!-- End About Us Section -->


    </main><!-- End #main -->




    <footer class="text-white text-center text-lg-start ">
        <!-- Grid container -->
        <div class=" container footer  p-4">
            <!--Grid row-->
            <div class="row mt-4">
                <!--Grid column-->
                <div class="col-lg-4 col-md-12 mb-4 mb-md-0">
                    <h5 class="text-uppercase mb-4">About University</h5>

                    <p>
                    Helwan University is a member of the Egyptian Supreme Council of Universities. It was established on July 26, 1975 by Act No. 70 of 1975 over 350 acres of land. It is the youngest of 3 major governmental universities in Cairo
                    </p>


                    <div class="icons mt-4">
                        <!-- Facebook -->
                        <a type="button" class=""><i class="bx bxl-facebook"></i></a>
                        <!-- Dribbble -->
                        <a type="button" class=""><i class="bx bxl-dribbble"></i></a>
                        <!-- Twitter -->
                        <a type="button" class=""><i class="bx bxl-twitter"></i></a>
                        <!-- Google + -->
                        <a type="button" class=""><i class="bi bi-google"></i></a>
                        <!-- Linkedin -->
                    </div>
                </div>
                <!--Grid column-->

                <!--Grid column-->
                <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
                    <h5 class="text-uppercase mb-4 pb-1">Search something</h5>

                    <div class="form-outline form-white mb-4">
                        <input type="text" id="formControlLg" class="form-control form-control-lg" />
                        <label class="form-label" for="formControlLg">Search</label>
                    </div>

                    <ul class="fa-ul" style="margin-left: -1.65em; list-style: none;">
                        <li class="mb-3">
                            <span class="fa-li"><i class="bi bi-house-fill"></i></span><span class="ms-2">New York, NY
                                10012,
                                US</span>

                        <li class="mb-3">
                            <span class="fa-li"><i class="bi bi-envelope"></i></span><span
                                class="ms-2">info@example.com</span>
                        </li>
                        <li class="mb-3">
                            <span class="fa-li"><i class="bi bi-telephone"></i></span><span class="ms-2">+ 01 234 567
                                88</span>
                        </li>
                        <li class="mb-3">
                            <span class="fa-li"><i class="bi bi-printer"></i></span><span class="ms-2">+ 01 234 567
                                89</span>
                        </li>
                    </ul>
                </div>
                <!--Grid column-->

                <!--Grid column-->
                <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
                    <h5 class="text-uppercase mb-4">Opening hours</h5>

                    <table class="table text-center text-white">
                        <tbody class="font-weight-normal">
                            <tr>
                                <td>Mon - Thu:</td>
                                <td>8am - 9pm</td>
                            </tr>
                            <tr>
                                <td>Fri - Sat:</td>
                                <td>8am - 1am</td>
                            </tr>
                            <tr>
                                <td>Sunday:</td>
                                <td>9am - 10pm</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!--Grid column-->
            </div>
            <!--Grid row-->
        </div>

    </footer>

    <div id="preloader"></div>
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

            <?php include 'Layout/script.php' ?>