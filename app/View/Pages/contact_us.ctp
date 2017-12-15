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
                    <h2 class="title text-center">Contact Us</h2>
                    <?php echo $this->Session->flash() ?>

                    <div class="status alert alert-success" style="display: none"></div>
                    <?php echo $this->Form->create('contact',array('url'=>'/users/contact','class'=>'ontact-form row')) ?>
                        <div class="form-group col-md-6">
                            <?php echo $this->Form->input('name',array('required'=>true,'placeholder'=>'Name','label'=>false,'class'=>'form-control',)) ?>
                        </div>
                        <div class="form-group col-md-6">
                            <?php echo $this->Form->input('email',array('required'=>true,'placeholder'=>'Email','label'=>false,'class'=>'form-control',)) ?>
                        </div>
                        <div class="form-group col-md-12">
                            <?php echo $this->Form->input('subject',array('required'=>true,'placeholder'=>'Subject','label'=>false,'class'=>'form-control',)) ?>
                        </div>
                        <div class="form-group col-md-12">
                            <?php echo $this->Form->input('message',array('type'=>'textarea','rows'=>'8','required'=>true,'placeholder'=>'Your Message Here','label'=>false,'class'=>'form-control','div'=>false,'style'=>'height:200px;')) ?>
                        </div>
                        <div class="form-group col-md-12 text-center">
                            <input type="submit" name="submit" class="submit_btn" value="Submit">
                        </div>
                    <?php echo $this->Form->end() ?>
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

<script type="text/javascript">
    jQuery(document).ready(function(){
        jQuery('#contactContactUsForm').validate({

        });
    });
</script>