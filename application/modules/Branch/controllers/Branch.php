<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Branch extends MX_Controller 
{
    function __construct()
	{
		parent::__construct();
        
        $this->load->model('Mydb');
        error_reporting(0);
        
			$this->tablethree= 'follow';
			$this->tableone= 'createleave';
			$this->tabletwo= 'leave';
			$this->tablefour= 'new';
			$this->tablefive= 'meeting';
			$this->table= 'createleave';
        
        $this->settings = new stdClass();

        
           
        
        
    
	}

    
    //*************************************** Login  *******************************************//
    //*************************************** Login  *******************************************//
    
    
    	public function index()
	{

				$jsonArray = json_decode(file_get_contents('php://input'),true); 
				$username = $jsonArray['opEmailId'];
				$password = $jsonArray['opPassword'];
			
        // $data = array();
        // if($this->input->server('REQUEST_METHOD') == "POST")
        // {
            // $this->form_validation->set_rules('username', 'username', 'trim|required');
            // $this->form_validation->set_rules('password', 'password', 'trim|required');
            // if($this->form_validation->run() !== FALSE)
            // {
                
                // $username = json_encode($email); 
                // $password = json_encode($password);
				
				// echo $username;
				// echo $email;
                
                $datas = array(
                    'emailaddress' => $username,
                    'password' => $password
//                    'select' => 'Branch',
                );
                
                 $logins=$this->Mydb->get_all_records('firstname,select,emailaddress,password,employeeid,companyid', 'create_employee', $datas);
//                 $logins = $logins['select']
            
                 $menulist=$this->Mydb->get_all_records('label_name,route_path,designation,menu_list,icons', 'designation_menu', $logins['select']);
            
            
                
                $data['employee']= $logins;
              
                if($logins)
                {
                    $data = array(
                        $username => $data['emailaddress'],
                        $password => $data['password'],
                        'isset_login' => TRUE

                    );
//                    $this->session->set_userdata($data);
                    $statusCode = 200;
                    $message="You have logged in successfully";
                    
					                // print_r($logins[0]['select']);

                    // $content = base_url()."Branch/leavestatus/";
				
                    
                    
                    
//                    $object = json_encode($logins);
                   
                 
                    

                        
                       $logins['sessionValidMinutes'] = '15';
//                        $datas['firstname'] = $logins['firstname'];
					print_r  (json_encode(array( 'code' =>  $statusCode,'data'=>$logins, 'message' => $message, 'menu'=> $menulist)));
                    
//                    print_r($object);
                    
//                    echo $object;
                    
                    
					exit;
					
                }
                else
                {
                    $statusCode=400;
                    $message="Username and Password is Wrong"; 
					echo json_encode(array( 'status' =>  $statusCode, 'message' => $message));
					exit;					
                }
            // }
            // else
            // {
                
                // $status =  "validation_error";
                // $content =  validation_errors();
            // }
            // echo json_encode(array( 'status' =>  $status, 'content' => $content));
            // exit;
        // }
           
    }
    

    
    
    
        
    
    
//********************************** logout Page ********************************************//
//********************************** logout Page ********************************************//
    
    


        public function logout()
        {
            $this->load->driver('cache');
            $this->session->sess_destroy();
            $this->cache->clean();
            ob_clean();
            redirect(base_url(). 'Branch/index');
             
        }



    
    
        
        //********************************** Insert  Apply Leave ********************************************//

    public function insertApplyLeave()
    {
		
			$this->load->model("Mydb");
			$this->Mydb->checkLoginbdm();
           date_default_timezone_set('asia/kolkata');
            $date = date("Y-m-d");
            $monthyear=date("FY");
            $month=date("F");
            $year=date("Y");
         
          
        
        
        $data = array();
             if($this->input->server('REQUEST_METHOD') == "POST")
        {
                $this->form_validation->set_rules('employeeid', 'employeeid', 'trim|required');
                $this->form_validation->set_rules('firstname', 'firstname', 'trim|required');
                $this->form_validation->set_rules('noofleave', 'noofleave', 'trim|required');
                $this->form_validation->set_rules('fromdate', 'fromdate', 'trim|required');
                $this->form_validation->set_rules('todate', 'todate', 'trim|required');
                $this->form_validation->set_rules('leavetype', 'leavetype', 'trim|required');
                $this->form_validation->set_rules('message', 'message', 'trim|required');
  
    
 if($this->form_validation->run() !== FALSE)
            {
                $firstname=$this->input->post('firstname');
                $noofleave=$this->input->post('noofleave');
                $fromdate=$this->input->post('fromdate');
                $todate=$this->input->post('todate');
                $leavetype=$this->input->post('leavetype');
                $message=$this->input->post('message');
                $employeeid=$this->input->post('employeeid');
               
                          $data = array( 
                            'employeeid' => $employeeid,
                            'firstname' => $firstname,
                            'noofleave' => $noofleave,
                            'fromdate' => $fromdate,
                            'todate' => $todate,
                            'leavetype' => $leavetype,
                            'approvelstatus' => "pending",
                            'message' => $message,
                            'date'=>$date,
                          );
                
        $insert = $this->Mydb->insert('leave', $data);  
                if($insert)
                {
           
                    $status="ok";
                     $this->session->set_flashdata('msg', 'Form submitted successfully');
                    $content = base_url()."Branch/applyleave/";
                }
         
            }
            else
            {
                $status =  "validation_error";
                $content =  validation_errors();
            }
            echo json_encode(array( 'status' =>  $status, 'content' => $content));
            exit;
        }
              $data['title']="Leave Status";
			$this->load->view('new/applyleave',$data);
    }
    
    
    
    
           
//********************************** Employee all list  ********************************************//     
//********************************** Employee all list  ********************************************//     
//********************************** Employee all list  ********************************************//  
    
      public function employeerList()
            {
                $jsonArray = json_decode(file_get_contents('php://input'),true); 
				$username = $jsonArray['opEmailId'];
                $moduleName = $jsonArray['moduleName'];

                    $where=array('emailaddress'=>$username);
					$listing=$this->Mydb->get_record('companyid', 'create_employee',$where);
					$data['teamid']= $listing;
					$companyid=implode($listing);
                    $select="employee";
          
                    $where=array('companyid'=>$companyid,  'select'=>$select);
                    $wheretime=array('companyid'=>$companyid);
                    
          if($moduleName === "employeer")
          {
                $listing=$this->Mydb->get_all_records('id,select,employeeid,selectbranch,firstname,teamname,employeenumber,joiningdate,position,gender,birthday,address,mobilenumber,emailaddress,password,panno,aadharno,bankname,ifsc,accountnumber,visaexpirydate', 'create_employee', $where);

                $data['employee']= $listing;
                $statusCode=200;
                $message="List is Present"; 
                echo json_encode(array( 'status' =>  $statusCode, 'message' => $message, 'data' => $listing));
              
          }
          
                      
         else if($moduleName === "leaveStatus")
          {
                $listing=$this->Mydb->get_all_records('id,employeeid,leavetype,fromdate,todate,noofleave,message,approvelstatus', 'leave', '');

                $data['leaveList']= $listing;
                $statusCode=200;
                $message="List is Present"; 
                echo json_encode(array( 'status' =>  $statusCode, 'message' => $message, 'data' => $listing));
              
          }
          
                                
         else if($moduleName === "timeSheet")
          {
                    $listing=$this->Mydb->get_all_records('employeeid,empname,teamid,project,assignedhours,hours,description,date', 'timesheet', $wheretime);
                    $data['employee']= $listing;
             
             
             
                $data['timesheet']= $listing;
                $statusCode=200;
                $message="List is Present"; 
                echo json_encode(array( 'status' =>  $statusCode, 'message' => $message, 'data' => $listing));
              
          }
          
          
          
          
          
          
          
          
          
          
          
          
          
          
            }

    
    


    
            
    
    //********************************** Upadate Leave ********************************************//  
    //********************************** Upadate Leave ********************************************//  

            
    
         
                public function updateleave($id='')
                {	
					
						$this->load->model("Mydb");
                            $this->Mydb->checkLoginbdm();
					
					
                        $data=array();
                        $data['title']="Update Leave";
                        $empid=base64_decode($id);
                    
                        $this->load->helper(array('form'));
                        $this->load->library('form_validation');
                    
                    
                    
                    
                        if($this->input->server('REQUEST_METHOD') == "POST")
                        {					
                            $this->form_validation->set_rules('employeeid', 'employeeid', 'trim|required');

                            if($this->form_validation->run() !== FALSE)
                            {
                                    $id=$this->input->post('id');
                                    $employeeid=$this->input->post('employeeid');
                                    $fromdate=$this->input->post('fromdate');
                                    $todate=$this->input->post('todate');
                                    $firstname=$this->input->post('firstname');
                                    $noofleave=$this->input->post('noofleave');
                                    $leavetype=$this->input->post('leavetype');
                                    $message=$this->input->post('message');
                                
                            $where=array('id'=>$id);
$content=array('employeeid'=>$employeeid,'fromdate'=>$fromdate,'todate'=>$todate,'firstname'=>$firstname,'noofleave'=>$noofleave,'leavetype'=>$leavetype,'message'=>$message);
                                
                            $settingupdate=$this->Mydb->update('leave',$where,$content);	
                                
                                redirect('Branch/leavestatus');
                            }
                        }
                      
                 
                    
                    
                      
          $where=array('id'=>$empid);

          
          
       $listing=$this->Mydb->get_record('id,employeeid,firstname,noofleave,fromdate,todate,leavetype,approvelstatus,date,message', 'leave', $where);
        $data['updateleavedetails']= $listing;
          
                    
                    
          
                        $this->load->view('leavestatus/updateleave', $data);
                }

    
    
	
    
    
    
    
    
    
    
    
    
    
        
           
//********************************** projectlist ********************************************//     
//********************************** projectlist ********************************************//     
//********************************** projectlist ********************************************//  
    
      public function projectlist()
            {
                $data['title']="Time Sheet";
		  		$this->load->model("Mydb");
				$this->Mydb->checkLoginbdm();
              
                    $username =$this->session->userdata['user_email'];
                    $where=array('emailaddress'=>$username);
                    $listing=$this->Mydb->get_record('employeeid', 'create_employee', $where);
                    $data['bdmdetails']= $listing;
                    $employeeid=implode($listing);
          
          
          		    $where=array('emailaddress'=>$username);
					$listing=$this->Mydb->get_record('teamid', 'create_employee',$where);
					$data['teamid']= $listing;
					$teamids=implode($listing);
          
          $where=array('teamid'=>$teamids);
          
       $listing=$this->Mydb->get_all_records('empname,project,assignedhours ,hours,description,date', 'timesheet', $where);
        $data['timesheetlist']= $listing;
          
          


                $this->load->view('projectlist/projectlist',$data);
            }

    
    

    
        
           
//********************************** timesheet ********************************************//     
//********************************** timesheet ********************************************//     
//********************************** timesheet ********************************************//  
    
      public function timesheet()
            {
                $data['title']="Time Sheet";
		  		$this->load->model("Mydb");
				$this->Mydb->checkLoginbdm();
              
                    $username =$this->session->userdata['user_email'];
                    $where=array('emailaddress'=>$username);
                    $listing=$this->Mydb->get_record('employeeid', 'create_employee', $where);
                    $data['bdmdetails']= $listing;
                    $employeeid=implode($listing);
          
          
          
          		$where=array('emailaddress'=>$username);
					$listing=$this->Mydb->get_record('teamid', 'create_employee',$where);
					$data['teamid']= $listing;
					$teamids=implode($listing);
          
//          $where=array('teamid'=>$teamids);
          
       $listing=$this->Mydb->get_all_records('employeeid,empname,project,assignedhours ,hours,description,date,id ', 'timesheet', '');
        $data['timesheetlist']= $listing;
          
          


                $this->load->view('timesheet/timesheet',$data);
            }

    
    


    
        
        //********************************** Insert  timesheet********************************************//

    public function inserttimesheet()
    {
		
			$this->load->model("Mydb");
			$this->Mydb->checkLoginbdm();
           date_default_timezone_set('asia/kolkata');
            $date = date("Y-m-d");
           
         
          
        
        
        $data = array();
             if($this->input->server('REQUEST_METHOD') == "POST")
        {
                 
                 
                 
                $this->form_validation->set_rules('employeeid', 'employeeid', 'trim|required');
                $this->form_validation->set_rules('empname', 'empname', 'trim|required');
                $this->form_validation->set_rules('teamid', 'teamid', 'trim|required');
                $this->form_validation->set_rules('project', 'project', 'trim|required');
                $this->form_validation->set_rules('assignedhours', 'assignedhours', 'trim|required');
                $this->form_validation->set_rules('hours', 'hours', 'trim|required');
                $this->form_validation->set_rules('description', 'description', 'trim|required');
  
    
 if($this->form_validation->run() !== FALSE)
            {
                $employeeid=$this->input->post('employeeid');
                $empname=$this->input->post('empname');
                $teamid=$this->input->post('teamid');
                $project=$this->input->post('project');
                $assignedhours=$this->input->post('assignedhours');
                $hours=$this->input->post('hours');
                $description=$this->input->post('description');
               
                          $data = array( 
                            'employeeid' => $employeeid,
                            'empname' => $empname,
                            'teamid' => $teamid,
                            'project' => $project,
                            'assignedhours' => $assignedhours,
                            'hours' => $hours,
                            'description' => $description,
                            'date' => $date,
                          );
                
        $insert = $this->Mydb->insert('timesheet', $data);  
                if($insert)
                {
           
                    $status="ok";
                     $this->session->set_flashdata('msg', 'Form submitted successfully');
                    $content = base_url()."Branch/timesheet/";
                }
         
            }
            else
            {
                $status =  "validation_error";
                $content =  validation_errors();
            }
            echo json_encode(array( 'status' =>  $status, 'content' => $content));
            exit;
        }
        
        
//          $username =$this->session->userdata['user_email'];
//                    $where=array('emailaddress'=>$username);
//                    $listing=$this->Mydb->get_record('employeeid', 'create_employee', $where);
//                    $data['bdmdetails']= $listing;
//                    $employeeid=implode($listing);
//          
//          
//           $where=array('employeeid'=>$employeeid);
//          
//       $listing=$this->Mydb->get_record('employeeid,firstname,teamid', 'create_employee', $where);
//        $data['inserttimesheetlist']= $listing;
          		
        
        
        
              $data['title']="Leave Status";
			$this->load->view('timesheet/inserttimesheet',$data);
    }
    
    
    
    
    
    
    
    
    
            
    
    //********************************** Upadate time sheet ********************************************//  
    //********************************** Upadate time sheet ********************************************//  

            
    
         
                public function updatetimesheet($id='')
                {	
					
						$this->load->model("Mydb");
                            $this->Mydb->checkLoginbdm();
					
					
                        $data=array();
                        $data['title']="Update Time Sheet";
                        $sid=base64_decode($id);
                    
                    
                    
                        $this->load->helper(array('form'));
                        $this->load->library('form_validation');
                    
                    
                
                    
                        if($this->input->server('REQUEST_METHOD') == "POST")
                        {					
                            $this->form_validation->set_rules('employeeid', 'employeeid', 'trim|required');

                            if($this->form_validation->run() !== FALSE)
                            {
                                
                                
                                
                                    $id=$this->input->post('id');
                                    $employeeid=$this->input->post('employeeid');
                $empname=$this->input->post('empname');
                $teamid=$this->input->post('teamid');
                $project=$this->input->post('project');
                $assignedhours=$this->input->post('assignedhours');
                $hours=$this->input->post('hours');
                $description=$this->input->post('description');
               
                 
                                
                                
                                
     
                                
                            $where=array('id'=>$id);
$content=array('employeeid'=>$employeeid,'empname'=>$empname,'teamid'=>$teamid,'project'=>$project,'assignedhours'=>$assignedhours,'hours'=>$hours,'description'=>$description);
                                
                            $settingupdate=$this->Mydb->update('timesheet',$where,$content);	
                                
                                redirect('Branch/timesheet');
                            }
                        }
                      
                 
                    
                    
                      
          $where=array('id'=>$sid);

          
          
        $listing=$this->Mydb->get_record('employeeid,empname,teamid,project,assignedhours ,hours,description,date,id', 'timesheet', $where);
        $data['updatetimesheet']= $listing;
          
                    
                    
          
                        $this->load->view('timesheet/updatetimesheet', $data);
                }

    
    
	
        
           
//********************************** Resigination ********************************************//     
//********************************** Resigination ********************************************//     
//********************************** Resigination ********************************************//  
    
      public function resiginationstatus()
            {
                $data['title']="Resigination status";
		  		$this->load->model("Mydb");
				$this->Mydb->checkLoginbdm();
              
                    $username =$this->session->userdata['user_email'];
                    $where=array('emailaddress'=>$username);
                    $listing=$this->Mydb->get_record('employeeid', 'create_employee', $where);
                    $data['bdmdetails']= $listing;
                    $employeeid=implode($listing);
          
//          $where=array('employeeid'=>$employeeid);

          
          
       $listing=$this->Mydb->get_all_records('id,employeeid,empname,department,reason,notice_date,resigination_date,date', 'resigination', '');
        $data['resigination']= $listing;
          
          


                $this->load->view('resigination/resiginationstatus',$data);
            }

    
    
    
     
        
        //********************************** Insert  Resigination ********************************************//

    public function insertresigination()
    {
		
			$this->load->model("Mydb");
			$this->Mydb->checkLoginbdm();
           date_default_timezone_set('asia/kolkata');
            $date = date("Y-m-d");
            $monthyear=date("FY");
            $month=date("F");
            $year=date("Y");
         
          
        
        
        $data = array();
             if($this->input->server('REQUEST_METHOD') == "POST")
        {
                $this->form_validation->set_rules('empname', 'empname', 'trim|required');
                $this->form_validation->set_rules('department', 'department', 'trim|required');
                $this->form_validation->set_rules('reason', 'reason', 'trim|required');
                $this->form_validation->set_rules('notice_date', 'notice_date', 'trim|required');
                $this->form_validation->set_rules('resigination_date', 'resigination_date', 'trim|required');
  
    
 if($this->form_validation->run() !== FALSE)
            {
                $employeeid=$this->input->post('employeeid');
                $empname=$this->input->post('empname');
                $department=$this->input->post('department');
                $reason=$this->input->post('reason');
                $notice_date=$this->input->post('notice_date');
                $resigination_date=$this->input->post('resigination_date');
             
               
                          $data = array( 
                            'employeeid' => $employeeid,
                            'empname' => $empname,
                            'department' => $department,
                            'reason' => $reason,
                            'notice_date' => $notice_date,
                            'resigination_date' => $resigination_date,
                            'date'=>$date,
                          );
                
        $insert = $this->Mydb->insert('resigination', $data);  
                if($insert)
                {
           
                    $status="ok";
                     $this->session->set_flashdata('msg', 'Form submitted successfully');
                    $content = base_url()."Branch/resiginationstatus/";
                }
         
            }
            else
            {
                $status =  "validation_error";
                $content =  validation_errors();
            }
            echo json_encode(array( 'status' =>  $status, 'content' => $content));
            exit;
        }
              $data['title']="Resigination Status";
			$this->load->view('resigination/insertresigination',$data);
    }
    
   
    
   
    
    //********************************** Upadate Leave ********************************************//  
    //********************************** Upadate Leave ********************************************//  

            
    
         
                public function updateresigination($id='')
                {	
					
						$this->load->model("Mydb");
                            $this->Mydb->checkLoginbdm();
					
					
                        $data=array();
                        $data['title']="Update Resigination";
                        $empid=base64_decode($id);
                    
                        $this->load->helper(array('form'));
                        $this->load->library('form_validation');
                    
                    
                    
                    
                        if($this->input->server('REQUEST_METHOD') == "POST")
                        {					
                            $this->form_validation->set_rules('employeeid', 'employeeid', 'trim|required');

                            if($this->form_validation->run() !== FALSE)
                            {
                                    $id=$this->input->post('id');
                                    $employeeid=$this->input->post('employeeid');
                                    $empname=$this->input->post('empname');
                                    $department=$this->input->post('department');
                                    $reason=$this->input->post('reason');
                                    $notice_date=$this->input->post('notice_date');
                                    $resigination_date=$this->input->post('resigination_date');
                                
                            $where=array('id'=>$id);
$content=array('employeeid'=>$employeeid,'empname'=>$empname,'department'=>$department,'reason'=>$reason,'notice_date'=>$notice_date,'resigination_date'=>$resigination_date);
                                
                            $settingupdate=$this->Mydb->update('resigination',$where,$content);	
                                
                                redirect('Branch/resiginationstatus');
                            }
                        }
                      
                 
                    
                    
                      
          $where=array('id'=>$empid);

          
          
       $listing=$this->Mydb->get_record('id,employeeid,empname,department,reason,notice_date,resigination_date,date', 'resigination', $where);
        $data['updateresigination']= $listing;
          
                    
                    
          
                        $this->load->view('resigination/updateresigination', $data);
                }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
      
   //*************************************** Create Employee  *******************************************// 
   //*************************************** Create Employee  *******************************************//   
    
    public function createemployee()
    {
		
	     	$this->load->model("Mydb");
			$this->Mydb->checkLoginBranch();
		
            $data['title']="Create Employee";
            $data['maxCEId']=$this->Mydb->getCEid(); 

            $username =$this->session->userdata['user_email'];
         
            $where=array('emailaddress'=>$username);
            $listing=$this->Mydb->get_record('selectbranch', 'create_employee',$where);
            $data['branchname']= $listing;
        
        
        
            $where=array('emailaddress'=>$username);
            $listing=$this->Mydb->get_record('selectbranch', 'create_employee',$where);
            $data['branchname']= $listing;
            $branchname=implode($listing);

        
            $where=array('selectbranch'=>$branchname,'select'=>'Sales');
            $listing=$this->Mydb->get_all_records('firstname', 'create_employee',$where);
            $data['bdmname']= $listing;
        
      

            $this->load->view('createemployee/createemployee',$data);
    }
    
    
  
             
    public function insertemployee()
    {
			$this->load->model("Mydb");
			$this->Mydb->checkLoginBranch();
		
		
        $data = array();
             if($this->input->server('REQUEST_METHOD') == "POST")
        {
                $this->form_validation->set_rules('select', 'select', 'trim|required');
                $this->form_validation->set_rules('employeeid', 'employeeid', 'trim|required');
                
              
    
 if($this->form_validation->run() !== FALSE)
            {
                $select=$this->input->post('select');
                $employeeid=$this->input->post('employeeid');
                $selectbranch=$this->input->post('selectbranch');
                $firstname =$this->input->post('firstname');
                $lastname =$this->input->post('lastname');
                $employeenumber =$this->input->post('employeenumber');
                $joiningdate =$this->input->post('joiningdate');
                $position =$this->input->post('position');
                $gender =$this->input->post('gender');
                $birthday =$this->input->post('birthday');
                $address =$this->input->post('address');
                $area =$this->input->post('area');
                $pincode =$this->input->post('pincode');
                $homephone =$this->input->post('homephone');
                $mobilenumber =$this->input->post('mobilenumber');
                $emailaddress =$this->input->post('emailaddress');
                $password =$this->input->post('password');
                $companynumber =$this->input->post('companynumber');
                $companyemail =$this->input->post('companyemail');
                $panno =$this->input->post('panno');
                $aadharno =$this->input->post('aadharno');
                $bankname =$this->input->post('bankname');
                $branchname =$this->input->post('branchname');
                $ifsc =$this->input->post('ifsc');
                $accountnumber =$this->input->post('accountnumber');
                $visaexpirydate =$this->input->post('visaexpirydate');
                
               
                
                
                          $data = array( 
                            'select' => $select,
                            'employeeid' => $employeeid,
//                            'selectbranch' => $selectbranch,  
                            'firstname'=>$firstname,
                            'lastname'=>$lastname,
                            'employeenumber'=>$employeenumber,
                            'joiningdate'=>$joiningdate,
                            'position'=>$position,
                            'gender'=>$gender,
                            'birthday'=>$birthday,
                            'address'=>$address,
                            'area'=>$area,
                            'pincode'=>$pincode,
                            'homephone'=>$homephone,
                            'mobilenumber'=>$mobilenumber,
                            'emailaddress'=>$emailaddress,
                            'password'=>$password,
                            'companynumber'=>$companynumber,
                            'companyemail'=>$companyemail,
                            'panno'=>$panno,
                            'aadharno'=>$aadharno,
                            'bankname'=>$bankname,
                            'branchname'=>$branchname,
                            'ifsc'=>$ifsc,
                            'accountnumber'=>$accountnumber,
                            'visaexpirydate'=>$visaexpirydate,
                            
                          );
                
        $insert = $this->Mydb->insert('create_employee', $data);  
                if($insert)
                {
           
                    $status="ok";
                     $this->session->set_flashdata('msg', 'Form submitted successfully');
                    $content = base_url()."Branch/i nsertemployee/";
                }
         
            }
            else
            {
                $status =  "validation_error";
                $content =  validation_errors();
            }
            echo json_encode(array( 'status' =>  $status, 'content' => $content));
            exit;
        }
        
           $data['title']="Create Employee";
			$this->load->view('createemployee/createemployee',$data);
    }
    

    
    
    
       
     public function employeelist()
    {
					$this->load->model("Mydb");
					$this->Mydb->checkLoginBranch();
			       
                    $data['title']="BDM List";

                    $username =$this->session->userdata['user_email'];

                    $where=array('emailaddress'=>$username);
                    $listing=$this->Mydb->get_record('companyid', 'create_employee',$where);
                    $data['companyid']= $listing;
                    $companyid=implode($listing);

                    $where=array('companyid'=>$companyid,'select'=>'Sales');
                    $listing=$this->Mydb->get_all_records('id,select,employeeid,selectbranch,firstname,teamname,employeenumber,joiningdate,position,gender,birthday,address,area,pincode,homephone,mobilenumber,emailaddress,password,companynumber,companyemail,panno,aadharno,bankname,branchname,ifsc,accountnumber,permanentresident,visaexpirydate', 'create_employee', $where);
                    $data['employee']= $listing;
         
                    $this->load->view('createemployee/employeelist', $data);
    }
    

    
    
    
        
                public function updateemployee($employeeid='')
                {		
					
						$this->load->model("Mydb");
						$this->Mydb->checkLoginBranch();

                        $data=array();
                        $page = 'createemployee/updatemployee';			
                        $empid=base64_decode($employeeid);
					$data['title']="Update BDM";
                    
                        /* Load form helper */ 
                        $this->load->helper(array('form'));

                        /* Load form validation library */ 
                        $this->load->library('form_validation');   
                                                               
                        if($this->input->server('REQUEST_METHOD') == "POST")
                        {					

                            $this->form_validation->set_rules('firstname', 'firstname', 'trim|required');

                            if($this->form_validation->run() !== FALSE)
                            {

                                $select=$this->input->post('select');
                                $employeeid=$this->input->post('employeeid');
                                $selectbranch=$this->input->post('selectbranch');
                                $firstname =$this->input->post('firstname');
                                $firstname =$this->input->post('firstname');
                                $teamname =$this->input->post('teamname');
                                $employeenumber =$this->input->post('employeenumber');
                                $joiningdate =$this->input->post('joiningdate');
                                $position =$this->input->post('position');
                                $gender =$this->input->post('gender');
                                $birthday =$this->input->post('birthday');
                                $address =$this->input->post('address');
                                $area =$this->input->post('area');
                                $pincode =$this->input->post('pincode');
                                $homephone =$this->input->post('homephone');
                                $mobilenumber =$this->input->post('mobilenumber');
                                $emailaddress =$this->input->post('emailaddress');
                                $password =$this->input->post('password');
                                $companynumber =$this->input->post('companynumber');
                                $companyemail =$this->input->post('companyemail');
                                $panno =$this->input->post('panno');
                                $aadharno =$this->input->post('aadharno');
                                $bankname =$this->input->post('bankname');
                                $branchname =$this->input->post('branchname');
                                $ifsc =$this->input->post('ifsc');
                                $accountnumber =$this->input->post('accountnumber');
                                $visaexpirydate =$this->input->post('visaexpirydate');

                            $where=array('employeeid'=>$employeeid);
                                  
                           
                        $content=array('select'=>$select,'employeeid'=>$employeeid,'selectbranch'=>$selectbranch,'firstname'=>$firstname,'teamname'=>$teamname,'lastname'=>$lastname,'employeenumber'=>$employeenumber,'joiningdate'=>$joiningdate,'position'=>$position,'gender'=>$gender,'birthday'=>$birthday,'address'=>$address,'area'=>$area,'pincode'=>$pincode,'homephone'=>$homephone,'mobilenumber'=>$mobilenumber,'emailaddress'=>$emailaddress,'companynumber'=>$companynumber,'companyemail'=>$companyemail,'panno'=>$panno,'aadharno'=>$aadharno,'bankname'=>$bankname,'branchname'=>$branchname,'ifsc'=>$ifsc,'accountnumber'=>$accountnumber,'visaexpirydate'=>$visaexpirydate);
                                
                                
                               
                                
                            $settingupdate=$this->Mydb->update('create_employee',$where,$content);	
                                
                                redirect('Branch/employeelist');
                            }
                        }
                      
                        $where=array('id'=>$empid);
                        $listing=$this->Mydb->get_record('select,employeeid,selectbranch,firstname,teamname,employeenumber,joiningdate,position,gender,birthday,address,area,pincode,homephone,mobilenumber,emailaddress,password,companynumber,companyemail,panno,aadharno,bankname,branchname,ifsc,accountnumber,permanentresident,visaexpirydate', 'create_employee', $where);									
                        $data['employeeUpdateListing']= $listing;
                    
               
                    
                        $this->load->view($page, $data);
                }

    
    
    
    
    
    
    
    //****************************//
    
    
    
    
       
     public function teamlist()
    {
					$this->load->model("Mydb");
					$this->Mydb->checkLoginBranch();
			       
                    $data['title']="BDM List";

                    $username =$this->session->userdata['user_email'];

                    $where=array('emailaddress'=>$username);
                    $listing=$this->Mydb->get_record('companyid', 'create_employee',$where);
                    $data['companyid']= $listing;
                    $companyid=implode($listing);

                    $where=array('companyid'=>$companyid,'select'=>'Sales');
                    $listing=$this->Mydb->get_all_records('employeeid,selectbranch,firstname,employeenumber,gender,mobilenumber,emailaddress,teamname', 'create_employee', $where);
                    $data['employee']= $listing;
         
                    $this->load->view('teamlist/teamlist', $data);
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
           
//*************************************** Lead Creation  *******************************************// 
//*************************************** Lead Creation  *******************************************// 

    
    public function leadcreation()
    {
		    $this->load->model("Mydb");
			$this->Mydb->checkLoginBranch();
		
		
            $data['title']="Lead Creation";
          $data['maxCCId']=$this->Mydb->getCCid(); 
        
        
        
            $listingproduct=$this->Mydb->get_all_records('productname,productvalue', 'products','');
            $data['productname']= $listingproduct;
        
        
            $this->load->view('leadcreation/leadcreation',$data);
    }
    
    
    
     public function insertleadcreation() 
    {
        	$this->load->model("Mydb");
			$this->Mydb->checkLoginBranch();

         date_default_timezone_set('asia/kolkata');
            $datedata= date("Y-m-d");
            $monthyear=date("FY");
            $month=date("F");
            $year=date("Y");
         
         
                    $data = array();
        if($this->input->server('REQUEST_METHOD') == "POST")
        {
                $this->form_validation->set_rules('bdmname', 'bdmname', 'trim|required');
                $this->form_validation->set_rules('empid', 'empid', 'trim|required');
                $this->form_validation->set_rules('branchname', 'branchname', 'trim|required');
                $this->form_validation->set_rules('customerid', 'customerid', 'trim|required');
                $this->form_validation->set_rules('customername', 'customername', 'trim|required');
                $this->form_validation->set_rules('customeraddress', 'customeraddress', 'trim|required');
                $this->form_validation->set_rules('customerphoneno', 'customerphoneno', 'trim|required');
                $this->form_validation->set_rules('callstatus', 'callstatus', 'trim|required');
                $this->form_validation->set_rules('prioritystatus', 'prioritystatus', 'trim|required');
                                    
        
            if($this->form_validation->run() !== FALSE)
            {
        
                $bdmname=$this->input->post('bdmname');
                $empid=$this->input->post('empid');
                $branchname=$this->input->post('branchname');
                $customerid=$this->input->post('customerid');
                $sourceofcall=$this->input->post('sourceofcall');
                $customername=$this->input->post('customername');
                $customeraddress=$this->input->post('customeraddress');
                $customerphoneno=$this->input->post('customerphoneno');
				
				$boardschool=$this->input->post('boardschool');
                $noofstudents=$this->input->post('noofstudents');
                $monthlyfee=$this->input->post('monthlyfee');
                $competitiondetails=$this->input->post('competitiondetails');
                $managementpresentation=$this->input->post('managementpresentation');
                $principalpresentation=$this->input->post('principalpresentation');
                $otherpresentation=$this->input->post('otherpresentation');
				
                $contactperson=$this->input->post('contactperson');
                $contactnumber=$this->input->post('contactnumber');
                $contactdesignation=$this->input->post('contactdesignation');
                $intime=$this->input->post('intime');
                $outtime=$this->input->post('outtime');
                $personcontacted=$this->input->post('personcontacted');
                $producttype=$this->input->post('producttype');
                $callstatus=$this->input->post('callstatus');
                $productname=$this->input->post('productname');
                $productvalue=$this->input->post('productvalue');
                $persondescription=$this->input->post('persondescription');
                $prioritystatus=$this->input->post('prioritystatus');
                $nextappointmentdate=$this->input->post('nextappointmentdate');
                $nextappointmenttime=$this->input->post('nextappointmenttime');
                $date=$this->input->post('date');
                
							// date to month name convertion 
                			$d = new DateTime($date);
							$monthname=$d->format( 'F' );
				
                
            
                
                            $data = array( 
                            'bdmname' => $bdmname,
                            'branchname' => $branchname,
                            'employeeid' => $empid,
                            'customerid' => $customerid,
                            'sourceofcall' => $sourceofcall,
                            'customername' => $customername,
                            'customeraddress' => $customeraddress,
                            'customerphoneno' => $customerphoneno,
								
							'boardschool' => $boardschool,
							'noofstudents' => $noofstudents,
							'monthlyfee' => $monthlyfee,
							'competitiondetails' => $competitiondetails,
							'managementpresentation' => $managementpresentation,
							'principalpresentation' => $principalpresentation,
							'otherpresentation' => $otherpresentation,
								
                            'contactperson' => $contactperson,
                            'contactnumber' => $contactnumber,
                            'contactdesignation' => $contactdesignation,
                            'intime' => $intime,
                            'outtime'=> $outtime,
                            'personcontacted' => $personcontacted,
                            'producttype' => $producttype,
                            'callstatus' => $callstatus,
                            'productname' => $productname,
                            'productvalue' => $productvalue,
                            'persondescription' => $persondescription,
                            'prioritystatus' => $prioritystatus,
                            'nextappointmentdate' => $nextappointmentdate,
                            'nextappointmenttime' => $nextappointmenttime,
                            'created_on' => $date,
                            'monthyear' => $monthyear,
                            'month' => $monthname,
                            'year' => $year,
                            );
                
                   $insert = $this->Mydb->insert('new', $data); 
                
        
                if($insert)
                {
           
                    $status="ok";
                          $this->session->set_flashdata('msg', 'Form submitted successfully');                 
                    $content = base_url()."Branch/leadcreation/";
                }
         
            }
            else
            {
                $status =  "validation_error";
                $content =  validation_errors();
            }
            echo json_encode(array( 'status' =>  $status, 'content' => $content));
            exit;
        }
            $data['title']="Lead Creation";
			  $this->load->view('leadcreation/leadcreation',$data);
    }
    
    
  
    
    
    
  
    
    //***********************************************************     End of the code      ***********************************//
   //************************************************************  Autocomplete Search Bar  **********************************//
    

    
       
    function get_autocomplete_emp()
    {
		
		    $this->load->model("Mydb");
			$this->Mydb->checkLoginBranch();
		
		
        if (isset($_GET['term'])) {
            
           $username =$this->session->userdata['user_email'];
           $where=array('emailaddress'=>$username);
           $listing=$this->Mydb->get_record('selectbranch', 'create_employee', $where);
           $data['branch']= $listing; 
           $branch=implode($listing);
 
            
            $where=array('selectbranch'=>$branch,'select'=>'Sales');
            
            $result = $this->Mydb->search_emp($_GET['term'], $where);
          
            if (count($result) > 0) {
            foreach ($result as $row)
                $arr_result[] = array(
                    'label' => $row->firstname, 
                    'branchname'	 => $row->selectbranch,
                    'employeeid'	 => $row->employeeid,
                );
                echo json_encode($arr_result);
            }
        }
    } 
    
    
    

    
    
           
    function get_autocomplete()
	{
		
			$this->load->model("Mydb");
			$this->Mydb->checkLoginBranch();

		
		
        if (isset($_GET['term'])) {
            $result = $this->Mydb->search_blog($_GET['term']);
          
            if (count($result) > 0) {
            foreach ($result as $row)
                $arr_result[] = array(
                    'label' => $row->bdmname, 
                    'branchname'	 => $row->branchname,
                    'employeeid'	 => $row->employeeid,
                );
                echo json_encode($arr_result);
            }
        }
    } 
    
    
    
           
    function get_autocompleteproduct()
    {
        if (isset($_GET['term'])) {
            $result = $this->Mydb->search_product($_GET['term']);
          
            if (count($result) > 0) {
            foreach ($result as $row)
                $arr_result[] = array(
                    'label' => $row->productname, 
                    'productvalue'	 => $row->productvalue,
                );
                echo json_encode($arr_result);
            }
        }
    } 
        
   
    
    
    
    function get_autocompletefollow()
    {
        if (isset($_GET['term'])) {
            
            
            $username =$this->session->userdata['user_email'];
            $where=array('emailaddress'=>$username);
            $listing=$this->Mydb->get_record('selectbranch', 'create_employee', $where);
            $data['branchname']= $listing; 
            $branch=implode($listing);
        
            
            $where=array('branchname'=>$branch);
         
            $result = $this->Mydb->search_follow($_GET['term'], $where);
            
            if (count($result) > 0) {
            foreach ($result as $row)
                $arr_result[] = array(
                    'label' => $row->customername, 
                    'customerid'	 => $row->customerid,
                    'customeraddress'	 => $row->customeraddress,
                    'customerphoneno'	 => $row->customerphoneno,
                    'bdmname'	 => $row->bdmname,
                    'branchname'	 => $row->branchname,
                    'employeeid'	 => $row->employeeid,
                    'prioritystatus'	   => $row->prioritystatus,
                    'callstatus'	   => $row->callstatus,
                    'productname'	   => $row->productname,
                    'productvalue'	   => $row->productvalue,
                );
                echo json_encode($arr_result);
            }
        }
    } 
    

    
            //  *************************************************** End Autocomplete Search Bar   ****************************************** 
            //  *************************************************** End Autocomplete Search Bar   ****************************************** 
	
	
	
	
	
	
	
	
	    
//******************************************* Delete Client ***************************************************//
//******************************************* Delete Client ***************************************************//
//******************************************* Delete Client ***************************************************//
    	
	
						public function deletebdm($employeeid)
						{
							$employeeids=base64_decode($employeeid);
							$this->Mydb->deletebdm($employeeids);
							redirect('Branch/bdmlist');
						}

	
	
	
						public function deleteclient($customerid)
						{
							$customerids=base64_decode($customerid);
							$this->Mydb->deleteclient($customerids);
							redirect('Branch/bdmlist');
						}
	
	
	
						public function deletefollow($id)
						{
							$ids=base64_decode($id);
							$this->Mydb->deletefollow($ids);
							redirect('Branch/listclients');
						}
	

	
						public function deleteproduct($productid)
						{
							$productids=base64_decode($productid);
							$this->Mydb->deleteproduct($productids);
							redirect('Branch/createproducts');
						}
	
	
	
						public function deleteleave($id)
						{
							$ids=base64_decode($id);
							$this->Mydb->deleteleave($ids);
							redirect('Branch/addleave');
						}

	
						public function deleteservicesemp($employeeid)
						{
							$employeeids=base64_decode($employeeid);
							$this->Mydb->deleteservicesemp($employeeids);
							redirect('Branch/listservices');
						}
	
	

						public function deletetarget($id)
						{
							$ids=base64_decode($id);
							$this->Mydb->deletetarget($ids);
							redirect('Branch/bdmlist');
						}

	

						public function deleteemployeeleaveadmn($id)
						{
							$ids=base64_decode($id);
							$this->Mydb->deleteemployeeleaveadmn($ids);
							redirect('Branch/applyleave');
						}
						
	

	
	
	
	
	
	
	
	

    
 //***************************************************** Excel Upload ****************************************************************************//   
 //***************************************************** Excel Upload ****************************************************************************//   
    
    
     
    
	public function indexexcel()
    {

		// Check form submit or not 
 		if($this->input->post('upload') != NULL ){ 
   			$data = array(); 
   			if(!empty($_FILES['file']['name'])){ 
    			// Set preference 
    			$config['upload_path'] = 'assets/files/'; 
    			$config['allowed_types'] = 'csv'; 
    			$config['max_size'] = '1000'; // max_size in kb 
    			$config['file_name'] = $_FILES['file']['name']; 

    			// Load upload library 
    			$this->load->library('upload',$config); 
   
    			// File upload
    			if($this->upload->do_upload('file')){ 
     				// Get data about the file
     				$uploadData = $this->upload->data(); 
     				$filename = $uploadData['file_name']; 

     				// Reading file
                    $file = fopen("assets/files/".$filename,"r");
                    $i = 0;

                    $importData_arr = array();
                       
                    while (($filedata = fgetcsv($file, 1000, ",")) !== FALSE) {
                        $num = count($filedata);

                        for ($c=0; $c < $num; $c++) {
                            $importData_arr[$i][] = $filedata[$c];
                        }
                        $i++;
                    }
                    fclose($file);

                    $skip = 0;

                    // insert import data
                    foreach($importData_arr as $userdata){
                        if($skip != 0){
                            $this->Mydb->insertRecord($userdata);
                        }
                        $skip ++;
                    }
     				$data['response'] = 'successfully uploaded '.$filename; 
    			}else{ 
     				$data['response'] = 'failed'; 
    			} 
   			}else{ 
    			$data['response'] = 'failed'; 
   			} 
   			// load view 
//   		 $this->load->view('bulkupload/bulkupload',$data);
             redirect('Bdm/listclient');
  		}else{
   			// load view 
//   			$this->load->view('users_view'); 
             $this->load->view('bulkupload/bulkupload',$data);
  		} 

	}
    
    
    
    
    
    //*****************************************************************************************************************************************************
    

    
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   
    
}

?>