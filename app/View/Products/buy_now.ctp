<div class="container">
    <div class="email_section">
        <div class="email_section_content">
            <div class="row">
                <div class="col-sm-12">
                    <h2 style="color: #222222"> Where Should We Email Your Coupon Code?</h2>
                    <div class="form_section">

                        <?php echo $this->Form->create('Product', array('action' => 'details/'.$this->request->params['pass'][0]) ) ?>
                        <input type="email" name="email" class="form-control email" required placeholder="Your Email Address Here....">
                        <button class="sub_button form-control"> Send Me Amazon.Com Coupon Now!</button>
                        <?php echo $this->Form->end() ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

