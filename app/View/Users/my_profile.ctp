<section id="form">
    <div class="container">
        <div class="content">
            <div class="row">
                <div class="col-sm-9" >
                    <h2 class="title text-center">Update My Profile</h2>
                    <div class="signup-form">
                        <?php echo $this->Session->flash() ?>

                        <?php
                        echo $this->Form->create('User',array('url'=>'my_profile','type'=>'file'));
                        echo $this->element('../Users/front_elements');
                        echo '<button type="submit" class="submit_btn pull-right">Update</button>';
                        echo $this->Form->input('id', array('type' => 'hidden'));
                        echo $this->Form->end();

                        echo '<br/>';
                        echo $this->Html->link( "Change password?",   array('action'=>'change_password') );
                        ?>
                    </div>
                </div>
                <?php echo $this->element('account_menu') ?>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript">
    jQuery(document).ready(function(){
        jQuery('#UserMyProfileForm').validate();
    });
</script>

