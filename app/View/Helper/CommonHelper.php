<?php
/**
 * Helper for Common
 *
 *
 */
class CommonHelper extends AppHelper {
/**
 * Included helpers.
 *
 * @var array
 */
	var $helpers = array('Html', 'Form', 'Javascript');

    function generateFaqQuestions($faq_category) {
        $html = '<h3> <a href="#'.$faq_category['FaqCategory']['slug'].'">'.$faq_category['FaqCategory']['name'].'</a></h3>';
        foreach( $faq_category['Faq'] as $faq) {

            if( $faq['status'] == 1 ) {
                $html .='<div><a href="#'.$faq['slug'].'">'.$faq['question'].'</a></div>';
            }
        }

        return $html;
    }

    function generateFaqAnswers($faq_category) {
        $html = '<h3 id="'.$faq_category['FaqCategory']['slug'].'">'.$faq_category['FaqCategory']['name'].'</h3>';
        if(!empty($faq_category['FaqCategory']['note'])){
            $html .= '<p>'.$faq_category['FaqCategory']['note'].'</p>';
        }
        foreach( $faq_category['Faq'] as $faq) {

            if( $faq['status'] == 1 ) {
                $html .='
                        <li id="'.$faq['slug'].'">'.$faq['question'].'</li>
                        <p>'.nl2br($faq['answer']).'</p>
                        ';
            }
        }

        return $html;
    }

    function shorten_string($string, $length){

        if(strlen($string)>=15){
            $length = 2;

        }else if(strlen($string)<15 and strlen($string)>=10){
            $length = 3;

        }else if(strlen($string)<10 and strlen($string)>=5){
            $length = 4;
        }else{
            $length = 5;
        }

        $retval = $string;
        $array = explode(" ", $string);
        if (count($array)<=$length){
            $words = $string;
        }else{
            array_splice($array, $length);
            $words = implode(" ", $array)." ...";
        }
        return $words;
    }

    /*
     * text limit or read more
     */
    function limit_text($text, $limit=15) {

        if (str_word_count($text, 0) > $limit) {
            $words = str_word_count($text, 2);
            $pos = array_keys($words);
            $text = substr($text, 0, $pos[$limit]) . '... <a href="#" data-toggle="tooltip" title="'.$text.'"><i class="fa fa-info fa-1"></i></a>' ;
        }
        return $text;
    }



}

