<!DOCTYPE html>
<html lang="en">
    <head>
        <?php get_template('templates/header');?>
        <?php get_template('templates/css');?>
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
                                    <h4 class="page-title">Update Services Details</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 


            <div class="row">
                <div class="col-12">
                    <div class="timeline" dir="ltr">

                        <div class="container" id="form_padding">                                  
                                
                                     <p style="color:#CC0000;text-align:center;" id="error"></p>
                    <?php echo form_open('Branch/updateservices/', 'class="form-horizontal" role="form" id="updatebdm"'); ?>
                            
                            
                            
                              
                                
                            
                            
                            

        <div class="form-group row">
            <label for="select" class="col-md-3 control-label" id="form_highlight">Sales / Services</label>
            <div class="col-md-9">
                <select  class="form-control" id="selectemp" placeholder="select" name="select" >
                    <option value="Sales">Sales</option>
                    <option value="Services">Services</option>
                </select>
            </div>
        </div>    


        <div class="form-group row">
            <label for="employeeid" class="col-md-3 control-label">Employee ID</label>
            <div class="col-md-9">
                <input type="text" class="form-control" id="employeeid" placeholder="Employee ID" name="employeeid" value="<?php echo $employeeUpdateListing['employeeid'];?>" readonly>
            </div>
        </div> 

                            
                            
                            
        <div class="form-group row">
            <label for="employeeid" class="col-md-3 control-label">Branch Name</label>
            <div class="col-md-9">
                <input type="text" class="form-control" id="selectbranch" placeholder="Branch Name" name="selectbranch" value="<?php echo $employeeUpdateListing['selectbranch'];?>" readonly>
            </div>
        </div> 
                       
                            
        <div class="form-group row">
            <label for="employeeid" class="col-md-3 control-label">Reporting Manager</label>
            <div class="col-md-9">
                <input type="text" class="form-control" id="reportingmanager" placeholder="Reporting Manager" name="reportingmanager" value="<?php echo $employeeUpdateListing['reportingmanager'];?>" readonly>
            </div>
        </div> 



                            
<!--
        <div class="form-group row">
            <label for="reportingmanager" class="col-md-3 control-label" id="follow_heading">Reporting Manager</label>
            <div class="col-md-9">
                <select  class="form-control" id="reportingmanager" placeholder="Reporting Manager" name="reportingmanager">
                    <option>Manager 1</option>
                    <option>Manager 2</option>
                    <option>Manager 3</option>
                    <option>Manager 4</option>
                    <option>Manager 5</option>
                </select>
            </div>
        </div>                     
