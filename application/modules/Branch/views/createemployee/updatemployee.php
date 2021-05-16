<!DOCTYPE html>
<html lang="en">
    <head>
        <?php get_template('templates/header');?>
        <?php get_template('templates/cssForms');?>
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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Create Employee</a></li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Update Employee Details</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 


            <div class="row">
                <div class="col-12">
                    <div class="timeline" dir="ltr">

                        <div class="container" id="form_padding">                                  
                                
                                     <p style="color:#CC0000;text-align:center;" id="error"></p>
                    <?php echo form_open('Branch/updateemployee/', 'class="form-horizontal" role="form" id="updatebdm"'); ?>
                            

        <div class="form-group row">
            <label for="select" class="col-md-3 control-label" id="form_highlight">Sales / Services</label>
            <div class="col-md-9">
                <select  class="form-control" id="mydropdownlist" placeholder="select" name="select" >
                    <option value="Sales">Sales</option>
                    <option value="Services">Services</option>
                </select>
            </div>
        </div>    


        <div class="form-group row">
            <label for="employeeid" class="col-md-3 control-label"> ID</label>
            <div class="col-md-9">
                <input type="text" class="form-control" id="id" placeholder="Employee ID" name="id" value="<?php echo $employeeUpdateListing['id'];?>" readonly>
            </div>
        </div> 

        <div class="form-group row">
            <label for="employeeid" class="col-md-3 control-label">Employee ID</label>
            <div class="col-md-9">
                <input type="text" class="form-control" id="employeeid" placeholder="Employee ID" name="employeeid" value="<?php echo $employeeUpdateListing['employeeid'];?>" readonly>
            </div>
        </div> 


        <div class="form-group row">
            <label for="employeeid" class="col-md-3 control-label">Barnch Name</label>
            <div class="col-md-9">
                <input type="text" class="form-control" id="selectbranch" placeholder="Branch Name" name="selectbranch" value="<?php echo $employeeUpdateListing['selectbranch'];?>" readonly>
            </div>
        </div> 





        <div class="form-group row">
            <label for="firstname" class="col-md-3 control-label">Team Name</label>
            <div class="col-md-9">
                <input type="text" class="form-control" id="teamname" placeholder="Team Name" name="teamname" value="<?php echo $employeeUpdateListing['teamname'];?>">
            </div>
        </div>  

        <div class="form-group row">
            <label for="firstname" class="col-md-3 control-label">First Name</label>
            <div class="col-md-9">
                <input type="text" class="form-control" id="firstname" placeholder="First Name" name="firstname" value="<?php echo $employeeUpdateListing['firstname'];?>">
            </div>
        </div>  



        <div class="form-group row">
            <label for="employeenumber" class="col-md-3 control-label">Employee Number</label>
            <div class="col-md-9">
                <input type="text" class="form-control" id="employeenumber" placeholder="Employee Number" name="employeenumber" value="<?php echo $employeeUpdateListing['employeenumber'];?>">
            </div>
        </div>



        <div class="form-group row">
            <label for="joiningdate" class="col-md-3 control-label">Date of Joining</label>
            <div class="col-md-9">
                <input type="date" class="form-control date" id="joiningdate"  placeholder="Date of Joining"  name="joiningdate" value="<?php echo $employeeUpdateListing['joiningdate'];?>" readonly> 
            </div>
        </div>  


        <div class="form-group row">
            <label for="position" class="col-md-3 control-label">Position Title</label>
            <div class="col-md-9">
                <input type="text" class="form-control" id="position" placeholder="Position Title" name="position" value="<?php echo $employeeUpdateListing['position'];?>">
            </div>
        </div>
							
							
        <div class="form-group row">
            <label for="position" class="col-md-3 control-label">Gender</label>
            <div class="col-md-9">
                <input type="text" class="form-control" id="gender" placeholder="Gender" name="gender" value="<?php echo $employeeUpdateListing['gender'];?>">
            </div>
        </div>  




                 



        <div class="form-group row">
            <label for="birthday" class="col-md-3 control-label">Date of Birth</label>
            <div class="col-md-9">
                <input type="date" class="form-control date" id="birthday"  placeholder="Date of Birth"  name="birthday" value="<?php echo $employeeUpdateListing['birthday'];?>">
            </div>
        </div>



        <div class="form-group row">
            <label for="address" class="col-md-3 control-label">Address</label>
             <div class="col-md-9">
                <input type="text" class="form-control" id="address" placeholder="Address" name="address" value="<?php echo $employeeUpdateListing['address'];?>">
             </div>
        </div>  



        <div class="form-group row">
             <label for="area" class="col-md-3 control-label">Area</label>
             <div class="col-md-9">
                <input type="text" class="form-control" id="area" placeholder="Area" name="area" value="<?php echo $employeeUpdateListing['area'];?>">
             </div>
        </div>  


        <div class="form-group row">
            <label class="col-md-3 control-label">State /Pincode</label>
            <div class="col-md-9">
                <div class="row">
                    <div class="col-md-5" id="input_align_top">
                        <input  type="text" class="form-control date" id="state" name="state" placeholder="State" value="<?php echo $employeeUpdateListing['state'];?>">
                    </div>
                    <div class="col-md-5 sm-m-t-10" id="input_align_top">
                        <input  type="text" class="form-control date" id="pincode" name="pincode" placeholder="Pincode" value="<?php echo $employeeUpdateListing['pincode'];?>">
                    </div>
                </div>
            </div>
        </div>


        <div class="form-group row">
            <label class="col-md-3 control-label">Home Phone / Mobile</label>
            <div class="col-md-9">
                <div class="row">
                    <div class="col-md-5" id="input_align_top">
                        <input  type="number" class="form-control date" id="homephone" name="homephone" placeholder="Home Phone" value="<?php echo $employeeUpdateListing['homephone'];?>">
                    </div>
                    <div class="col-md-5 sm-m-t-10" id="input_align_top">
                    <input  type="number" class="form-control date" id="mobilenumber" name="mobilenumber" placeholder="Mobile Number" value="<?php echo $employeeUpdateListing['mobilenumber'];?>">
                    </div>
                </div>
            </div>
        </div>




        <div class="form-group row">
            <label for="fname" class="col-md-3 control-label">Email Address</label>
             <div class="col-md-9">
                <input type="text" class="form-control" id="emailaddress" placeholder="Email Address" name="emailaddress" value="<?php echo $employeeUpdateListing['emailaddress'];?>">
             </div>
        </div>  
                            
                        

        <div class="form-group row">
            <label for="fname" class="col-md-3 control-label">Company Phone Number</label>
             <div class="col-md-9">
                <input type="number" class="form-control" id="companynumber" placeholder="Company Phone Number" name="companynumber" value="<?php echo $employeeUpdateListing['companynumber'];?>">
             </div>
        </div>  


        <div class="form-group row">
            <label for="fname" class="col-md-3 control-label">Company Email</label>
             <div class="col-md-9">
                <input type="email" class="form-control" id="companyemail" placeholder="Company Email" name="companyemail" value="<?php echo $employeeUpdateListing['companyemail'];?>">
             </div>
        </div>  



          <div class="form-group row">
            <label class="col-md-3 control-label">Pan No / Aadhar No </label>
            <div class="col-md-9">

                <div class="row">
                    <div class="col-md-5" id="input_align_top">
                        <input  type="text" class="form-control date" id="panno" name="panno" placeholder="Pan Number" value="<?php echo $employeeUpdateListing['panno'];?>">
                    </div>

                    <div class="col-md-5 sm-m-t-10" id="input_align_top">
                        <input  type="number" class="form-control date" id="aadharno" name="aadharno" placeholder="Aadhar Number" value="<?php echo $employeeUpdateListing['aadharno'];?>">
                    </div>
                </div>
            </div>
        </div>
                                
                                
                                
        <div class="bank_details">

        <div class="form-group row">
            <label for="fname" class="col-md-3 control-label" id="form_highlight">Bank Details</label>
        </div>  

         <div class="form-group row">
            <label class="col-md-3 control-label">Bank Name  / Branch </label>
            <div class="col-md-9">

                <div class="row">
                    <div class="col-md-5" id="input_align_top">
                        <input  type="text" class="form-control date" id="bankname" name="bankname" placeholder="Bank Name" value="<?php echo $employeeUpdateListing['bankname'];?>">
                    </div>
                    <div class="col-md-5 sm-m-t-10" id="input_align_top">
                        <input  type="text" class="form-control date" id="branchname" name="branchname" placeholder="Branch Name" value="<?php echo $employeeUpdateListing['branchname'];?>">
                    </div>
                </div>
            </div>
        </div>


         <div class="form-group row">
            <label class="col-md-3 control-label">IFSC / Account Number </label>
            <div class="col-md-9">

                <div class="row">
                    <div class="col-md-5" id="input_align_top">
                        <input  type="text" class="form-control date" id="ifsc" name="ifsc" placeholder="IFSC" value="<?php echo $employeeUpdateListing['ifsc'];?>">
                    </div>
                    <div class="col-md-5 sm-m-t-10" id="input_align_top">
                        <input  type="number" class="form-control date" id="accountnumber" name="accountnumber" placeholder="Account Number" value="<?php echo $employeeUpdateListing['accountnumber'];?>">
                    </div>
                </div>
            </div>
        </div>

        </div>

                                
                         
                            
                            
                                
                              <br>
                        <div class="row">
                            <div class="col-md-3">
                                <p>I hereby certify that the information above is true and accurate. </p>
                            </div>
                            <div class="col-md-9">
                           <?php echo form_input(array('type' => 'submit','id' => 'submit_button', 'name' => 'submit', 'value' => 'Submit', 'class' => 'btn btn-success')); ?>
                            </div>
                        </div>
             <?php echo form_close(); ?> 
</div>



                                </div>
                            </div> 
                        </div>
                      
                    </div> 

                </div> 

               <!-- Footer Start -->
        <?php get_template('templates/footer');?>
        <!-- end Footer -->

        </div>

        </div>
         <!--  js -->
               <?php get_template('templates/jsform');?>
        <!--  js -->

        
     
        
           <script>
            $("#mydropdownlist").val("<?php echo $employeeUpdateListing['select'];?>");
            $("#selectbranchs").val("<?php echo $employeeUpdateListing['selectbranch'];?>");
            $("#reportingmanager").val("<?php echo $employeeUpdateListing['reportingmanager'];?>");
            $("#gender").val("<?php echo $employeeUpdateListing['gender'];?>");
        </script>

                    <script> 
                                $("#gender").val("<?php echo $employeeUpdateListing['gender'];?>");
                              
                    </script>

        
    </body>
</html>