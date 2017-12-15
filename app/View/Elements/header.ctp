<div id="fb-root"></div>
<!--<script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>-->

<script>
    $(document).ready(function(){
        $('.site_heading h2').click(function(){
                $(this).animate({
                    color: '#ddd'
                }, 600);
            },
            function(){
                $(this).animate({
                    color: '#999'
                }, 600);
            });
    });
</script>
<div class="container">
    <div class="header_section">
        <div class="header_bg main_content">
            <div class="row">
                <div class="col-sm-2">
                    <div class="logo">
                        <a href="<?php echo $this->Html->url('/')?>"><?php echo $this->Html->image('/images/home/logo.png',array('alt'=>'logo'));?></a>
                    </div>
                </div>
                <div class="col-sm-8">
                    <?php $header_content = $this->requestAction('contents/header_content'); ?>
                    <div class="header_top_middle">
                        <h3><strong><?php echo $header_content['Content']['title']; ?></strong></h3>
                        <p><?php echo $header_content['Content']['content']; ?></p>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="logo_right">
                        <a href="<?php echo $this->Html->url('/')?>"><?php echo $this->Html->image($this->element( 'default_photo_selector', array('photo'=>"$site_logo",'dir'=>'settings' ) ), array('alt' => 'Logo','class'=>'')) ?></a>

                    </div>
                </div>
            </div>
        </div>

        <nav class="navbar navbar-default">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div id="navbarCollapse" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="<?php echo $this->Html->url('/')?>">Home</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>
        </nav>
    </div>
</div>