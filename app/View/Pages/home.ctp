<?php if($slider_status){ ?>
<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <?php echo $this->Session->flash() ?>
                <div class="row">
                   <?php
                        $sliders = $this->requestAction('sliders/slider');
                   ?>
                    <div class="col-sm-12 col-md-12-custom">

                        <div id="wrapper">
                            <div class="slider-wrapper theme-default">
                                <div id="slider" class="nivoSlider ">
                                    <?php foreach($sliders as $slider) : ?>
                                        <?php echo $this->Html->image($this->element( 'default_photo_selector', array( 'photo'=>$slider['Slider']['cover_photo'],'dir'=>'sliders' ) ), array('alt' => 'Slider')) ?>
                                    <?php endforeach ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br><br>
            </div>
        </div>
    </div>
</section>
<?php } ?>

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-12">
                        <?php echo $this->element('feature_items') ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider({
            effect: 'random',
            slices: 15,
            boxCols: 8,
            boxRows: 4,
            animSpeed: 1500,
            pauseTime: 3000,
            startSlide: 0,
            directionNav: true,
            controlNav: false,
            controlNavThumbs: false,
            pauseOnHover: false,
            manualAdvance: false,
            prevText: 'Prev',
            nextText: 'Next',
            randomStart: true,
            beforeChange: function(){},
            afterChange: function(){},
            slideshowEnd: function(){},
            lastSlide: function(){},
            afterLoad: function(){}
        });
    });
</script>

