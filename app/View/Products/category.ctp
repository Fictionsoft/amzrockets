<section>
    <div class="container">
        <div class="content">
            <?php if( isset($products)){ ?>
                <div class="search-select">


                    <span class="par-category"><?php echo $products[0]['Category']['name'] ?></span>

                    <!--<div class="pull-right">
                                <?php /*echo $this->Form->create('Product',array('class'=>'form-inline','role'=>'form' ) ) */?>
                                    <span>Show Items:</span>
                                    <div class="form-group">
                                        <?php /*echo $this->Form->input('limit',array('options'=>array(30=>30,50=>50,100=>100,500=>'all'),'label'=>'form-control','label'=>false ) ) */?>
                                    </div>
                                    <span>Price:</span>
                                    <div class="form-group">
                                        <?php /*echo $this->Form->input('order',array('options'=>array('asc'=>'Min - Max','desc'=>'Max - Min'),'empty'=>'--Select--','label'=>'form-control','label'=>false) ) */?>
                                    </div>
                                    <div class="form-group">
                                        <?php /*echo $this->Form->input('Filter',array('type'=>'submit','label'=>false,'class'=>'form-control') ) */?>
                                    </div>
                                <?php /*echo $this->Form->end()*/?>
                            </div>-->
                </div>
            <?php } ?>

            <?php echo $this->Session->flash() ?>
            <?php if(isset($products)): ?>

            <div class="row"><!--features_items-->
                <?php $i=1 ?>
                <?php foreach($products as $product): ?>
                    <div class="col-sm-6">
                        <div class="product-image-wrapper">
                            <div class="single-products">
                                <div class="productinfo text-center">
                                    <a href="#<?php /*echo $this->Html->url('details/'.$product['Product']['slug'] ) */?>"> <?php echo $this->Html->image($this->element( 'default_photo_selector', array( 'photo'=>$product['Product']['cover_photo'],'dir'=>'products' ) ), array('alt' => 'Product','width'=>'150')) ?></a>
                                   <!-- <h3><?php /*echo $this->Common->shorten_string($product['Product']['name'],2) */?></h3>-->
                                    <!--<a href="<?php /*echo $this->Html->url('details/'.$product['Product']['slug'] ) */?>" class="btn btn-default add-to-cart"><i class="fa fa-arrow-circle-o-right"></i>Buy Now</a>-->
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php $i++ ?>
                <?php endforeach ?>
            </div>
            <?php /*echo $this->element('admin/paging') */?>

            <?php endif ?>
            </div>
    </div>
</section>