-->

                            



        <div class="form-group row">
            <label for="firstname" class="col-md-3 control-label">First Name</label>
            <div class="col-md-9">
                <input type="text" class="form-control" id="firstname" placeholder="First Name" name="firstname" value="<?php echo $employeeUpdateListing['firstname'];?>">
            </div>
        </div>  

        <div class="form-group row">
            <label for="lastname" class="col-md-3 control-label">Last Name</label>
            <div class="col-md-9">
                <input type="text" class="form-control" id="lastname" placeholder="Last Name" name="lastname" value="<?php echo $employeeUpdateListing['lastname'];?>">
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
            <label for="gender" class="col-md-3 control-label">Gender</label>
            <div class="col-md-9">                                        

                    <select  class="form-control" id="gender" placeholder="Gender" name="gender">
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select>
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
                    <input  type="text" class="form-control date" id="mobilenumber" name="mobilenumber" placeholder="Mobile Number" value="<?php echo $employeeUpdateListing['mobilenumber'];?>">
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
            <label for="fname" class="col-md-3 control-label">Password</label>
             <div class="col-md-9">
                <input type="text" class="form-control" id="password" placeholder="Password" name="password" value="<?php echo $employeeUpdateListing['password'];?>">
             </div>
        </div>  
                            
                        

        <div class="form-group row">
            <label for="fname" class="col-md-3 control-label">Company Phone Number</label>
             <div class="col-md-9">
                <input type="text" class="form-control" id="companynumber" placeholder="Company Phone Number" name="companynumber" value="<?php echo $employeeUpdateListing['companynumber'];?>" readonly>
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
                        <input  type="text" class="form-control date" id="ifsc" name="ifsc" placeholder="IFSC" value="<?php echo $employeeUpdateListing['ifsc'];?>" readonly>
                    </div>
                    <div class="col-md-5 sm-m-t-10" id="input_align_top">
                        <input  type="number" class="form-control date" id="accountnumber" name="accountnumber" placeholder="Account Number" value="<?php echo $employeeUpdateListing['accountnumber'];?>">
                    </div>
                </div>
            </div>
        </div>

        </div>

                                
                                
        <div class="form-group row">
            <label for="fname" class="col-md-3 control-label" id="form_highlight">If No:</label>
        </div>      





        <div class="form-group row">
            <label for="fname" class="col-md-3 control-label"> Are you a   permanent resident? </label>
             <div class="col-md-9">
                <input type="text" class="form-control" id="permanentresident" placeholder="Permanent Resident" name="permanentresident" value="<?php echo $employeeUpdateListing['permanentresident'];?>" >
             </div>
        </div> 


        <div class="form-group row">
            <label for="fname" class="col-md-3 control-label">Do you have a working Visa? Expiry date:</label>
             <div class="col-md-9">
                <input type="date" class="form-control" id="visaexpirydate" placeholder="Visa Expiry date" name="visaexpirydate" value="<?php echo $employeeUpdateListing['visaexpirydate'];?>">
             </div>
        </div>  


        <div class="form-group row">
            <label for="fname" class="col-md-3 control-label">Any Restrictions? </label>
             <div class="col-md-9">
                <input type="text" class="form-control" id="restrictions" placeholder="Any Restrictions" name="restrictions" value="<?php echo $employeeUpdateListing['restrictions'];?>">
             </div>
        </div>  


        <div class="form-group row">
            <label for="fname" class="col-md-3 control-label">Next of Spouse / Father / Mother </label>
             <div class="col-md-9">
                <input type="text" class="form-control" id="family" placeholder="Spouse / Father / Mother" name="family" value="<?php echo $employeeUpdateListing['family'];?>">
             </div>
        </div> 


        <div class="form-group row">
            <label for="fname" class="col-md-3 control-label">Relationship</label>
             <div class="col-md-9">
                <input type="text" class="form-control" id="relationship" placeholder="Relationship" name="relationship" value="<?php echo $employeeUpdateListing['relationship'];?>">
             </div>
        </div>  

        <div class="form-group row">
            <label for="fname" class="col-md-3 control-label">Address</label>
             <div class="col-md-9">
                <input type="text" class="form-control" id="addressdetails" placeholder="Address Details" name="addressdetails" value="<?php echo $employeeUpdateListing['addressdetails'];?>">
             </div>
        </div>  



        <div class="form-group row">
            <label class="col-md-3 control-label">City / State</label>
            <div class="col-md-9">

                <div class="row">
                    <div class="col-md-5" id="input_align_top">
                        <input  type="text" class="form-control date" id="city" name="city" placeholder="City" value="<?php echo $employeeUpdateListing['city'];?>">
                    </div>
                    <div class="col-md-5 sm-m-t-10" id="input_align_top">
                        <input  type="text" class="form-control date" id="state" name="state" placeholder="State" value="<?php echo $employeeUpdateListing['state'];?>">
                    </div>
                </div>
            </div>
        </div>


        <div class="form-group row">
            <label class="col-md-3 control-label">Pincode / Home Phone No</label>
            <div class="col-md-9">

                <div class="row">
                    <div class="col-md-5" id="input_align_top">
                        <input  type="number" class="form-control date" id="pincodeno" name="pincodeno" placeholder="Pincode"  value="<?php echo $employeeUpdateListing['pincodeno'];?>">
                    </div>
                    <div class="col-md-5 sm-m-t-10" id="input_align_top">
                        <input  type="text" class="form-control date" id="homephoneno" name="homephoneno" placeholder="Home Phone No"  value="<?php echo $employeeUpdateListing['homephoneno'];?>">
                    </div>
                </div>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-md-3 control-label">Mobile / Work</label>
            <div class="col-md-9">

                <div class="row">
                    <div class="col-md-5" id="input_align_top">
                        <input  type="number" class="form-control date" id="mobile" name="mobile" placeholder="Mobile" value="<?php echo $employeeUpdateListing['mobile'];?>">
                    </div>
                    <div class="col-md-5 sm-m-t-10" id="input_align_top">
                        <input  type="text" class="form-control date" id="work" name="work" placeholder="Work" value="<?php echo $employeeUpdateListing['work'];?>">
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
                                <!-- end timeline -->
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->
                        
                    </div> <!-- container -->

                </div> <!-- content -->

               <!-- Footer Start -->
        <?php get_template('templates/footer');?>
        <!-- end Footer -->

        </div>

        </div>
         <!--  js -->
               <?php get_template('templates/js');?>
        <!--  js -->

       <script>
        function showDiv(divId, element)
{
    document.getElementById(divId).style.display = element.value == "Band1" ? 'block' : 'none';
}
        </script>
        
     
        
        <script>
            $("#selectemp").val("<?php echo $employeeUpdateListing['select'];?>");
            $("#selectbranch").val("<?php echo $employeeUpdateListing['selectbranch'];?>");
            $("#reportingmanager").val("<?php echo $employeeUpdateListing['reportingmanager'];?>");
            $("#gender").val("<?php echo $employeeUpdateListing['gender'];?>");
        </script>


        
    </body>
</html>