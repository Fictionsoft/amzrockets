<?php
App::uses('AppController', 'Controller');


class ContentsController extends AppController {


    public $helpers = array('Html', 'Form', 'Currency');
    public $components = array('Auth','Session','Common', 'FileHandler');
    //public $uses = array('Content');

    public function beforeFilter() {
        parent::beforeFilter();
        $this->Auth->allow(array('header_content','slider_bottom'));
    }

    /**
     * @param null
     * @return null
     */
    public function admin_index() {
        //$this->autoRender = false;
        if(!empty($this->data)){
            $this->Session->write('ContentFilter', $this->request->data['name']);
        }
        $where = $this->__builtContentWhere();
        $this->paginate = array(
            'conditions' => $where,
            'limit' => 30,
            'order' => array('name' => 'asc')
        );

        $contents = $this->paginate('Content');
        $this->loadModel('Content');
        //$Contents = $this->Content->find('all');die;

        $this->set('contents',$contents);
    }

    /**
     * @param null
     * @return null
     */
    public function admin_create() {
        if ($this->request->is('post')) {
            $this->Content->create();

            if ($this->Content->save($this->request->data)) {
                $this->Session->setFlash("Content has been successfully added",'default',array('class'=>'alert alert-success'));
                $this->redirect(array('action' => 'admin_index'));
            }

            $this->Session->setFlash("Unable to save !",'default',array('class'=>'alert alert-danger'));

            // populate Content_package table

        }
    }

    /**
     * @param null $id
     * @return null
     */
    public function admin_update($id = null) {
        if (!$id) {
            throw new NotFoundException(__('Invalid request !'));
        }

        $Content= $this->Content->findById($id);
        $this->log($Content,'debug');

        if (!$Content) {
            throw new NotFoundException(__('Invalid request !'));
        }

        if ($this->request->is(array('Content', 'put'))) {
           $this->Content->id = $id;
           if ($this->Content->save($this->request->data)) {
                $this->Session->setFlash("Content has been updated.",'default',array('class'=>'alert alert-success'));
                $this->redirect(array('action' => 'admin_index'));
           }

            $this->Session->setFlash("Unable to update !",'default',array('class'=>'alert alert-danger'));
        }

        if (!$this->request->data) {
            $this->request->data = $Content;
        }
    }


    /**
     * @param null $id
     * @return redirect to index
     */
    public function admin_delete($id = null) {
        if ($this->request->is('get')) {
            throw new MethodNotAllowedException();
        }

        if ($this->Content->delete($id)) {
            $this->Session->setFlash("Content #$id has been successfully deleted !",'default',array('class'=>'alert alert-success'));

            $this->redirect(array('action' => 'admin_index'));
        }
    }

    public function admin_reset(){
        if($this->Session->check('ContentFilter')){
            $this->Session->delete('ContentFilter');
        }
        $this->redirect('index');
    }

    public function __builtContentWhere(){
        $filter = null;
        $conditions = array();

        if($this->Session->check('ContentFilter')){
           $filter = $this->Session->read('ContentFilter.filter');
        }
        if(!empty($filter)){
            $conditions = array('OR' => array(
                array('Content.Content LIKE' => '%' . $filter . '%')
            ));
        }

        return $conditions;
    }


    public function header_content(){
        $header_content = $this->Content->findByName('header_content');
        return $header_content;
    }

    public function slider_bottom(){
        $slider_bottom = $this->Content->findByName('slider_bottom_content');
        return $slider_bottom;
    }
}