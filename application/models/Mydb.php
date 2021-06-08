<?php

if (! defined ( 'BASEPATH' ))
	exit ( 'No direct gscript access allowed' );
class Mydb extends CI_Model {
	function __construct() {
		parent::__construct ();
	}
	/* Method used to insert details into database */
	function insert($table, $data) {
		$this->db->insert ( $table, $data );
		
		return $this->db->insert_id ();
	}
	/* Method used to insert details into database */
	function insert_batch($table, $data) {
		$this->db->insert_batch ( $table, $data );
		
		return $this->db->insert_id ();
	}
	/* Method used to update details into database */
	function update($table, $where, $data) {
		$this->db->where ( $where );
		$this->db->update ( $table, $data );
		$this->db->insert_id ();
		return $this->db->affected_rows ();
	}
	/* Method used to delete details from database */
	
	function delete($table, $where) 
	{
		$this->db->where ( $where );
		$this->db->delete ( $table );
		return $this->db->affected_rows();
	}
	
	/* Method used to get single record from database */
	function get_record($select, $table, $where = null, $order = '') 
	{
		$this->db->select ( $select );
		
		if (is_array ( $order ))
		 {
			    foreach ( $order as $key => $value ) 
				{
				$this->db->order_by ( $key, $value );
		}
		}
		if ($where) {
			$this->db->where ( $where );
		}
		$query = $this->db->get ( $table, 1 );
		// echo $this->db->last_query();
		$result = $query->row_array ();
		return $result;
	}
	/* Method used to get all records from database */
	function get_all_records($select, $table, $where = null, $limit = '', $offset = '', $order = '', $like = '', $groupby = '', $join = '',$where_in='') {
		if (! empty ( $join )) {
			
			for($i = 0; $i < count ( $join ); $i ++) {
				$this->db->select ( $join [$i] ['select'] );
				$this->db->join ( $join [$i] ['table'], $join [$i] ['condition'], $join [$i] ['type'] );
			}
		}
		
		$this->db->select ( $select );
		
		if (!empty($where_in)) {
			$this->db->where_in ($where_in['field'],$where_in['where_in'] );
		}
		
		
		if ($where) {
			$this->db->where ( $where );
		}
		
		if ($groupby) {
			$this->db->group_by ( $groupby );
		}
		if (is_array ( $order )) {
			foreach ( $order as $key => $value ) {
				$this->db->order_by ( $key, $value );
			}
		}
		if (is_array ( $like )) {
			$this->db->like ( $like );
		}
		if ($limit) {
			$query = $this->db->get ( $table, $limit, $offset );
		} else {
			$query = $this->db->get ( $table );
		}
//print_r($this->db->queries);
//echo $this->db->_compile_select();exit;
		$result = $query->result_array ();
		// echo $this->db->last_query();exit;
		return $result;
	}
	
	/* Method used to get all records from database apply where in  */
	function get_all_records_where_in($select, $table , $field, $where_in) {

		$this->db->select ( $select );
		if ($where_in) {
			$this->db->where_in ($field,$where_in );
		}
	
	  $query = $this->db->get ( $table );
	
		$result = $query->result_array ();

		return $result;
	}
	
	
	/* Method used to get all records from database */
	function find_parent_record($select, $table, $where = null, $where_value = null, $where_array = null) {
		$this->db->select ( $select );
		if (! empty ( $where_array ) && is_array ( $where_array ) && $where_value != "") {
			if ($where) {
				$this->db->where ( $where );
			}
			
			$this->db->where_in ( $where_value, $where_array );
			$this->db->group_by ( $where_value );
			$query = $this->db->get ( $table );
			$result = $query->result_array ();
			
			if (! empty ( $result )) {
				$array_result = array_column ( $result, $where_value );
				$return_array = array_diff ( $where_array, $array_result );
				if (empty ( $return_array )) {
					return array ();
				} else {
					return array (
							'parent' => 'Yes',
							'where_in' => $return_array 
					);
				}
			} else {
				return array (
						'parent' => 'No',
						'where_in' => $where_array 
				);
			}
		}
		return array ();
	}
	/* Method used to get all records from product tags table from database */
	function get_all_product_tags($select, $table, $where = null,$order = '') {
		//$this->db->cache_on();
		$this->db->select ( $select );		
		$this->db->from($table);
		if ($where) {
			$this->db->where ( $where );
		}
		if (is_array ( $order )) {
			foreach ( $order as $key => $value ) {
				$this->db->order_by ( $key, $value );
			}
		}
		$query = $this->db->get();
		$result = $query->result_array ();
		// echo $this->db->last_query();exit;
		return $result;
	}
	function get_all_join_records($select, $table, $where = null, $limit = '', $offset = '', $order = '', $like = '', $groupby = '', $join = '') {
		$this->db->select ( $select );
		if ($where) {
			$this->db->where ( $where );
		}
		if ($join) {
			if (count ( $join ['table'] ) == 1) {
				$this->db->join ( $join ['table'], $join ['on'], $join ['opt'] );
			} else {
				for($i = 0; $i < count ( $join ['table'] ); $i ++) {
					$this->db->join ( $join ['table'] [$i], $join ['on'] [$i], $join ['opt'] [$i] );
				}
			}
		}
		
		if ($groupby) {
			$this->db->group_by ( $groupby );
		}
		if (is_array ( $order )) {
			foreach ( $order as $key => $value ) {
				$this->db->order_by ( $key, $value );
			}
		}
		if (is_array ( $like )) {
			$this->db->like ( $like );
		}
		if ($limit) {
			$query = $this->db->get ( $table, $limit, $offset );
		} else {
			$query = $this->db->get ( $table );
		}
		
		$result = $query->result_array ();
		// echo '<pre>';print_r($result);exit;
		// echo $this->db->last_query();exit;
		return $result;
	} 
	
	// #### get number of rows ######
	function get_num_rows($select, $table, $where, $limit = '', $offset = '', $order = '', $like = '') {
		$this->db->select ( $select );
		$this->db->where ( $where );
		if (is_array ( $order )) {
			foreach ( $order as $key => $value ) {
				$this->db->order_by ( $key, $value );
			}
		}
		if (is_array ( $like )) {
			$this->db->like ( $like );
		}
		$query = $this->db->get ( $table );
		$result = $query->num_rows ();
		// echo $this->db->last_query();exit;
		return $result;
	}
	function get_num_join_rows($select, $table, $where, $limit = '', $offset = '', $order = '', $like = '', $groupby = '', $join = '', $where_in = '') {

		if (! empty ( $join )) {
				//echo "1";
				//exit;
			for($i = 0; $i < count ( $join ); $i ++) {
				$this->db->select ( $join [$i] ['select'] );
				$this->db->join ( $join [$i] ['table'], $join [$i] ['condition'], $join [$i] ['type'] );
			}
		}
		
		$this->db->select ( $select );

		if (!empty($where_in)) {
			$this->db->where_in ($where_in['field'],$where_in['where_in'] );
		}
		
		$this->db->where ( $where );
		if (is_array ( $order )) {
			foreach ( $order as $key => $value ) {
				$this->db->order_by ( $key, $value );
			}
		}
		if ($groupby) {
			$this->db->group_by ( $groupby );
		}
		if (is_array ( $like )) {
			$this->db->like ( $like );
		}
		$query = $this->db->get ( $table );
		$result = $query->num_rows ();
		return $result;
	}
	
	
	function get_num_join_array_rows($select, $table, $where, $limit = '', $offset = '', $order = '', $like = '', $groupby = '', $join = '') {

		if ($join) {
			if (count ( $join ['table'] ) == 1) {
				$this->db->join ( $join ['table'], $join ['on'], $join ['opt'] );
			} else {
				for($i = 0; $i < count ( $join ['table'] ); $i ++) {
					$this->db->join ( $join ['table'] [$i], $join ['on'] [$i], $join ['opt'] [$i] );
				}
			}
		}
		
		$this->db->select ( $select );

		$this->db->where ( $where );
		if (is_array ( $order )) {
			foreach ( $order as $key => $value ) {
				$this->db->order_by ( $key, $value );
			}
		}
		if ($groupby) {
			$this->db->group_by ( $groupby );
		}
		if (is_array ( $like )) {
			$this->db->like ( $like );
		}
		$query = $this->db->get ( $table );
		$result = $query->num_rows ();
		return $result;
	}
	
