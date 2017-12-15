<section id="form">
    <div class="container">
        <div class="contain">
            <div class="row">
                <?php echo $this->element('categories') ?>
                <div class="col-sm-6 form-container">
                    <h2 class="title text-center">Forgot your password ?</h2>
                    <?php echo $this->Session->flash() ?>
                    <div class="login-form">
                        <?php
                        echo $this->Form->create('User');
                        echo $this->Form->input('email',array('type'=>'email','placeholder'=>'Email Address','type'=>'password','label'=>'Forgot Password<em class="mandatory">*</em>'));
                        echo '<button type="submit" class="submit_btn pull-right">Submit</button>';
                        echo $this->Form->end();

                        echo '<br/>';
                        echo $this->Html->link('Click here to Login','/users/login');
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

        jQuery('#UserForgotPasswordForm').validate({
            rules:{
                'data[User][email]': {
                    email:true,
                    remote: {
                        url: BASE_URL+'users/is_invalid_email',
                        type: "post",
                        data: {
                            email: function(){ return jQuery("#UserEmail").val(); }
                        }
                    }
                }
            },
            messages: {
                'data[User][email]': {
                    remote: 'Email could not found'
                }
            }
        });
    });
</script>
