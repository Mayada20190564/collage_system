<?php include '../Layout/header.php' ?>
<?php include '../Layout/nav.php' ?>
<?php include '../Layout/conn.php';


$selectAllFAQS="SELECT * FROM faqs";
$selectAllFAQSQuery = mysqli_query($conn, $selectAllFAQS);



?>

<!-- ========start FAQs===================== -->

<div class="faq_cont">

    <div class="wrapper bg-white rounded shadow">
        <div class="h2 text-center fw-bold">Common Question & Answer</div>
        <div class="d-flex justify-content-center">
        </div>
        <div class="accordion accordion-flush border-top border-start border-end" id="myAccordion">
            <?php foreach ($selectAllFAQSQuery as $data){ ?>
            <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingOne"> <button class="accordion-button collapsed border-0"
                        type="button" data-bs-toggle="collapse" data-bs-target="#<?php echo $data['question']; ?>"
                        aria-expanded="false" aria-controls="<?php echo $data['question']; ?>"><?php echo $data['question']; ?></button> </h2>
                <div id="<?php echo $data['question']; ?>" class="accordion-collapse collapse border-0"
                    aria-labelledby="flush-headingOne" data-bs-parent="#myAccordion">
                    <div class="accordion-body p-0">
                    <?php echo $data['answer']; ?>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
</div>
<?php include '../Layout/script.php' ?>