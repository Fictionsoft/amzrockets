
<div class="row">
    <div class="col-sm-3"></div>

    <div class="col-sm-6">
        <h3 class="text-center">Admin Change Password</h3>
        <br>
        <?php
            echo $this->Form->create('User');
            echo '<div class="form-group">'. $this->Form->input('current_password',array('type'=>'password','class'=>'form-control','minlength'=>'6','label'=>'Current Password<em class="mandatory">*</em>')).'</div>';
            echo '<div class="form-group">'.$this->Form->input('password',array('type'=>'password','class'=>'form-control','minlength'=>'6','label'=>'Password<em class="mandatory">*</em>')).'</div>';
            echo '<div class="form-group">'.$this->Form->input('confirm_password',array('type'=>'password','class'=>'form-control','minlength'=>'6','label'=>'Confirm Password<em class="mandatory">*</em>')).'</div>';
            echo '<button type="submit" class="btn btn-primary">Submit</button>';
            echo $this->Form->end();
        ?>
    </div>

    <div class="col-sm-3"></div>
</div>

