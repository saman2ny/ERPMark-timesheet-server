<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Authentication
{

		public function admin_authentication()
		{
			 $this->CI =& get_instance();
			 if($this->CI->session->userdata('isset_login')==FALSE)
			 {
			     redirect('branch');
             }

       }
}

?>