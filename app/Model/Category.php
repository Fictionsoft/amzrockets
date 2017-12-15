<?php
App::uses('AppModel', 'Model');

class Category extends AppModel {

    public $hasMany = array(
        'Product' => array(
            'className' => 'Product',
            'foreignKey' =>'category_id',
            'conditions' => array('Product.status' => 1),
            'limit'=>100000,
            'order' => array('id' => 'desc')
        ),
        'CategorySize' => array(
            'className' => 'CategorySize',
            'foreignKey' =>'category_id'
        )
    );

    public $belongsTo = array(
        'MainCategory' => array(
            'className' => 'MainCategory',
            'foreignKey' =>'main_category_id'
        )
    );

    public $validate = array(
        'name' => array(
            'rule' => 'notEmpty',
            'message' => 'Please enter name field'
        ),
        'slug' => array(
            'slug' => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter slug field'
            ),
            'isUnique' => array(
                'rule' => 'isUnique',
                'message' => 'Please chose another slug'
            ),
        )
    );

    public function getCategories(){
        $categories = $this->find('list',array('conditions'=>array('status'=>1),'order'=>'name'));
        return $categories;
    }
}

