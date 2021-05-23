<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if ( ! function_exists('categroy_name'))
{
    function categroy_name($id='',$table='')
    {
	    $ci =& get_instance(); 
		$data=array('s_no'=>$id,'active_sts'=>'Y');
		$record=$ci->Mydb->get_record('main_category_name',$table,$data);	
        return $record['main_category_name'];
    }
	 
}
if ( ! function_exists('get_lang'))
{
   
	 function get_lang($lang='')
    {
	    $ci =& get_instance(); 
        return $ci->lang->line($lang);
    }    
}
if ( ! function_exists('get_template'))
{
   
	 function get_template($template='',$data='')
    {
	    $ci =& get_instance(); 
        return $ci->load->view($template,$data);
    }    
}

?>