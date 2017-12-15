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
            <div class="col-sm-9">
                <div class="contact-form">
                    <h2 class="title text-center">About Us</h2>
                    <div class="status alert alert-success" style="display: none"></div>
                    <h3>Why we are ?</h3>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                    <p>When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
                        and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </p>
                    <p>We invite you to contact us Dhaka Timber today !</p><br>

                    <h3>Why we are best ?</h3>
                    <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. </p>
                </div>
            </div>
            <div class="col-sm-3">
                <?php echo $this->element('contact_info'); ?>
            </div>
        </div>
    </div>
</div><!--/#contact-page-->

<?php echo $this->Html->script('gmaps') ?>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
<?php echo $this->Html->script('contact') ?>