	// ##### update record using where in #########
	function update_where_in($table, $field, $where, $data, $wherearray = '') {
		if ($wherearray) {
			$this->db->where ( $wherearray );
		}
		$this->db->where_in ( $field, $where );
		$this->db->update ( $table, $data );
		// echo $this->db->last_query();exit;
		return $this->db->affected_rows ();
	}
	
	// ##### Delete records using where in ########
	function delete_where_in($table, $field, $where, $wherearray = '') {
		if ($wherearray) {
			$this->db->where ( $wherearray );
		}
		$this->db->where_in ( $field, $where );
		$this->db->delete ( $table );
	}
	
	// ##### custom query bilder ########
	function custom_query($query) {
		if ($query != "") {
			$result = $this->db->query ( $query );
			$result_value = $result->result_array ();
			return $result_value;
		}
	}
	
	// ##### custom query bilder ########
	function custom_query_single($query) {
		if ($query != "") {
			$result = $this->db->query ( $query );
			$result_value = $result->row_array ();
			return $result_value;
		}
	}
	// ##### print value ########
	function print_query() {
		return $this->db->last_query ();
	}
	
	// #####  add additional where in  ########
	function add_additional_where_in($where_in) {
		if (!empty($where_in)) {
			$this->db->where_in ($where_in['field'],$where_in['where_in'] );
		}
	}
  
    
    
    
    
    function email_check($key)
{
    $this->db->where('emailaddress',$key);
    $query = $this->db->get('create_employee');
    if ($query->num_rows() > 0){
        return true;
    }
    else{
        return false;
    }
}
    
    


    function getMTid()
	{
        $this->db->select_max('teamid','teamid');
        $maxQuery=$this->db->get('teamlist');
        $maxMTId=$maxQuery->result();
        $maxMTId=$maxMTId[0]->teamid;
        $maxMTIdNo=preg_replace("/[^0-9\.]/",'',$maxMTId);
        $maxMTIdNo=$maxMTIdNo+1;
        $split=str_split($maxMTId,3);
        $maxMTId=$split[0].$maxMTIdNo;
        return $maxMTId;
	} 
    


    function getCEid()
	{
        $this->db->select_max('employeeid','employeeid');
        $maxQuery=$this->db->get('create_employee');
        $maxCEId=$maxQuery->result();
        $maxCEId=$maxCEId[0]->employeeid;
        $maxCEIdNo=preg_replace("/[^0-9\.]/",'',$maxCEId);
        $maxCEIdNo=$maxCEIdNo+1;
        $split=str_split($maxCEId,3);
        $maxCEId=$split[0].$maxCEIdNo;
        return $maxCEId;
	} 
    
 
    

    function getCCid()
	{
        $this->db->select_max('customerid','customerid');
        $maxQuery=$this->db->get('new');
        $maxCCId=$maxQuery->result();
        $maxCCId=$maxCCId[0]->customerid;
        $maxCCIdNo=preg_replace("/[^0-9\.]/",'',$maxCCId);
        $maxCCIdNo=$maxCCIdNo+1;
        $split=str_split($maxCCId,3);
        $maxCCId=$split[0].$maxCCIdNo;
//        var_dump($maxCCIdNo);
//        exit;
        return $maxCCId;
	} 
    
 
    
    
    
    //**********************************************************   Autocomplete Search Box  **********************************************************//
    
    
  
       
    
  
    
       function search_blog($title){
        $this->db->like('bdmname', $title , 'both');
        $this->db->order_by('bdmname', 'ASC');
        $this->db->limit(10);
        return $this->db->get('new')->result();
    } 
    
    
       
       function search_product($product){
        $this->db->like('productname', $product , 'both');
        $this->db->order_by('productname', 'ASC');
        $this->db->limit(10);
        return $this->db->get('products')->result();
    } 
    
    
   
  
            function search_follow($title, $where)
            {
                $this->db->like('customername', $title , 'both');
                                                                  
                $this->db->order_by('customername', 'ASC');
                $this->db->limit(20);
                $this->db->where($where);
                return $this->db->get('new')->result();
            } 
       
    
            function search_adminfollow($title)
            {
                $this->db->like('customername', $title , 'both');
                $this->db->order_by('customername', 'ASC');
                $this->db->limit(20);
                return $this->db->get('new')->result();
            } 
       
    
    
    
    
    
    
    
          
       function bdm_follow($title,$where)
       {
        $this->db->like('customername', $title , 'both');
        $this->db->order_by('customername', 'ASC');
        $this->db->limit(10);
           $this->db->where($where);
        return $this->db->get('new')->result();
      } 
    
    
    
       
  
    
       function search_adminemp($title,$where)
       {
        $this->db->like('firstname', $title , 'both');
        $this->db->order_by('firstname', 'ASC');
        $this->db->limit(10);
             $this->db->where($where);
        return $this->db->get('create_employee')->result();
       }
    
    
    
    
    
    
    
    
    
       function search_emp($title,$where){
        $this->db->like('firstname', $title , 'both');
        $this->db->order_by('firstname', 'ASC');
        $this->db->limit(10);
        $this->db->where($where);
        return $this->db->get('create_employee')->result();
    } 
    
    
    
       function search_createclient($title,$where)
       {
        $this->db->like('firstname', $title , 'both');
        $this->db->order_by('firstname', 'ASC');
        $this->db->limit(10);
        $this->db->where($where);
        return $this->db->get('create_employee')->result();
       } 
    
    
          
  
    
    

    
    
    
    
    
    
    
    
    
    
    //**********************************************************   Autocomplete Search Box  **********************************************************//

//    
//    function insertRecord($record){
//        
//        if(count($record) > 0){
//            
//            // Check user
//            
//            $this->db->select('*');
//            $this->db->where('username', $record[0]);
//            $q = $this->db->get('users');
//            $response = $q->result_array();
//            
//            // Insert record 
//            
//            if(count($response) == 0){
//                $newuser = array(
//                    "username" => trim($record[0]),
//                    "name" => trim($record[1]),
//                    "gender" => trim($record[2]),
//                    "email" => trim($record[3])
//                );
//
// 
//                
//                
//                $this->db->insert('users', $newuser);
//            }
//            
//        }
//        
//    }
//    
    
    
    
    
    

    
    
    function insertRecord($record){
        
        if(count($record) > 0){
            
            // Check user
            
            $this->db->select('*');
            $this->db->where('customerid', $record[0]);
            $q = $this->db->get('new');
            $response = $q->result_array();
            
            // Insert record 
            
            if(count($response) == 0){
                $newuser = array(
                    "branchname" => trim($record[0]),
                    "bdmname" => trim($record[1]),
                    "employeeid" => trim($record[2]),
                    "customerid" => trim($record[3]),
                    "sourceofcall" => trim($record[5]),
                    "jointcall" => trim($record[6]),
                    "customername" => trim($record[7]),
                    "customeraddress" => trim($record[8]),
                    "customerphoneno" => trim($record[9]),
                    "contactperson" => trim($record[10]),
                    "contactnumber" => trim($record[11]),
                    "contactdesignation" => trim($record[12]),
                    "intime" => trim($record[13]),
                    "outtime" => trim($record[14]),
                    "personcontacted" => trim($record[15]),
                    "persondescription" => trim($record[16]),
                    "producttype" => trim($record[17]),
                    "callstatus" => trim($record[18]),
                    "productname" => trim($record[19]),
                    "productvalue" => trim($record[20]),
                    "prioritystatus" => trim($record[21]),
                    "nextappointmentdate" => trim($record[22]),
                    "nextappointmenttime" => trim($record[23])
                );

 
                
                
                $this->db->insert('new', $newuser);
            }
            
        }
        
    }
//    
    

    
    
    
    
    //*****************************************  event Calendar insert   ******************************************//

	public function get_lists($table, $where = FALSE )
	{
		if ($where) {
			$this->db->where($where);
		}
		return $this->db->get($table)->result();
	}	
    
    
    
