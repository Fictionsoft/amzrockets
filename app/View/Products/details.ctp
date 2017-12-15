<div class="body_section">
    <div class="container">
        <div class="main_content">
            <div class="row">
                <div class="col-xs-12 col-sm-12">
                    <div class="text_wrap">
                        <div class="title_text">
                            <h1>Thanks! Here&#39;s how to claim your special offer:</h1>
                        </div>

                        <div class="body_text">
                            <h3>Because this is a limited time offer, we aren&#39;t sure how much longer the below coupon code will be available for - so please use it right now to avoid missing out.</h3>
                        </div>

                        <div class="coupon">
                            <h3>COUPON: <?php echo $product['Product']['coupon_code'] ?></h3>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="text_wrap">
                    <div class="col-xs-4 col-sm-3">
                        <div class="step_1">
                            <h1>Step<br />
                                #1</h1>
                        </div>
                    </div>

                    <div class="col-xs-7 col-xs-offset-1 col-sm-8  col-sm-offset-1">
                        <div class="body_text">
                            <h3>Simply open This link <a href="<?php echo $product['Product']['store_link'] ?>" target="_blank">Our Store Link </a> then go to our product page.</h3>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="text_wrap">
                    <div class="col-xs-offset-5 col-xs-7 col-sm-offset-4 col-sm-7">
                        <div class="step1_picture">
                            <?php echo $this->Html->image('/img/2.jpg',array('alt'=>'image')) ?>
                        </div>
                    </div>
                    <div class="col-xs-offset-1 col-sm-offset-1"></div>
                </div>
            </div>


            <div class="row">
                <div class="text_wrap">
                    <div class="col-xs-4 col-sm-3">
                        <div class="step_1">
                            <h1>Step<br />
                                #2</h1>
                        </div>
                    </div>

                    <div class="col-xs-7 col-xs-offset-1 col-sm-8  col-sm-offset-1">
                        <div class="body_text">
                            <h3>When on our Amazon page, press the Add To Cart button and head through to the checkout process.
                                At the checkout page, enter the coupon code  <?php echo $product['Product']['coupon_code'] ?>
                                and click apply. You&#39;ll see the discount confirmed in Amazon (example below).
                            </h3>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="text_wrap">
                    <div class="col-xs-offset-5 col-xs-7 col-sm-offset-4 col-sm-7">
                        <div class="step1_picture">
                            <?php echo $this->Html->image('/img/PERK0025.jpg',array('alt'=>'image')) ?>
                        </div>
                    </div>
                    <div class="col-xs-offset-1 col-sm-offset-1"></div>
                </div>
            </div>
        </div>

       <!-- <div class="copyright">
            <p>Copyright &copy; 2017 <span class="target_blank"> <a href="http://www.evandar.com" target="_blank">Ebax</a> </span></p>
        </div>-->
    </div>
</div>