<!DOCTYPE html>
<html lang="en">
<head>
    <?php echo $this->Html->charset(); ?>
     <meta charset="utf-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <meta name="description" content="">
     <meta name="author" content="">
    <?php echo $this->Html->meta( 'favicon.ico', '/favicon.ico', array ('type' => 'icon')) ?>

    <title><?php echo $site_name ?>:<?php echo $this->fetch('title'); ?></title>
    <?php
    echo $this->Html->css('bootstrap.min');
    echo $this->Html->css('font-awesome.min');
    echo $this->Html->css('nivo-slider/default.css');
    echo $this->Html->css('nivo-slider/nivo-slider.css');
    echo $this->Html->css('prettyPhoto');
    echo $this->Html->css('price-range');
    echo $this->Html->css('animate');
    echo $this->Html->css('main');
    echo $this->Html->css('style');
    echo $this->Html->css('admin_style.css');
    echo $this->Html->css('jquery.fancybox');
    echo $this->Html->css('responsive');
    echo $this->Html->script('jquery');
    echo $this->Html->script('nivo-slider/jquery.nivo.slider.js');
    echo $this->Html->script('jquery.validate');
    ?>

    <!--[if lt IE 9]>
    <?php echo $this->Html->script('html5shiv') ?>
    <?php echo $this->Html->script('respond.min') ?>
    <![endif]-->
	
</head>

<body>
<?php
echo "\n" . '<script type="text/javascript">var BASE_URL = \'' . $this->Html->url('/', true) . '\';</script>';
echo "\n" . '<script type="text/javascript">var CONTROLLER = \'' . $this->name . '\';</script>';
echo "\n" . '<script type="text/javascript">var ACTION = \'' . $this->action . '\';</script>';
?>
<?php echo $this->element('header') ?>
<?php echo $this->fetch('content') ?>
<?php echo $this->element('footer') ?>


<?php echo $this->Html->script('bootstrap.min') ?>
<?php echo $this->Html->script('jquery.scrollUp.min') ?>
<?php echo $this->Html->script('price-range') ?>
<?php echo $this->Html->script('jquery.prettyPhoto') ?>
<?php echo $this->Html->script('main') ?>
<?php echo $this->Html->script('jquery.fancybox') ?>
<?php echo $this->element('sql_dump'); ?>
</body>
</html>