   //***************************************** BDM End  event Calendar Curd   ******************************************//
    

        public function get_follows($table, $where = FALSE )
        {
            if ($where) {
                $this->db->where($where);
            }
            return $this->db->get($table)->result();
        }	

    //***************************************** End  event Calendar Curd   ******************************************//
    
        
    
    
    
   //***************************************** get govn holiday  ******************************************//
    

        public function get_holiday($table, $where = FALSE )
        {
            if ($where) {
                $this->db->where($where);
            }
            return $this->db->get($table)->result();
        }	

    //***************************************** End  get govn holiday   ******************************************//
    
        
    
    
   //***************************************** get leave  ******************************************//
    

        public function get_leave($table, $where = FALSE )
        {
            if ($where) {
                $this->db->where($where);
            }
            return $this->db->get($table)->result();
        }	

    //***************************************** End  get leave  ******************************************//
    
    
        
    
   //***************************************** Get New   ******************************************//
    
        public function get_new($table, $where = FALSE )
        {
            if ($where) {
                $this->db->where($where);
            }
            return $this->db->get($table)->result();
        }	

    //***************************************** End  get leave  ******************************************//
    
    
         
    
   //***************************************** Get Meeting   ******************************************//
    
        public function get_meeting($table, $where = FALSE )
        {
            if ($where) {
                $this->db->where($where);
            }
            return $this->db->get($table)->result();
        }	

    //***************************************** Get Meeting  ******************************************//
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //***************************************** chart  ******************************************//
    //***************************************** chart  ******************************************//
    //***************************************** chart  ******************************************//
   
    
   
//      
//       function get_pin($title,$where)
//       {
//            $this->db->where('date >=', '2019-08-01');
//            $this->db->where('date <=', '2019-08-05');
//            return $this->db->get('follow')->result();
//       } 

    
    
//    $this->db->where("id BETWEEN 100 AND 200");
    
    
    
    
    
    
    function get_total_records($select, $table, $where = null, $limit = '', $offset = '', $order = '', $like = '', $groupby = '', $join = '',$where_in='', $sum='') {
		if (! empty ( $join )) {
			
			for($i = 0; $i < count ( $join ); $i ++) {
				$this->db->select ( $join [$i] ['select'] );
				$this->db->join ( $join [$i] ['table'], $join [$i] ['condition'], $join [$i] ['type'] );
			}
		}
		
		$this->db->select ( $select );
		
		if (!empty($where_in)) {
			$this->db->where_in ($where_in['field'],$where_in['where_in'] );
		}
		
		
		if ($sum) 
        {
          $this->db->sum($sum);
		}
        
        if ($where) {
			$this->db->where ( $where );
		}
		
		if ($groupby) {
			$this->db->group_by ( $groupby );
		}
		if (is_array ( $order )) {
			foreach ( $order as $key => $value ) {
				$this->db->order_by ( $key, $value );
			}
		}
		if (is_array ( $like )) {
			$this->db->like ( $like );
		}
		if ($limit) {
			$query = $this->db->get ( $table, $limit, $offset );
		} else {
			$query = $this->db->get ( $table );
		}
print_r($this->db->queries);
//echo $this->db->_compile_select();exit;
		$result = $query->result_array ();
		// echo $this->db->last_query();exit;
		return $result;
	}
    
    
    

    //*************************************************************   BDM *****************************************************************
    //*************************************************************   BDM *****************************************************************
    //*************************************************************   BDM *****************************************************************
    
    
    
       function remainder($employeeid)
       {
            $yearStartDate = date('Y-m-d');
            $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';
            $this->db->select('customername,customeraddress,prioritystatus,callstatus,appointmentdate,customerphoneno,customerid', FALSE);
           $this->db->where('employeeid', $employeeid);
            $this->db->where('appointmentdate >=', $yearStartDate);
            $this->db->where('appointmentdate <=', $yearEndDate);
            $this->db->order_by('appointmentdate', 'ASC');  
            return $this->db->get('follow')->result();
      } 
    
        
    
       function getleavestatus($employeeid)
       {
             $yearStartDate =date('2019-04-01');
            $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';
            $this->db->select('bdmid,firstname,branchname,noofleave,startdate,enddate,leavetype,approvelstatus,date', FALSE);
            $this->db->where('bdmid', $employeeid);
            $this->db->where('date >=', $yearStartDate);
            $this->db->where('date <=', $yearEndDate);
            $this->db->order_by('id', 'ASC');  
            return $this->db->get('leave')->result();
       } 
    
	        
    
//       function getpristatus($bdmid,$branchname)
//       {
//           
//            $this->db->select('customerid,branchname,bdmname,callcreate,sourceofcall,jointcall,customername,customeraddress,customerphoneno,contactperson,contactnumber,contactdesignation,intime,outtime,personcontacted,persondescription,producttype,callstatus,productname,productvalue,prioritystatus,nextappointmentdate,nextappointmenttime,previouscallkms,fromplace,toplace,conveyancemode,amount,del_status,created_on,lastviewdate', FALSE);
//            $this->db->where('employeeid', $bdmid);
//		   
//		   
//            $this->db->where('branchname', $branchname);
//            $this->db->order_by('created_on', 'DESC');  
//            return $this->db->get('new')->result();
//       } 
//    
	
	

	
	
	
	
	
	
	
	
    
//       $this->db->order_by('total','DESC');
    
    
    
    //*************************************************************   BDM *****************************************************************
    //*************************************************************   BDM *****************************************************************
    //*************************************************************   BDM *****************************************************************
    
    
    
    
    
        
    
    //*************************************************************   BDM  Dashboard  *****************************************************************
    //*************************************************************   BDM  Dashboard  *****************************************************************
    //*************************************************************   BDM  Dashboard  *****************************************************************
    
    
    
        
    
    
 public function monthlyRankdash($branch)
 {      
        $monthStartDate = date('Y-m-01');
        $monthEndDate = date('Y-m-t');
        $this->db->select('employeeid,bdmname, SUM(productvalue) AS total', FALSE);
        $this->db->where('created_on >=', $monthStartDate);
        $this->db->where('created_on <=', $monthEndDate);
        $this->db->where('branchname', $branch);
        $this->db->group_by("employeeid");
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
	 
//	 var_dump($query);
//	 exit;
	 
        return $targetAchived;
 }
         
        
    
    
 public function monthlyRankdashemp($branch)
 {      
        $this->db->where('branchname', $branch);
	 $this->db->select('employeeid', FALSE);
        $this->db->group_by("employeeid");
        $query = $this->db->get('new');
        $targetAchived = $query->result();
	 
//	 var_dump($targetAchived);
//	 exit;
	 
        return $targetAchived;
 }
            
    
    
 public function monthlycalldash($branch){
     
        $monthStartDate = date('Y-m-01');
        $monthEndDate = date('Y-m-t');
        $this->db->select('employeeid,bdmname, SUM(count_status) AS total', FALSE);
        $this->db->where('created_on >=', $monthStartDate);
        $this->db->where('created_on <=', $monthEndDate);
        $this->db->where('branchname', $branch);
        $this->db->group_by("employeeid");
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();

     
//        var_dump($targetAchived);
//        exit; 
//     
     
     
     return $targetAchived;
 }
    
         
    
