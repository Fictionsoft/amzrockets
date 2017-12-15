<div class="main_section">
        <div class="row">
            <div class="col-sm-12">
                <div class="text_content_two">
                    <?php $slider_bottom = $this->requestAction('contents/slider_bottom'); ?>
                    <h2><strong><?php echo $slider_bottom['Content']['title']; ?></strong></h2>
                    <div class="col-sm-12">
                        <div class="text_content_two">
                            <h3><?php echo $slider_bottom['Content']['content']; ?>
                            </h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    <div class="features_items">
        <?php
        $categories = $this->requestAction('products/index');
        if(!empty($categories)){
        foreach($categories as $category){
        if(!empty($category['Product'])) {
        // echo '<h2 class="title text-center" >'.$category['Category']['name'].'</h2>';
        echo '<div class="row">';
        $total_products = count($category['Product']);
        $i = 0;
        foreach($category['Product'] as $product) {
            ?>
            <div class="col-xs-6 col-sm-4 col_xxs_100">
                <div class="product-image-wrapper">
                    <div class="single-products">
                        <div class="productinfo text-center">

                            <?php
                            $url = $this->Html->url('/products/create_product_visitor/'.$product['id'].'/'.$product['mail_required']);
                            ?>

                            <a href="<?php echo $url ?>">
                                <?php echo $this->Html->image($this->element( 'default_photo_selector', array( 'photo'=>$product['cover_photo'],'dir'=>'products' ) ), array('alt' => 'Product','class'=>'img-responsive product_img')) ?>
                            </a>
                            <h3>$<?php echo number_format($product['price'],2 ) ?></h3>

                            <h4>Save $<?php echo $save_amount = $product['price']*$product['discount']/ 100;?></h4>
                            <h3><?php echo $this->Common->limit_text($product['name'],5) ?></h3>

                            <!--<div class="product_stripe"><?php /*echo $this->Html->image('/images/home/product_stripe.png',array('alt'=>'Product Stripe'));*/?></div>-->
                            <div class="product_stripe">
                                <div class="discount">
                                    <div class="discount_percent"><span><?php echo $product['discount'] ?></span>% <p>Discount</p></div>
                                    <div class="free" "><?php echo $product['free'] ?></div>
                                </div>
                            </div>

                            <div class="buy_now">
                                <a href="<?php echo $url ?>">
                                    <?php echo $this->Html->image('/img/buy-with-amazon.png',array('alt'=>'buy now', 'width'=>'185')) ?>
                                </a>
                            </div>
                            <!--<h3 class="top15"><?php /*echo $this->Common->shorten_string($product['name'],2) */?></h3>-->

                            <!--<a href="<?php /*echo $this->Html->url('/products/details/'.$product['slug'] ) */?>" class="btn btn-default add-to-cart"><i class="fa fa-arrow-circle-o-right"></i>Buy Now</a>-->
                        </div>
                    </div>
                </div>
            </div>
            <?php
            $i++;
        }
        ?>
    </div>
    <!--<div class="text-center"><?php /*echo $this->Html->link('View All '.$category['Category']['name'],'/products/category/'.$category['Category']['slug'],array('class'=>'btn btn-success btn-lg')) */?></div>
                <div style="height: 30px;">&nbsp;</div>-->
    <?php
    }
    }
    }
    ?>
</div>



