<h3>Update Content</h3>
<?php
    echo $this->Form->create('Content',array('type' => 'file'));
    echo $this->element('../Contents/elements');
    echo $this->Form->input('id', array('type' => 'hidden'));
    echo '<div class="submit_button">'.$this->Form->end(array('label'=>'Update','class'=>'btn btn-primary')).'</div>';
?>