
<div class="recommended_items">
    <?php $products = $this->requestAction('products/new_arrival') ?>
    <?php if(!empty($products)): ?>
    <h2 class="title text-center">Others Model</h2>
    <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="item active">
                <?php $i=0 ?>
                <?php foreach($products as $product): ?>

                <?php if($i!=0 && $i%2===0):?>
                </div>
                <div class="item">
                <?php endif ?>
                <div class="col-sm-6">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <a href="<?php /*echo $this->Html->url('/products/details/'.$product['Product']['slug'] ) */?>">
                                    <?php echo $this->Html->image($this->element( 'default_photo_selector', array( 'photo'=>$product['Product']['cover_photo'],'dir'=>'products' ) ), array('alt' => 'Product','width'=>'150')) ?>
                                </a>
                                <!--<h4><?php /*echo number_format($product['Product']['price'] ) */?> BDT</h4>-->
                                <h3><?php /*echo implode(' ', array_slice(explode(' ', $product['Product']['name']), 0, 3)) */?></h3>
                                <a href="<?php echo $this->Html->url('/products/details/'.$product['Product']['slug'] ) ?>" class="btn btn-default add-to-cart"><i class="fa fa-arrow-circle-o-right"></i>Buy Now</a>-->
                            </div>
                        </div>
                    </div>
                </div>
                <?php $i++ ?>
                <?php endforeach ?>
            </div>
        </div>
        <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
            <i class="fa fa-angle-left"></i>
        </a>
        <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
            <i class="fa fa-angle-right"></i>
        </a>
    </div>
    <?php endif ?>
</div>