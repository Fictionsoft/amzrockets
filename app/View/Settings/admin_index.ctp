<h3>Settings</h3>
<?php
echo $this->Form->create('Setting',array('type'=>'file'));

if($settings) {
    $i = 0;
    foreach($settings as $setting){

        if($setting['Setting']['key']=='site_logo'){
            echo '<div class="form-group">'.$this->Html->image($this->element( 'default_photo_selector', array( 'photo'=>$setting['Setting']['value'],'dir'=>'settings' ) ), array('alt' => 'logo','width'=>'150')).'</div>';
            echo '<div class="form-group">'.$this->Form->input( $setting['Setting']['key'],array('name'=>'data[Setting]['.$i.'][value]','label'=>'Photo','type'=>'file')).'</div>';

        }elseif($setting['Setting']['key']=='slider_status'){
            echo '<div class="form-group is-publish">'. $this->Form->input($setting["Setting"]["key"],array('type'=>'checkbox', 'name'=>'data[Setting]['.$i.'][value]', 'checked'=>$setting['Setting']['value'] )).'</div>';

        }else{
            echo $this->Form->input( $setting['Setting']['key'], array('name'=>'data[Setting]['.$i.'][value]', 'value'=>$setting['Setting']['value'], 'class'=>'form-control','required'=>true))."</br>";
        }

        echo $this->Form->input('id', array('name'=>'data[Setting]['.$i.'][id]', 'value'=>$setting['Setting']['id'], 'type'=>'hidden' ) ) ;
        $i++;
    }
}

echo '<div class="submit_button">'.$this->Form->end(array('label'=>'Update','class'=>'btn btn-primary')).'</div>';



?>
