<div class="container">
    <footer id="footer">
        <!--<div class="footer-widget">
            <div class="container">
                <div class="row">
                    <div class="col-sm-2">
                        <div class="single-widget">
                            <h2>Menu</h2>
                            <ul class="nav nav-pills nav-stacked bold">
                                <li><a href="<?php /*echo $this->Html->url('/') */?>">Home</a></li>
                                <li><a href="<?php /*echo $this->Html->url('/about-us') */?>">About Us</a></li>
                                <li><a href="<?php /*echo $this->Html->url('/contact-us') */?>">Contact Us</a></li>
                                <li><a href="<?php /*echo $this->Html->url('/products/cart') */?>">Shopping Cart</a></li>
                                <li><a href="<?php /*echo $this->Html->url('/users/my_profile') */?>">My Account</a></li>
                                <li><a href="<?php /*echo $this->Html->url('/') */?>">Terms & Conditions</a></li>
                                <li><a href="<?php /*echo $this->Html->url('/faq') */?>">FAQ</a></li>
                            </ul>
                        </div>
                    </div>

                    <?php
    /*                $main_categories = $this->requestAction('categories/categories');
                    $category_part1=$category_part2='';
                    if(!empty($main_categories)){
                        $i=0;
                        $divider = round(count($main_categories)/2);
                        foreach($main_categories as $main_category){
                            if(!empty($main_category['Category'])){
                                if($i>=$divider){
                                    $category_part1.='<li><a href="javascript:void(0)"> <strong>'.$main_category['MainCategory']['name'].' <i class="fa fa-angle-down"></i> </strong></a></li>';
                                    foreach($main_category['Category'] as $category){
                                        $link = $this->Html->url('/products/category/'.$category['slug']);
                                        $category_part1.= '<li><a href="'.$link.'">'.$category['name'].'</a></li>';
                                    }
                                    $category_part1.= '<li>&nbsp;</li>';

                                }else{
                                    $category_part2.='<li><a href="javascript:void(0)"> <strong>'.$main_category['MainCategory']['name'].' <i class="fa fa-angle-down"></i></strong>  </a></li>';
                                    foreach($main_category['Category'] as $category){
                                        $link = $this->Html->url('/products/category/'.$category['slug']);
                                        $category_part2.= '<li><a href="'.$link.'">'.$category['name'].'</a></li>';
                                    }
                                    $category_part2.= '<li>&nbsp;</li>';
                                }
                            }

                        $i++;
                        }
                    }
                    */?>


                    <div class="col-sm-4">
                        <div class="row">
                            <div class="single-widget">
                                <h2 class="text-center">Category</h2>
                                <div class="col-sm-6">
                                    <ul class=" nav-pills nav-stacked">
                                        <?php /*echo $category_part2 */?>
                                    </ul>
                                </div>
                                <div class="col-sm-6">
                                    <ul class=" nav-pills nav-stacked">
                                        <?php /*echo $category_part1 */?>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-3">
                        <div class="single-widget">
                            <h2>Refer Your friend</h2>
                            <?php /*echo $this->Html->image('/images/refer-your-friend.png',array('alt'=>'Payment methods')) */?>

                            <h2>Get in Touch</h2>
                            <div id="fb-root"></div>
                            <script>(function(d, s, id) {
                                    var js, fjs = d.getElementsByTagName(s)[0];
                                    if (d.getElementById(id)) return;
                                    js = d.createElement(s); js.id = id;
                                    js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5&appId=198251853701041";
                                    fjs.parentNode.insertBefore(js, fjs);
                                }(document, 'script', 'facebook-jssdk'));</script>
                            <div class="fb-page" data-href="https://www.facebook.com/efair.com.bd" data-small-header="true" data-adapt-container-width="true" data-hide-cover="true" data-show-facepile="true" data-show-posts="false"></div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="single-widget">
                            <h2>We Accept</h2>
                            <?php /*echo $this->Html->image('/images/payment_method.png',array('alt'=>'Payment methods')) */?>
                        </div>
                    </div>
                </div>
            </div>
        </div>-->

            <div class="footer-bottom">
                <div class="row">
                    <div class="col-xs-12 col-sm-6">
                        <p class="pull-left">Copyright © <?php echo date('Y') ?> <?php echo $site_name ?> All rights reserved.</p>
                    </div>

                    <div class="col-xs-12 col-sm-6">
                        <p class="pull-right">Develop by <span><a target="_blank" href="http://www.fictionsoft.com">Fictionsoft</a></span></p>
                    </div>
                </div>
            </div>


    </footer>
</div>