 public function monthlyproductdash($branch){
     
        $monthStartDate = date('Y-m-01');
        $monthEndDate = date('Y-m-t');
        $this->db->select('productname, SUM(count_status) AS total', FALSE);
        $this->db->where('branchname', $branch);
        $this->db->where('callstatus', 'Sign Up');
        $this->db->where('created_on >=', $monthStartDate);
        $this->db->where('created_on <=', $monthEndDate);
        $this->db->group_by("productname");
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();

     
     return $targetAchived;
 }
            
    
 public function monthlyprioritydash($branch){
     
        $this->db->select('prioritystatus, SUM(count_status) AS total', FALSE);
        $this->db->where('branchname', $branch);
        $this->db->where('callstatus!=', 'Sign Up');
        $this->db->group_by("prioritystatus");
        $this->db->order_by('prioritystatus','ASC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
	 
//	 var_dump($targetAchived);
//	 exit;
	 
     
     return $targetAchived;
 }
    
//            
//    
// public function monthlyprioritydash($branch){
//     
//        $monthStartDate = date('Y-m-01');
//        $monthEndDate = date('Y-m-t');
//        $this->db->select('prioritystatus, SUM(count_status) AS total', FALSE);
//        $this->db->where('branchname', $branch);
//        $this->db->where('created_on >=', $monthStartDate);
//        $this->db->where('created_on <=', $monthEndDate);
//        $this->db->group_by("prioritystatus");
//        $this->db->order_by('total','DESC');
//        $query = $this->db->get('new');
//        $targetAchived = $query->result();
//
//     
//     return $targetAchived;
// }
//    

	
	
	
 	
	
 public function yearlyproductdash($branch)
 {
//        $yearStartDate =date('2019-04-01');
	 
	 	$yearStartDate = date('2019-04-01');
	 
        $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';
        $this->db->select('id,productname,month, SUM(productvalue) AS total', FALSE);
        $this->db->where('branchname', $branch);
        $this->db->where('callstatus', 'Sign Up');
        $this->db->where('created_on >=', $yearStartDate);
        $this->db->where('created_on <=', $yearEndDate);
        $this->db->group_by("productname");
        $this->db->group_by("month");
        $this->db->order_by('created_on','ASC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
 	return $targetAchived;
	 
 }
	
	 	
	
 public function yearlyyttdash($branch)
 {
//        $yearStartDate =date('2019-04-01');
	 
	 		$yearStartDate = date('2019-04-01');
	 
        $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';
        $this->db->select('id,employeeid,bdmname,month, SUM(productvalue) AS total', FALSE);
        $this->db->where('branchname', $branch);
        $this->db->where('created_on >=', $yearStartDate);
        $this->db->where('created_on <=', $yearEndDate);
        $this->db->group_by("employeeid");
        $this->db->group_by("month");
        $this->db->order_by('created_on','ASC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
 		return $targetAchived;
	 
 }
		 	
	
 public function yearlycalldash($branch)
 {
//        $yearStartDate =date('2019-04-01');
	 
	 	$yearStartDate = date('2019-04-01');
	 
        $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';
        $this->db->select('id,employeeid,bdmname,month, SUM(count_status) AS total', FALSE);
	 	$this->db->where('branchname', $branch);
        $this->db->where('created_on >=', $yearStartDate);
        $this->db->where('created_on <=', $yearEndDate);
        $this->db->group_by("employeeid");
        $this->db->group_by("month");
        $this->db->order_by('created_on','ASC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
	
	 
 		return $targetAchived;
	 
 }
	
	
 	
	

	
 	


 	

	
	
    	

        
    
    //*************************************************************  END BDM Dashboard  *****************************************************************
    //*************************************************************  END BDM Dashboard  *****************************************************************
    //*************************************************************  END BDM Dashboard  *****************************************************************
    
    
    
    
    
         
    
    //*************************************************************   Admin  Dashboard  *****************************************************************
    //*************************************************************   Admin  Dashboard  *****************************************************************
    //*************************************************************   Admin  Dashboard  *****************************************************************
    
    
    
        
    
    
 public function monthlyRankdashadmin(){
    
        $monthStartDate = date('Y-m-01');
        $monthEndDate = date('Y-m-t');
        $this->db->select('employeeid,bdmname, SUM(productvalue) AS total', FALSE);
        $this->db->where('created_on >=', $monthStartDate);
        $this->db->where('created_on <=', $monthEndDate);
        $this->db->group_by("employeeid");
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
	 
        return $targetAchived;
 }
            
    
    
 public function monthlycalldashadmin(){
     
        $monthStartDate = date('Y-m-01');
        $monthEndDate = date('Y-m-t');
        $this->db->select('employeeid,bdmname, SUM(count_status) AS total', FALSE);
        $this->db->where('created_on >=', $monthStartDate);
        $this->db->where('created_on <=', $monthEndDate);
        $this->db->group_by("employeeid");
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();

     	return $targetAchived;
 }
    
         
    
 public function monthlyproductdashadmin(){
     
        $monthStartDate = date('Y-m-01');
        $monthEndDate = date('Y-m-t');
        $this->db->select('productname, SUM(count_status) AS total', FALSE);
        $this->db->where('callstatus', 'Sign Up');
        $this->db->where('created_on >=', $monthStartDate);
        $this->db->where('created_on <=', $monthEndDate);
        $this->db->group_by("productname");
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();

	 	return $targetAchived;
 }
            
    
 public function monthlyprioritydashadmin(){
     
//        $yearStartDate =date('2019-04-01');
//        $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';
        $this->db->select('prioritystatus, SUM(count_status) AS total', FALSE);
	 	$this->db->where('callstatus!=', 'Sign Up');
//        $this->db->where('created_on >=', $yearStartDate);
//        $this->db->where('created_on <=', $yearEndDate);
        $this->db->group_by("prioritystatus");
        $this->db->order_by('prioritystatus','ASC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();

        return $targetAchived;
 }
    
              
    
        
    
     public function momdashadmin()
     {
//            $yearStartDate =date('2019-04-01');
		 
		 	$yearStartDate = date('2019-04-01');
		 
        	$yearEndDate = date('Y', strtotime('+1 year')).'-03-31';
            $this->db->select('id,month, SUM(productvalue) AS total', FALSE);
            $this->db->where('created_on >=', $yearStartDate);
            $this->db->where('created_on <=', $yearEndDate);
            $this->db->group_by("month");
            $this->db->order_by('created_on','ASC');
            $query = $this->db->get('new');
            $targetAchived = $query->result();
    
            return $targetAchived;
     }
     
            
  
        
 public function monthlybranchdashadmin(){
    
        $monthStartDate = date('Y-m-01');
        $monthEndDate = date('Y-m-t');
        $this->db->select('branchname, SUM(productvalue) AS total', FALSE);
        $this->db->where('created_on >=', $monthStartDate);
        $this->db->where('created_on <=', $monthEndDate);
        $this->db->group_by("branchname");
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();

        return $targetAchived;
 }
    
    
	
	 public function yearlyyttadmin()
 {
//        $yearStartDate =date('2019-04-01');
		 
	    $yearStartDate = date('2019-04-01');
		 
        $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';
        $this->db->select('id,employeeid,bdmname,month, SUM(productvalue) AS total', FALSE);
        $this->db->where('created_on >=', $yearStartDate);
        $this->db->where('created_on <=', $yearEndDate);
        $this->db->group_by("employeeid");
        $this->db->group_by("month");
        $this->db->order_by('created_on','ASC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();

 		return $targetAchived;
		 

		 
		 
		 
		 
		 
		 
	 
 }
	
	
 public function yearlycalldashadmin()
 {
//        $yearStartDate =date('2019-04-01');
	 
	 	$yearStartDate = date('2019-04-01');
	 
        $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';
        $this->db->select('id,employeeid,bdmname,month, SUM(count_status) AS total', FALSE);
        $this->db->where('created_on >=', $yearStartDate);
        $this->db->where('created_on <=', $yearEndDate);
        $this->db->group_by("employeeid");
        $this->db->group_by("month");
        $this->db->order_by('created_on','ASC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
 		return $targetAchived;
	 
 }
	
		
		 public function yearlyproductadmin()
		 {
//				$yearStartDate =date('2019-04-01');
			 
			 	$yearStartDate = date('2019-04-01');
			 
				$yearEndDate = date('Y', strtotime('+1 year')).'-03-31';
				$this->db->select('id,productname,month, SUM(productvalue) AS total', FALSE);
				$this->db->where('callstatus', 'Sign Up');
				$this->db->where('created_on >=', $yearStartDate);
				$this->db->where('created_on <=', $yearEndDate);
				$this->db->group_by("productname");
				$this->db->group_by("month");
				$this->db->order_by('created_on','ASC');
				$query = $this->db->get('new');
				$targetAchived = $query->result();
			return $targetAchived;

		 }
	
	
	
			
		 public function yearlybranchadmin()
		 {
//				$yearStartDate =date('2019-04-01');
			 
			 	$yearStartDate = date('2019-04-01');
			 
				$yearEndDate = date('Y', strtotime('+1 year')).'-03-31';
				$this->db->select('id,branchname,month, SUM(productvalue) AS total', FALSE);
				$this->db->where('callstatus', 'Sign Up');
				$this->db->where('created_on >=', $yearStartDate);
				$this->db->where('created_on <=', $yearEndDate);
				$this->db->group_by("branchname");
				$this->db->group_by("month");
				$this->db->order_by('created_on','ASC');
				$query = $this->db->get('new');
				$targetAchived = $query->result();
			return $targetAchived; 

		 }
	
		
			
		 public function yearlyprospectsadmin()
		 {
//				$yearStartDate =date('2019-04-01');
//				$yearEndDate = date('Y', strtotime('+1 year')).'-03-31';
				$this->db->select('id,prioritystatus,branchname, SUM(count_status) AS total', FALSE);
			 	$this->db->where('callstatus!=', 'Sign Up');
//				$this->db->where('created_on >=', $yearStartDate);
//				$this->db->where('created_on <=', $yearEndDate);
				$this->db->group_by("prioritystatus");
				$this->db->group_by("branchname");
				$this->db->order_by('id','ASC');
				$query = $this->db->get('new');
				$targetAchived = $query->result();
			return $targetAchived; 

		 }
	
	
	
	
	
	
	
   
    
    //*************************************************************  END Admin Dashboard  *****************************************************************
    //*************************************************************  END Admin Dashboard  *****************************************************************
    //*************************************************************  END Admin Dashboard  *****************************************************************
	//*************************************************************  END Admin Dashboard  *****************************************************************
    //*************************************************************  END Admin Dashboard  *****************************************************************
    
    

     
    
	 /***********GET EMPLOYEE DETAILS *******/
	 public function findBranch($id){
	 $this->db->select('selectbranch');
	 $this->db->where('employeeid',$id);
	 $query = $this->db->get('create_employee');
	 return $query->row(0)->selectbranch;
	 }
	 public function empCount(){
		 $this->db->where('select', 'Sales');
	 $query = $this->db->get('create_employee');
	 return $query->num_rows();
	 }
	 public function empBranchCount($branch){
	 $this->db->where('selectbranch',$branch);
		  $this->db->where('select', 'Sales');
	 $query = $this->db->get('create_employee');
	 return $query->num_rows();
	 }
    
    
    
    
 public function monthlyTargetAchived($id)
 {
        $monthStartDate = date('Y-m-01');
        $monthEndDate = date('Y-m-t');

        $this->db->select('SUM(productvalue) AS total', FALSE);
        $this->db->where('callstatus','Sign Up');
        $this->db->where('employeeid', $id);
        $this->db->where('created_on >=', $monthStartDate);
        $this->db->where('created_on <=', $monthEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '--';
 }
     
 }
    
        
  
   
 public function yearlyTargetAchived($id){
 $yearStartDate =date('2019-04-01');
 $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';

        $this->db->select('SUM(productvalue) AS total', FALSE);
        $this->db->where('callstatus','Sign Up');
        $this->db->where('employeeid', $id);
        $this->db->where('created_on >=', $yearStartDate);
        $this->db->where('created_on <=', $yearEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
// 
// var_dump($targetAchived);
// exit;  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
   
}
 

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '--';
 }
     
 }
    
        

    
    
    
    
    
    
    
    
    
    
    
    
//    
//   public function monthlyTargetAchived($id){
//       $monthStartDate = date('Y-m-01');
//       $monthEndDate = date('Y-m-t'); 
//       $this->db->where('callstatus','Sign Up'); 
//       $this->db->where('employeeid', $id);
//       $this->db->where('created_on >=', $monthStartDate); 
//       $this->db->where('created_on <=', $monthEndDate);
//        $query = $this->db->get(' new ');
//        $targetAchived = $query->num_rows();
//        return $targetAchived;
//         } 
    

    
    
    
// public function yearlyTargetAchived($id){
// $yearStartDate =date('2019-04-01');
// $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';
//$this->db->select('employeeid, SUM(productvalue) AS total', FALSE);
//$this->db->where('callstatus','Sign Up');
//$this->db->where('employeeid', $id);
//$this->db->where('created_on >=', $yearStartDate);
//$this->db->where('created_on <=', $yearEndDate);
//$query = $this->db->get('new');
//$targetAchived = $query->num_rows();
//return $targetAchived;
//     
//     
//     
// }
//    

    

    
       
    //********************* Overall  monthly Rank   *************************************//
    //********************* Overall  monthly Rank   *************************************//
    
    
    
 public function monthlyRankOverall($id){
 $monthStartDate = date('Y-m-01');
 $monthEndDate = date('Y-m-t');
 $this->db->select('employeeid, SUM(productvalue) AS total', FALSE);
 $this->db->where('created_on >=', $monthStartDate);
 $this->db->where('created_on <=', $monthEndDate);
 $this->db->group_by("employeeid");
 $this->db->order_by('total','DESC');
 $query = $this->db->get('new');
$targetAchived = $query->result();
    
     
     
$results = [];
     
$i=1;
foreach ($targetAchived as $k) {
$results[$k->employeeid]['employeeid'] = $k->employeeid;
$results[$k->employeeid]['total'] = $k->total;
$results[$k->employeeid]['rank'] = $i;
$i++;

}
 
//	 var_dump($results);
//	 exit;
//	 

 if(isset($results[$id]['rank'])){
 return $results[$id]['rank'];
 }else{
 return '--';
 }
 }
    
    
    
    
    
    //*********************   Overall  yearly Rank  *************************************//
    //*********************   Overall  yearly Rank  *************************************//
    
    
    
 public function yearlyRankOverall($id){
 $yearStartDate =date('2019-04-01');
 $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';
 $this->db->select('employeeid, SUM(productvalue) AS total', FALSE);
 $this->db->where('created_on >=', $yearStartDate);
 $this->db->where('created_on <=', $yearEndDate);
 $this->db->group_by("employeeid");
 $this->db->order_by('total','DESC');
 $query = $this->db->get('new');
$targetAchived = $query->result();
     
//    var_dump($targetAchived);
// exit;  
//     
   
$results = [];
$i=1;
foreach ($targetAchived as $k) {
$results[$k->employeeid]['employeeid'] = $k->employeeid;
$results[$k->employeeid]['total'] = $k->total;
$results[$k->employeeid]['rank'] = $i;
$i++;
}
	 
	 
      
	 
	 
if(isset($results[$id]['rank'])){
 return $results[$id]['rank'];
 }else{
 return '--';
 }
 }
    
    
    
    
    
    
   
    //*********************   monthly  Rank Branch  *************************************//
    //*********************   monthly Rank Branch  *************************************//
     
    
    
    
    
    
 public function monthlyRankBranch($id,$branch){
 $monthStartDate = date('Y-m-01');
 $monthEndDate = date('Y-m-t');
 $this->db->select('employeeid, SUM(productvalue) AS total', FALSE);
 $this->db->where('created_on >=', $monthStartDate);
 $this->db->where('created_on <=', $monthEndDate);
 $this->db->where('branchname', $branch);
 $this->db->group_by("employeeid");
 $this->db->order_by('total','DESC');
 $query = $this->db->get('new');
$targetAchived = $query->result();
     
     
   
     
     
$results = [];
$i=1;
foreach ($targetAchived as $k) {
$results[$k->employeeid]['employeeid'] = $k->employeeid;
$results[$k->employeeid]['total'] = $k->total;
$results[$k->employeeid]['rank'] = $i;
$i++;
}
     
     
     
     
if(isset($results[$id]['rank'])){
 return $results[$id]['rank'];
 }else{
 return '--';
 }
 }
    
    
    
    
    
    
  //*********************   yearly   Rank  Branch  *************************************//
    //*********************  yearly   Rank  Branch  *************************************//
     
      
    
    
 public function yearlyRankBranch($id,$branch){
 $yearStartDate =date('2019-04-01');
 $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';
 $this->db->select('employeeid, SUM(productvalue) AS total', FALSE);
 $this->db->where('created_on >=', $yearStartDate);
 $this->db->where('created_on <=', $yearEndDate);
 $this->db->where('branchname', $branch);
 $this->db->group_by("employeeid");
 $this->db->order_by('total','DESC');
 $query = $this->db->get('new');
$targetAchived = $query->result();
     
//        var_dump($targetAchived);
//        exit;
     
     
     
     
$results = [];
$i=1;
foreach ($targetAchived as $k) {
$results[$k->employeeid]['employeeid'] = $k->employeeid;
$results[$k->employeeid]['total'] = $k->total;
$results[$k->employeeid]['rank'] = $i;
$i++;
}
if(isset($results[$id]['rank'])){
 return $results[$id]['rank'];
 }else{
 return '--';
 }
 }


    
    
    
    
//  *********************************************************************************************
        //  **********************month total target and actual*************************
//  *********************************************************************************************
    
    
     public function monthlyAprilAchived($id)
 {
        $yearStartDate =date('2019-04-01');
 $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';

        $this->db->select('SUM(productvalue) AS total', FALSE);
        $this->db->where('callstatus','Sign Up');
        $this->db->where('month','April');
        $this->db->where('employeeid', $id);
        $this->db->where('created_on >=', $yearStartDate);
        $this->db->where('created_on <=', $yearEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
    
       
     public function monthlyMayAchived($id)
 {
        $yearStartDate =date('2019-04-01');
 $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';

        $this->db->select('SUM(productvalue) AS total', FALSE);
        $this->db->where('callstatus','Sign Up');
        $this->db->where('month','May');
        $this->db->where('employeeid', $id);
        $this->db->where('created_on >=', $yearStartDate);
        $this->db->where('created_on <=', $yearEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
    
    
    
          
     public function monthlyJuneAchived($id)
 {
        $yearStartDate =date('2019-04-01');
 $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';

        $this->db->select('SUM(productvalue) AS total', FALSE);
        $this->db->where('callstatus','Sign Up');
        $this->db->where('month','June');
        $this->db->where('employeeid', $id);
        $this->db->where('created_on >=', $yearStartDate);
        $this->db->where('created_on <=', $yearEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
    
    
    
          
     public function monthlyJulyAchived($id)
 {
        $yearStartDate =date('2019-04-01');
 $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';

        $this->db->select('SUM(productvalue) AS total', FALSE);
        $this->db->where('callstatus','Sign Up');
        $this->db->where('month','July');
        $this->db->where('employeeid', $id);
        $this->db->where('created_on >=', $yearStartDate);
        $this->db->where('created_on <=', $yearEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
        
          
     public function monthlyAugustAchived($id)
 {
        $yearStartDate =date('2019-04-01');
 $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';

        $this->db->select('SUM(productvalue) AS total', FALSE);
        $this->db->where('callstatus','Sign Up');
        $this->db->where('month','August');
        $this->db->where('employeeid', $id);
        $this->db->where('created_on >=', $yearStartDate);
        $this->db->where('created_on <=', $yearEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
         
         
       
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
            
 
    
    
     public function monthlySeptemberAchived($id)
 {
        $yearStartDate =date('2019-04-01');
 $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';

        $this->db->select('SUM(productvalue) AS total', FALSE);
        $this->db->where('callstatus','Sign Up');
        $this->db->where('month','September');
        $this->db->where('employeeid', $id);
        $this->db->where('created_on >=', $yearStartDate);
        $this->db->where('created_on <=', $yearEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
    
        
    
     public function monthlyOctoberAchived($id)
 {
        $yearStartDate =date('2019-04-01');
 $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';

        $this->db->select('SUM(productvalue) AS total', FALSE);
        $this->db->where('callstatus','Sign Up');
        $this->db->where('month','October');
        $this->db->where('employeeid', $id);
        $this->db->where('created_on >=', $yearStartDate);
        $this->db->where('created_on <=', $yearEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
    
       
        
    
     public function monthlyNovemberAchived($id)
 {
        $yearStartDate =date('2019-04-01');
 $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';

        $this->db->select('SUM(productvalue) AS total', FALSE);
        $this->db->where('callstatus','Sign Up');
        $this->db->where('month','November');
        $this->db->where('employeeid', $id);
        $this->db->where('created_on >=', $yearStartDate);
        $this->db->where('created_on <=', $yearEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
    
        
        
    
     public function monthlyDecemberAchived($id)
 {
        $yearStartDate =date('2019-04-01');
 $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';

        $this->db->select('SUM(productvalue) AS total', FALSE);
        $this->db->where('callstatus','Sign Up');
        $this->db->where('month','December');
        $this->db->where('employeeid', $id);
        $this->db->where('created_on >=', $yearStartDate);
        $this->db->where('created_on <=', $yearEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
    
          
    
     public function monthlyJanuaryAchived($id)
 {
        $yearStartDate =date('2019-04-01');
 $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';

        $this->db->select('SUM(productvalue) AS total', FALSE);
        $this->db->where('callstatus','Sign Up');
        $this->db->where('month','January');
        $this->db->where('employeeid', $id);
        $this->db->where('created_on >=', $yearStartDate);
        $this->db->where('created_on <=', $yearEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }          
    
    
     public function monthlyFebruaryAchived($id)
 {
        $yearStartDate =date('2019-04-01');
 $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';

        $this->db->select('SUM(productvalue) AS total', FALSE);
        $this->db->where('callstatus','Sign Up');
        $this->db->where('month','February');
        $this->db->where('employeeid', $id);
        $this->db->where('created_on >=', $yearStartDate);
        $this->db->where('created_on <=', $yearEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
       
    
     public function monthlyMarchAchived($id)
 {
        $yearStartDate =date('2019-04-01');
 $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';

        $this->db->select('SUM(productvalue) AS total', FALSE);
        $this->db->where('callstatus','Sign Up');
        $this->db->where('month','March');
        $this->db->where('employeeid', $id);
        $this->db->where('created_on >=', $yearStartDate);
        $this->db->where('created_on <=', $yearEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
    
        
        public function monthlytotalsignup($id)
			 {
				   $monthStartDate = date('Y-m-01');
				   $monthEndDate = date('Y-m-t'); 
					$this->db->select('employeeid,bdmname, SUM(count_status) AS total', FALSE);
				   $this->db->where('callstatus','Sign Up'); 
				   $this->db->where('employeeid', $id);
				   $this->db->where('created_on >=', $monthStartDate); 
				   $this->db->where('created_on <=', $monthEndDate);
				   $this->db->order_by('total','DESC');
					$query = $this->db->get(' new ');
					$targetAchived = $query->result();

			$results = [];

			foreach ($targetAchived as $k) {
			$results['total'] = $k->total;

			}

			 if(isset($results['total'])){
			 return $results['total'];
			 }else{
			 return '0';
			 }

			 }
	
    
    
    
      
//  *********************************************************************************************
    //  ********************** month  and year total leaves details *************************
//  *********************************************************************************************
      
    
    
    
    
    
    
        public function monthlySickleave($id)
 {
       $monthStartDate = date('Y-m-01');
 $monthEndDate = date('Y-m-t');

        $this->db->select('SUM(leavestatus) AS total', FALSE);
        $this->db->where('bdmid', $id);
        $this->db->where('Approvelstatus', 'Approved');
        $this->db->where('date >=', $monthStartDate);
        $this->db->where('date <=', $monthEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('leave');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
    
        
    
        public function monthlyannualleave()
 {
       $monthStartDate = date('Y-m-01');
 $monthEndDate = date('Y-m-t');

        $this->db->select('SUM(active_status) AS total', FALSE);
        $this->db->where('start_date >=', $monthStartDate);
        $this->db->where('start_date <=', $monthEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('createleave');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
        
        public function monthlytraningleave($id)
 {
       $monthStartDate = date('Y-m-01');
       $monthEndDate = date('Y-m-t');
        $this->db->where('bdmid', $id);
        $this->db->select('SUM(activestatus) AS total', FALSE);
        $this->db->where('date >=', $monthStartDate);
        $this->db->where('date <=', $monthEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('meeting');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
    
           
        public function monthlycuscountmonth($id)
 {
       $monthStartDate = date('Y-m-01');
       $monthEndDate = date('Y-m-t');
        $this->db->select('customername,SUM(count_status) AS total', FALSE);
        $this->db->where('employeeid', $id);
        $this->db->where('created_on >=', $monthStartDate);
        $this->db->where('created_on <=', $monthEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }    
           
        public function monthlyfollowcount($id)
 {
       $monthStartDate = date('Y-m-01');
       $monthEndDate = date('Y-m-t');
        $this->db->select('customername,SUM(activestatus) AS total', FALSE);
        $this->db->where('employeeid', $id);
        $this->db->where('date >=', $monthStartDate);
        $this->db->where('date <=', $monthEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('follow');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
    
    
    
            
        public function monthlydemocallcount($id)
 {
       $monthStartDate = date('Y-m-01');
       $monthEndDate = date('Y-m-t');
        $this->db->select('SUM(count_status) AS total', FALSE);
        $this->db->where('employeeid', $id);
        $this->db->where('callstatus', 'Demo Call');
        $this->db->where('created_on >=', $monthStartDate);
        $this->db->where('created_on <=', $monthEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
    
    
    
    
             
        public function monthlyProposalcallcount($id)
 {
       $monthStartDate = date('Y-m-01');
       $monthEndDate = date('Y-m-t');
        $this->db->select('SUM(count_status) AS total', FALSE);
        $this->db->where('employeeid', $id);
        $this->db->where('callstatus', 'Proposal Call');
        $this->db->where('created_on >=', $monthStartDate);
        $this->db->where('created_on <=', $monthEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
    
    
             
        public function monthlyleavestatuscount($id)
 {
       $monthStartDate = date('Y-m-01');
       $monthEndDate = date('Y-m-t');
        $this->db->select('SUM(noofleave) AS total', FALSE);
        $this->db->where('bdmid', $id);
        $this->db->where('approvelstatus', 'Approved');
        $this->db->where('date >=', $monthStartDate);
        $this->db->where('date <=', $monthEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('leave');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
	
	
	
	
	      
//  *********************************************************************************************
    //  ********************** Year overview  total leaves details *************************
//  *********************************************************************************************
      
    
	

    
        public function yearannualleave($id)
 {
       $yearStartDate = date('2019-04-01');
	   $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';

       $this->db->select('SUM(active_status) AS total', FALSE);
        $this->db->where('start_date >=', $yearStartDate);
        $this->db->where('start_date <=', $yearEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('createleave');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }    
    
    
    
     
    
        public function yearsickleave($id)
 {
       $yearStartDate =date('2019-04-01');
	   $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';

        $this->db->select('SUM(leavestatus) AS total', FALSE);
        $this->db->where('bdmid', $id);
        $this->db->where('Approvelstatus', 'Approved');
        $this->db->where('date >=', $yearStartDate);
        $this->db->where('date <=', $yearEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('leave');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }   
    
    
    
    
         
    
        public function yeartraningdays($id)
 {
        $yearStartDate =date('2019-04-01');
	   $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';

        $this->db->where('bdmid', $id);
        $this->db->select('SUM(activestatus) AS total', FALSE);
        $this->db->where('date >=', $yearStartDate);
        $this->db->where('date <=', $yearEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('meeting');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
    
    
    
    
    

				public function yearnoofcalls($id)
		 {
			   $yearStartDate =date('2019-04-01');
	   		   $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';
				$this->db->select('customername,SUM(count_status) AS total', FALSE);
				$this->db->where('employeeid', $id);
				$this->db->where('created_on >=', $yearStartDate);
				$this->db->where('created_on <=', $yearEndDate);
				$this->db->order_by('total','DESC');
				$query = $this->db->get('new');
				$targetAchived = $query->result();

		$results = [];

		foreach ($targetAchived as $k) {
		$results['total'] = $k->total;

		}

		 if(isset($results['total'])){
		 return $results['total'];
		 }else{
		 return '0';
		 }

		 }  
    
    
    
	           
        public function yearfollowcount($id)
 {
	$yearStartDate =date('2019-04-01');
	$yearEndDate = date('Y', strtotime('+1 year')).'-03-31';
			
        $this->db->select('customername,SUM(activestatus) AS total', FALSE);
        $this->db->where('employeeid', $id);
        $this->db->where('date >=', $yearStartDate);
        $this->db->where('date <=', $yearEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('follow');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
    
	
	
	    
            
        public function yeardemocallcount($id)
 {
       $yearStartDate =date('2019-04-01');
	   $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';
			
        $this->db->select('SUM(count_status) AS total', FALSE);
        $this->db->where('employeeid', $id);
        $this->db->where('callstatus', 'Demo Call');
        $this->db->where('created_on >=', $yearStartDate);
        $this->db->where('created_on <=', $yearEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
    
	
	
	
	  
             
        public function yearproposalcount($id)
 {
       $yearStartDate =date('2019-04-01');
	   $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';
			
        $this->db->select('SUM(count_status) AS total', FALSE);
        $this->db->where('employeeid', $id);
        $this->db->where('callstatus', 'Proposal Call');
        $this->db->where('created_on >=', $yearStartDate);
        $this->db->where('created_on <=', $yearEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('new');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
    
    
        public function yearleavestatuscount($id)
 {
        $yearStartDate =date('2019-04-01');
	    $yearEndDate = date('Y', strtotime('+1 year')).'-03-31';
			
        $this->db->select('SUM(noofleave) AS total', FALSE);
        $this->db->where('bdmid', $id);
        $this->db->where('approvelstatus', 'Approved');
        $this->db->where('date >=', $yearStartDate);
        $this->db->where('date <=', $yearEndDate);
        $this->db->order_by('total','DESC');
        $query = $this->db->get('leave');
        $targetAchived = $query->result();
  
$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
	  
	
	
	    
    
        public function yearlytotalsignup($id)
 {
			$yearStartDate =date('2019-04-01');
			$yearEndDate = date('Y', strtotime('+1 year')).'-03-31';
			$this->db->select('employeeid,bdmname, SUM(count_status) AS total', FALSE);
			$this->db->where('callstatus','Sign Up'); 
			$this->db->where('employeeid', $id);
			$this->db->where('created_on >=', $yearStartDate); 
			$this->db->where('created_on <=', $yearEndDate);
			$this->db->order_by('total','DESC');
			$query = $this->db->get(' new ');
			$targetAchived = $query->result();
  
			$results = [];
     
foreach ($targetAchived as $k) {
$results['total'] = $k->total;
    
}

 if(isset($results['total'])){
 return $results['total'];
 }else{
 return '0';
 }
     
 }
	 	
	

    
    
	
	
	
	
	
	
	
	

	
	
//***************************************** Check Login *******************************************//
	
	        

	
	
	        
  public  function checkLoginbdm()
    {
	    $eMail=$this->session->userdata('user_email');	
	  
	  
	  
		if($eMail!="")
		{
        return true;
		}
		else
		{
		redirect('Bdm/index');
		}
    }
	
	        
  public  function checkLogin()
    {
	    $eMail=$this->session->userdata('user_email');	
	  
	  
	  
		if($eMail!="")
		{
        return true;
		}
		else
		{
		redirect('Bdm/index');
		}
    }
    
	
		        
  public  function checkLoginBranch()
    {
	    $eMail=$this->session->userdata('user_email');	
	  
	  
	  
		if($eMail!="")
		{
        return true;
		}
		else
		{
		redirect('Branch/index');
		}
    }
    
		
		        
  public  function checkLoginAdmin()
    {
	    $eMail=$this->session->userdata('user_email');	
	  
	  
	  
		if($eMail!="")
		{
        return true;
		}
		else
		{
		redirect('Admin/index');
		}
    }
    
	
	
	
	
		
	
	
	
	
	// ******************************  Delete  table ********************************* //
	// ******************************  Delete  table ********************************* //
	// ******************************  Delete  table ********************************* //
	// ******************************  Delete  table ********************************* //
	 
	
	
	
	
	
	public function deleteproject($ids)
	{
$sql_query=$this->db->where('id', $ids)->delete('project');
           if($sql_query)
		   {
			$this->session->set_flashdata('success', 'Record deleted successfully');
			redirect('Branch/project');
		   }
	else
		{
			$this->session->set_flashdata('error', 'Somthing went worng. Error!!');
			redirect('Branch/project');
		}
}
	
		
	
	
		
	
	public function deleteclient($customerids)
	{
$sql_query=$this->db->where('customerid', $customerids)->delete('new');
           if($sql_query)
		   {
			$this->session->set_flashdata('success', 'Record deleted successfully');
			redirect('Branch/listclients');
		   }
	else
		{
			$this->session->set_flashdata('error', 'Somthing went worng. Error!!');
			redirect('Branch/listclients');
		}
}
		
	
	
	public function deletefollow($ids)
	{
$sql_query=$this->db->where('id', $ids)->delete('follow');
           if($sql_query)
		   {
			$this->session->set_flashdata('success', 'Record deleted successfully');
			redirect('Branch/listclients');
		   }
	else
		{
			$this->session->set_flashdata('error', 'Somthing went worng. Error!!');
			redirect('Branch/listclients');
		}
}
	
		
	
	public function deleteproduct($productids)
	{
		$sql_query=$this->db->where('productid', $productids)->delete('products');
           if($sql_query)
		    {
			    $this->session->set_flashdata('success', 'Record deleted successfully');
			    redirect('Branch/createproducts');
		    }
		else
			{
				$this->session->set_flashdata('error', 'Somthing went worng. Error!!');
				redirect('Branch/createproducts');
			}
	}
	
		
	
	
	
	
		
		
	
	public function deleteleave($ids)
	{
		$sql_query=$this->db->where('id', $ids)->delete('createleave');
           if($sql_query)
		    {
			    $this->session->set_flashdata('success', 'Record deleted successfully');
			    redirect('Branch/addleave');
		    }
		else
			{
				$this->session->set_flashdata('error', 'Somthing went worng. Error!!');
				redirect('Branch/addleave');
			}
	}
			
		
	
	
	
	public function deleteservicesemp($employeeids)
	{
		$sql_query=$this->db->where('employeeid', $employeeids)->delete('create_employee');
           if($sql_query)
		    {
			    $this->session->set_flashdata('success', 'Record deleted successfully');
			    redirect('Branch/listservices');
		    }
		else
			{
				$this->session->set_flashdata('error', 'Somthing went worng. Error!!');
				redirect('Branch/listservices');
			}
	}
	
		
	
	
	
	
	public function deletetarget($ids)
	{
		$sql_query=$this->db->where('id', $ids)->delete('target');
           if($sql_query)
		    {
			    $this->session->set_flashdata('success', 'Record deleted successfully');
			    redirect('Branch/bdmlist');
		    }
		else
			{
				$this->session->set_flashdata('error', 'Somthing went worng. Error!!');
				redirect('Branch/bdmlist');
			}
	}
	
			
	
		
	public function deleteemployeeleaveadmn($ids)
	{
		$sql_query=$this->db->where('id', $ids)->delete('branchleave');
		   if($sql_query)
			{
				$this->session->set_flashdata('success', 'Record deleted successfully');
				redirect('Branch/applyleave');
			}
		else
			{
				$this->session->set_flashdata('error', 'Somthing went worng. Error!!');
				redirect('Branch/applyleave');
			}
	}
	
	
	
	
	
	
	
	
	
	
	 // ********************** Admin Delete Record ******************** //
	// ********************** Admin Delete Record ******************** //
	
	
	
	
	
	
	public function deletetargetadmin($ids)
	{
		$sql_query=$this->db->where('id', $ids)->delete('target');
           if($sql_query)
		    {
			    $this->session->set_flashdata('success', 'Record deleted successfully');
			    redirect('Admin/bdmlist');
		    }
		else
			{
				$this->session->set_flashdata('error', 'Somthing went worng. Error!!');
				redirect('Admin/bdmlist');
			}
	}
	
		
	
	
		public function deletebdmadmin($employeeids)
			{
		       $sql_query=$this->db->where('employeeid', $employeeids)->delete('create_employee');
				   if($sql_query)
				   {
					$this->session->set_flashdata('success', 'Record deleted successfully');
					redirect('Admin/bdmlist');
				   }
				else
				  {
						$this->session->set_flashdata('error', 'Somthing went worng. Error!!');
						redirect('Admin/bdmlist');
				  }
		    }
	
		

	
	
		
	public function deleteservicesempadmin($employeeids)
	{
		$sql_query=$this->db->where('employeeid', $employeeids)->delete('create_employee');
           if($sql_query)
		    {
			    $this->session->set_flashdata('success', 'Record deleted successfully');
			    redirect('Admin/listservices');
		    }
		else
			{
				$this->session->set_flashdata('error', 'Somthing went worng. Error!!');
				redirect('Admin/listservices');
			}
	}
	
	
		
	


	
	
		
	
	public function deletebranchadminlist($ids)
	{
		$sql_query=$this->db->where('id', $ids)->delete('create_employee');
           if($sql_query)
		    {
			    $this->session->set_flashdata('success', 'Record deletedd successfully');
			    redirect('Admin/Branchlist');
		    }
		else
			{
				$this->session->set_flashdata('error', 'Somthing went worng. Error!!');
				redirect('Admin/Branchlist');
			}
	}
	
			
		
	
	public function deletebranchadmin($ids)
	{
		$sql_query=$this->db->where('id', $ids)->delete('branch');
           if($sql_query)
		    {
			    $this->session->set_flashdata('success', 'Record deletedd successfully');
			    redirect('Admin/createbranch');
		    }
		else
			{
				$this->session->set_flashdata('error', 'Somthing went worng. Error!!');
				redirect('Admin/createbranch');
			}
	}
	
		
		
		
	
	public function deleteclientadmin($customerids)
	{
		$sql_query=$this->db->where('customerid', $customerids)->delete('new');
           if($sql_query)
		    {
			    $this->session->set_flashdata('success', 'Record deleted successfully');
			    redirect('Admin/listclients');
		    }
		else
			{
				$this->session->set_flashdata('error', 'Somthing went worng. Error!!');
				redirect('Admin/listclients');
			}
	}
	
		
	
			
		
		
	
	public function deteleconveyancerate($ids)
	{
		$sql_query=$this->db->where('id', $ids)->delete('conveyance');
		   if($sql_query)
			{
				$this->session->set_flashdata('success', 'Record deleted successfully');
				redirect('Admin/updateconveyance');
			}
		else
			{
				$this->session->set_flashdata('error', 'Somthing went worng. Error!!');
				redirect('Admin/updateconveyance');
			}
	}
	
		
				
		
		
	
	public function deleteadminproducts($ids)
	{
		$sql_query=$this->db->where('id', $ids)->delete('products');
		   if($sql_query)
			{
				$this->session->set_flashdata('success', 'Record deleted successfully');
				redirect('Admin/createproducts');
			}
		else
			{
				$this->session->set_flashdata('error', 'Somthing went worng. Error!!');
				redirect('Admin/createproducts');
			}
	}
	
		
	
			
	
	public function deteleassignee($ids)
	{
		$sql_query=$this->db->where('id', $ids)->delete('services');
		   if($sql_query)
			{
				$this->session->set_flashdata('success', 'Record deleted successfully');
				redirect('Admin/services');
			}
		else
			{
				$this->session->set_flashdata('error', 'Somthing went worng. Error!!');
				redirect('Admin/services');
			}
	}
	
		
				
	
	public function deteleadminleave($ids)
	{
		$sql_query=$this->db->where('id', $ids)->delete('createleave');
		   if($sql_query)
			{
				$this->session->set_flashdata('success', 'Record deleted successfully');
				redirect('Admin/addleave');
			}
		else
			{
				$this->session->set_flashdata('error', 'Somthing went worng. Error!!');
				redirect('Admin/addleave');
			}
	}
	
				
				
				

				
				

		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//**************** Model End*******************//
  
    
}



