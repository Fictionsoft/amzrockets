<div class="container">
    <div class="content">
        <!--<div class="row">
            <div class="col-sm-12">
                <h2 class="title text-center">Contact <strong>Us</strong></h2>
                <div id="gmap" class="contact-map">
                </div>
            </div>
        </div>-->
        <div class="row">
            <div class="col-sm-9 ">
                <div class="row">
                    <h2 class="title text-center">Our Show Room</h2>
                    <div class="col-sm-4">
                        <div class="show_room_info">
                            <h4>Head Office</h4>
                            <p>15, Ultingonj Lane, Forash Gonj, Sutrapur, Dhaka-1100</p>
                            <p><b>Tell:</b> 9554256, 9554270</p>
                            <p><b>Call:</b> 01715 506270</p>
                            <p>01819 286629</p>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="show_room_info">
                            <h4>Factory & Sales jCenter</h4>
                            <p>202 Satarkul Rood, North Badda, Dhaka-1212</p>
                            <p><b>Tell:</b> 9897395, 8831274</p>
                            <p><b>Call:</b> 01715 506270</p>
                            <p>01819 286629</p>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="show_room_info">
                            <h4>Show Room</h4>
                            <p>152/2-H, West Panthopath, Green Road, Dhaka-1105</p>
                            <p><b>Tell:</b> 9554256, 9554270</p>
                            <p><b>Call:</b> 01715 506270</p>
                            <p>01819 286629</p>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-sm-3">

                <?php echo $this->element('contact_info')?>
                <!--<div class="contact-info">
                    <h2 class="title text-center">Contact Info</h2>
                    <address>
                        <div class="image-pro"><?php /*echo $this->Html->image('/images/home/logo.png',array('alt'=>'FANASBD'))*/?></div><br>
                        <p><b>Address: </b> Dream house, Plot No. 1161, Block # A, Bashundhara Riverview South Keranigonj, Dhaka-1311</p>

                        <p><b>Mobile: </b>01713-299402, 0188-2045322</p>
                        <p><b>E-mail: </b><?php /*echo $user[1]*/?></p>
                        <p><b>Visit: </b><?php /*echo $this->Html->link('www.fanasbd.com','/') */?> </p>
                    </address>
                    <div class="social-networks">
                        <h2 class="title text-center">Social Networking</h2>
                        <ul>
                            <li>
                                <a href="https://www.facebook.com/FANAS-496691333846892/?fref=ts"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                            </li>

                        </ul>
                    </div>
                </div>-->
            </div>
        </div>
    </div>
</div><!--/#contact-page-->

<?php echo $this->Html->script('gmaps') ?>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
<?php echo $this->Html->script('contact') ?>
