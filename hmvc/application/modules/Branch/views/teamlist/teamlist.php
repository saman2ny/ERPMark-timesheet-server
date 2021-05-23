<!DOCTYPE html>
<html lang="en">
    <head>
         <?php get_template('templates/header');?>
         <?php get_template('templates/cssForms');?>
        
        
        <style>
        .page
            {
             -webkit-transform: rotate(-90deg); 
             -moz-transform:rotate(-90deg);
             filter:progid:DXImageTransform.Microsoft.BasicImage(rotation=3);
            }
        </style>
        
        
        
    </head>

    <body>

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Topbar Start -->
           <?php get_template('templates/top');?>
            <!-- end Topbar -->

            <!-- ========== Left Sidebar Start ========== -->
           <?php get_template('templates/left');?>
            <!-- Left Sidebar End -->

           
            <div class="content-page">
                <div class="content">

                    <!-- Start Content-->
                    <div class="container-fluid">
                        
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Thinkwise</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">BDM List</a></li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">BDM List</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

						
		<?php if($this->session->flashdata('success')): ?>
			<p id="flash_style" class="hideit"><?php echo $this->session->flashdata('success'); ?></p>
		<?php endif; ?>
						
						

                        <div class="row">
                            <div class="col-12">
                                <div class="card" id="card_background">
                                    <div class="card-body">

                                        <h4 class="header-title">BDM List</h4>
                                        <p class="text-muted font-13 mb-4"></p>

                                        <table id="example" class="table table-striped dt-responsive nowrap">
                                            <thead>
                                                <tr>
                                                    <th>Employee ID</th>
                                                    <th>Branch</th>
                                                    <th>Name</th>
                                                    <th>Employee number</th>
                                                    <th>Date of Joining</th>
                                                    <th>Position and title</th>
                                                    <th>Gender</th>
                                                    <th>Date of Birth</th>
                                                    <th>Address</th>
                                                    <th>Area</th>
                                                    <th>State</th> 
                                                    <th>Pincode</th>
                                                    <th>Home Phone</th>
                                                    <th>Mobile</th>
                                                    <th>Email Address</th>
                                                    <th>password</th>
                                                    <th>Company Phone Number</th>
                                                    <th>Company Email</th>
                                                    <th>Pan No</th> 
                                                    <th>Aadhar No</th>
                                                    <th>Bank Name</th>
                                                    <th>Branch</th>
                                                    <th>IFSC</th>
                                                    <th>Account Number</th>
                                                    <th>Visa Expiry date</th>
                                                    <th>Task Details</th>
                                                    <th>Action</th>
                                                    <th>Delete</th>
                                                
                                                </tr>
                                            </thead>    
                                        
                                        
                                            <tbody>
                                                
                                <?php foreach ($employee as $key=>$value):?>
                                            
                                                <tr>
                                                    
                        <td><?php echo $employee[$key]['employeeid'];?></td>
                        <td><?php echo $employee[$key]['selectbranch'];?></td>
                        <td><?php echo $employee[$key]['firstname'];?></td>
                        <td><?php echo $employee[$key]['employeenumber'];?></td>
                        <td><?php echo $employee[$key]['joiningdate'];?></td>
                        <td><?php echo $employee[$key]['position'];?></td>
                        <td><?php echo $employee[$key]['gender'];?></td>
                        <td><?php echo $employee[$key]['birthday'];?></td>
                        <td><?php echo $employee[$key]['address'];?></td>
                        <td><?php echo $employee[$key]['area'];?></td>
                        <td><?php echo $employee[$key]['state'];?></td>
                        <td><?php echo $employee[$key]['pincode'];?></td>
                        <td><?php echo $employee[$key]['homephone'];?></td>
                        <td><?php echo $employee[$key]['mobilenumber'];?></td>
                        <td><?php echo $employee[$key]['emailaddress'];?></td>
                        <td><?php echo $employee[$key]['password'];?></td>
                        <td><?php echo $employee[$key]['companynumber'];?></td>
                        <td><?php echo $employee[$key]['companyemail'];?></td>
                        <td><?php echo $employee[$key]['panno'];?></td>
                        <td><?php echo $employee[$key]['aadharno'];?></td>
                        <td><?php echo $employee[$key]['bankname'];?></td>
                        <td><?php echo $employee[$key]['branchname'];?></td>
                        <td><?php echo $employee[$key]['ifsc'];?></td>
                        <td><?php echo $employee[$key]['accountnumber'];?></td>
                        <td><?php echo $employee[$key]['visaexpirydate'];?></td>
                      
													
													
													

						 <td><a href="<?php echo base_url('Branch/conveyancelist/'.base64_encode($employee[$key]['employeeid']).'');?>">Task Details</a></td>
						 <td><a href="<?php echo base_url('Branch/updatebdm/'.base64_encode($employee[$key]['employeeid']).'');?>">Update</a></td>

						 <td><a onclick="return confirm('are you sure?')" href="<?php echo base_url('Branch/deletebdm/'.base64_encode($employee[$key]['employeeid']).'');?>">Delete</a></td>

												
													
													
                                                </tr>  
                                                
                                           <?php endforeach;?>      
                                                
                                       
                               
                                            </tbody>
                                        </table>
                                        
                                    </div> <!-- end card body-->
                                </div> <!-- end card -->
                            </div><!-- end col-->
                        </div>
                        <!-- end row-->
    
                        
                        
                        
                        
        </div> <!-- container -->

        </div> <!-- content -->

        <!-- Footer Start -->
        <?php get_template('templates/footer');?>
        <!-- end Footer -->
                
     
                
                
                
                
                
                

        

        </div>

        </div>
         <!--  js -->
              <?php get_template('templates/jsForm');?>
        <!--  js -->

           
        <script>
            
            document.getElementById('yourBox').onchange = function() 
            {
                document.getElementById('calltype').disabled = !this.checked;
                document.getElementById('allocation').disabled = !this.checked;
            };
            
        </script>
		
		
		        
        <script>
				var timeout = 5000; // in miliseconds (3*1000)
				$('#flash_style').delay(timeout).fadeOut(3000);
        </script>

        
    </body>
</html>