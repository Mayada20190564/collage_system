<?php include '../Layout/header.php' ?>
<?php include '../Layout/nav.php' ?>
<?php include '../Layout/conn.php' 
?>
<?php




$getFirstNewsSelect="SELECT * FROM news ORDER BY updated_at desc LIMIT 1";
$getFirstNewsSelectQuery=mysqli_query($conn,$getFirstNewsSelect);
$row=mysqli_fetch_assoc($getFirstNewsSelectQuery);

$getFourNewsSelect="SELECT * FROM news ORDER BY updated_at asc LIMIT 4";
$getFourNewsSelectQuery=mysqli_query($conn,$getFourNewsSelect);

$getFiveNewsSelect="SELECT * FROM news ORDER BY updated_at desc LIMIT 5";
$getFiveNewsSelectQuery=mysqli_query($conn,$getFiveNewsSelect);

$getAllNewsSelect="SELECT * FROM news ORDER BY updated_at desc";
$getAllNewsSelectQuery=mysqli_query($conn,$getAllNewsSelect);



?>




<!-------Start of News general Section---------------->
<section class="NewsGeneralSection my-5">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <div class="NewsFirstHeading">
                    <h2>University News</h2>
                    <p>Get all the latest university news from around the globe, including current trends,
                        international reports and student initiatives</p>
                </div>
            </div>
            <div class="col-md-5">
                <div class="NewsFirstImage">
                    <img src="/CS-StudentPanel/assets/img/newslogo.png" class="w-50" alt="error404">
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid paddding mb-5">
        <div class="row mx-0">
            <div class="col-md-6 col-12 paddding animate-box" data-animate-effect="fadeIn">
                <div class="News_suceeNews_height"><img src="../upload/news/<?php echo $row['img']; ?>" alt="img" />
                    <div class="News_suceeNews_height_position_absolute"></div>
                    <div class="News_suceeNews_height_position_absolute_font">
                        <div class=""><a href="#" class="color_fff"> <i class="fa fa-clock-o"></i>&nbsp;&nbsp;
                                <?php echo $row['updated_at']; ?>
                            </a></div>
                        <div class=""><a href="single.html" class="News_good_font">
                                <?php echo $row['news']; ?></a></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <?php foreach ($getFourNewsSelectQuery as $data){ ?>
                    <div class="col-md-6 col-6 paddding animate-box" data-animate-effect="fadeIn">
                        <div class="News_suceeNews_height_2"><img src="../upload/news/<?php echo $data['img']; ?>"
                                alt="img" />
                            <div class="News_suceeNews_height_position_absolute"></div>
                            <div class="News_suceeNews_height_position_absolute_font_2">
                                <div class=""><a href="#" class="color_fff"> <i class="fa fa-clock-o"></i>&nbsp;&nbsp;
                                        <?php echo $data['updated_at']; ?> </a></div>
                                <div class=""><a href="single.html" class="News_good_font_2">
                                        <?php echo $data['news']; ?>
                                    </a></div>
                            </div>
                        </div>
                    </div>
                    <?php }?>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid pt-3">
        <div class="container animate-box bg-white" data-animate-effect="fadeIn">
            <div>
                <div class="News_heading News_heading_border_bottom py-2 mb-4">Trending</div>
            </div>
            <div class="owl-carousel owl-theme js " id="slider1">
                <?php foreach ($getFiveNewsSelectQuery as $data){ ?>
                <div class="item px-2">
                    <div class="News_latest_trading_img_position_relative">
                        <div class="News_latest_trading_img"><img src="../upload/news/<?php echo $data['img']; ?>"
                                alt="" class="News_img_special_relative" /></div>
                        <div class="News_latest_trading_img_position_absolute"></div>
                        <div class="News_latest_trading_img_position_absolute_1">
                            <a href="single.html" class="text-white">
                                <?php echo $data['news']; ?></a>
                            <div class="News_latest_trading_date_and_name_color"> <?php echo $data['updated_at']; ?>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>
    <div class="container-fluid pb-4 pt-4 paddding">
        <div class="container paddding bg-white">
            <div class="row mx-0">
                <div class="col-md-8 animate-box" data-animate-effect="fadeInLeft">
                    <div>
                        <div class="News_heading News_heading_border_bottom py-2 mb-4">News</div>
                    </div>
                <?php foreach ($getFourNewsSelectQuery as $data){ ?>
                    <div class="row pb-4">
                        <div class="col-md-5">
                            <div class="News_hover_news_img">
                                <div class="News_news_img"><img src="../upload/news/<?php echo $data['img']; ?>"
                                        alt="" /></div>
                                <div></div>
                            </div>
                        </div>
                        <div class="col-md-7 animate-box">
                            <a href="single.html" class="News_magna py-2"> <?php echo $data['news'];?> </a> <a href="single.html"
                                class="News_mini_time py-3"> <?php echo $data['updated_at'];?> </a>
                            <div class="News_consectetur"> <?php echo $data['news_details'];?>
                            </div>
                        </div>
                    </div>
                <?php } ?>
                </div>
                <div class="col-md-3 animate-box" data-animate-effect="fadeInRight">
                    <div>
                        <div class="News_heading News_heading_border_bottom pt-3 py-2 mb-4">Most Popular</div>
                    </div><?php foreach ($getAllNewsSelectQuery as $data){ ?>
                    <div class="row pb-3">
                        <div class="col-5 align-self-center">
                            <img src="../upload/news/<?php echo $data['img']; ?>" alt="img" class="News_most_trading" />
                        </div>
                        <div class="col-7 paddding">
                            <div class="most_News_treding_font"><?php echo $data['news'];?> </div>
                            <div class="most_News_treding_font_123"> <?php echo $data['updated_at'];?> </div>
                        </div>
                    </div>
                <?php } ?>
                </div>
            </div>
        </div>
    </div>

</section>
<!-----preloader---------------->
<div id="preloader"></div>
<!-------top button------------->
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>


<?php include '../Layout/script.php' ?>