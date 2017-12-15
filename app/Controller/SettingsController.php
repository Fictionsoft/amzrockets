<?php
App::uses('AppController', 'Controller');

class SettingsController extends AppController {
    var $name = 'Settings';
    public $helpers = array('Html', 'Form');
    public $components = array('Auth','Common','FileHandler','Session','RequestHandler');
    public $uses = array('Setting');

    public function beforeFilter() {
        parent::beforeFilter();
        $this->Auth->allow('index');
    }

    public function admin_index(){
        if ($this->request->is('post')){

            $save = false;
            $i = 0;

            // START : cover photo upload
            $site_logo = $this->request->data['Setting'][2]['value'];
            if ($site_logo['name']) {
                $result = $this->FileHandler->uploadImage($site_logo);
                if ($result) {
                    $this->request->data['Setting'][2]["value"] = $this->FileHandler->_uploadimgname;
                }else {
                    $this->request->data['Setting'][2]["value"] = '';
                }
            }else{
                $this->request->data['Setting'][2]["value"] = '';
            }
            //END: cover photo upload

            //pr($this->request->data);die;
            foreach($this->request->data['Setting'] as $settings) {
                if($settings['id']==3 and empty($settings['value']) ){

                }else{
                    $this->Setting->create();
                    if ($this->Setting->save( array('Setting'=>$settings)) ) {
                        $save = true;
                    }else{
                        $save = false;
                    }
                }

                $i++;
            }

            if($save) {
                $this->Session->setFlash("Setting has been successfully updated.",'default',array('class'=>'alert alert-success'));
                return $this->redirect(array('action' => 'admin_index'));
            }else{
                $this->Session->setFlash("Setting could not be updated !",'default',array('class'=>'alert alert-danger'));
            }
        }

        $settings = $this->Setting->find('all');
        //pr($settings);die;
        $this->set('settings',$settings);
    }

    public function setting(){
        $setting = $this->Setting->findByKey('site_name');
        return $setting['Setting']['value'];
    }
}
?>