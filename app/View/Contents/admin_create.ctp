<h3>Edit Content</h3>
<?php
echo $this->Form->create('Content',array('type' =>'file'));
echo $this->element('../Contents/elements');
echo '<div class="submit_button">'.$this->Form->end(array('label'=>'Save','class'=>'btn btn-primary')).'</div>';
