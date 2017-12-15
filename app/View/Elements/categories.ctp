<div class="col-sm-3">
    <div class="category-position">

        <div id="product-categories" class="catagory">
            <!--<ul>
                <?php
/*                    $main_categories = $this->requestAction('categories/categories/MainCategory');
                    if($main_categories){
                        $count=count($main_categories);
                        $i=1;
                        foreach($main_categories as $main_category){
                            if(!empty($main_category['Category'])){
                        */?>
                            <li <?php /*echo ($i==$count)?'class="catagory-bac"':'' */?> ><a data-toggle="collapse" data-parent="#product-categories" href="#<?php /*echo $main_category['MainCategory']['slug'] */?>"><?php /*echo $main_category['MainCategory']['name'] */?> <i class="pull-right fa fa-angle-right"></i> </a></li>
                            <li id="<?php /*echo $main_category['MainCategory']['slug'] */?>" class="panel-collapse collapse">
                                <ul>
                                    <?php /*$c = 1 */?>
                                    <?php /*foreach($main_category['Category'] as $category){ */?>
                                    <li <?php /*echo ($c==count($main_category['Category']))?'class="catagory-bac"':'' */?> ><?php /*echo $this->Html->link($category['name'],'/products/category/'.$category['slug']) */?></li>
                                    <?php /*} */?>
                                </ul>
                            </li>
                    <?php
/*                            }
                            $i++;
                        }
                    }
                    */?>
            </ul>-->

            <ul>
                <li>
                        <a>All Category</a>

                    <ul>
                    <?php
                        $categories = $this->requestAction('categories/categories/Category');

                        if($categories){
                            foreach($categories as $category){
                                $active = '';
                                if(isset($this->params['pass'][0])){
                                    $active = ($this->params['pass'][0]==$category['Category']['slug'])?'active':'';
                                }
                                ?>
                                <li class=" <?php echo $active ?>" ><?php echo $this->Html->link($category['Category']['name'],'/products/category/'.$category['Category']['slug']) ?> </li>
                            <?php
                            }
                        }
                        ?>
                    </ul>
                </li>
            </ul>
        </div><br><br>

        <div class="left-add mobile-view">
            <a href="<?php echo $this->html->url('/')?>"><?php echo $this->Html->image('/images/home/shipping.jpg',array('alt'=>'Add','class'=>'img-responsive')) ?></a>
        </div>
    </div>
</div>