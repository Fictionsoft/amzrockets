<section id="form">
    <div class="container">
        <div class="content">
            <div class="row">
                <div class="col-sm-9">
                    <h2 class="title text-center">Change Password</h2>
                    <?php echo $this->Session->flash() ?>
                    <div class="login-form">
                        <?php
                        echo $this->Form->create('User');
                        echo $this->Form->input('current_password',array('type'=>'password','minlength'=>'6','label'=>'Current Password<em class="mandatory">*</em>'));
                        echo $this->Form->input('password',array('type'=>'password','minlength'=>'6','label'=>'Password<em class="mandatory">*</em>'));
                        echo $this->Form->input('confirm_password',array('type'=>'password','minlength'=>'6','label'=>'Confirm Password<em class="mandatory">*</em>'));
                        echo '<button type="submit" class="submit_btn pull-right">Submit</button>';
                        echo $this->Form->end();

                        echo '<br/>';
                        echo $this->Html->link('Click here to login','/users/login');
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

        jQuery('#UserChangePasswordForm').validate({

            rules:{
                'data[User][confirm_password]': {
                    equalTo: "#UserConfirmPassword"
                }
            },
            messages:{
                'data[User][confirm_password]':'Password did not match with confirm password'
            }

        });
    });
</script>

