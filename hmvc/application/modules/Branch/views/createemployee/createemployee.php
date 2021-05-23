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
                                    <h4 class="page-title">Create Employee / Staff</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 


            <div class="row">
                <div class="col-12">
                    <div class="timeline" dir="ltr">

                        <div class="container" id="form_padding">   
                            
                            
                            
                            
                                                        <?php 
                                                            $year = date('Y');
                                                            $month = date('m');
                                                            $day = date('d');
                                                            $today = $year . '-' . $month . '-' . $day;
                                                        ?>    
                            
                            
                            
                            
                            
                             <?php if($this->session->flashdata('msg')): ?>
                                        <p id="flash_style" class="hideit"><?php echo $this->session->flashdata('msg'); ?></p>
                                <?php endif; ?>
                            
                            
                            
                            
                                
<!--                                     <p style="color:#CC0000;text-align:center;" id="error"></p>-->
                    <?php echo form_open('Branch/insertemployee/', 'class="form-horizontal" role="form" id="insertemployee"'); ?>
                            
                            
                                
                                <div class="form-group row">
                                    <label for="select" class="col-md-3 control-label" id="form_highlight">Sales / Services</label>
                                    <div class="col-md-9">
                                        <select  class="form-control" id="select" placeholder="Select" name="select">
                                            <option value="Sales">Sales</option>
                                            <option value="Services">Services</option>
                                        </select>
                                    </div>
                                </div>    
                            
                            
                                <div class="form-group row">
                                    <label for="employeeid" class="col-md-3 control-label">Employee ID</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" id="employeeid" placeholder="Employee ID" name="employeeid" value="<?php echo $maxCEId;?>" readonly>
                                    </div>
                                </div> 
                            
                            
                            
                                <div class="form-group row">
                                    <label for="selectbranch" class="col-md-3 control-label">Branch Name</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" id="selectbranch" placeholder="Branch name" name="selectbranch" value="<?php echo $branchname['selectbranch'];?>" readonly>
                                    </div>
                                </div> 

                            
                                
                                
                                 
                                
                                
                          
                                
                                <div class="form-group row">
                                    <label for="firstname" class="col-md-3 control-label">First Name</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" id="firstname" placeholder="First Name" name="firstname" autocomplete="off">
                                    </div>
                                </div>  
                                       
                                <div class="form-group row">
                                    <label for="lastname" class="col-md-3 control-label">Last Name</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" id="lastname" placeholder="Last Name" name="lastname" autocomplete="off">
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <label for="employeenumber" class="col-md-3 control-label">Employee Number</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" id="employeenumber" placeholder="Employee Number" name="employeenumber" autocomplete="off">
                                    </div>
                                </div>
                            
                                
                                
                                <div class="form-group row">
                                    <label for="joiningdate" class="col-md-3 control-label">Date of Joining</label>
                                    <div class="col-md-9">
                                        <input type="date" class="form-control" id="joiningdate"  placeholder="Date of Joining"  value="<?php echo $today; ?>" max="<?php echo $today; ?>" name="joiningdate" autocomplete="off">
                                    </div>
                                </div>  
                                      
                                
                                <div class="form-group row">
                                    <label for="position" class="col-md-3 control-label">Position Title</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" id="position" placeholder="Position Title" name="position" autocomplete="off">
                                    </div>
                                </div>  
                                      
                              
                                   
                                
                                
                                <div class="form-group row">
                                    <label for="gender" class="col-md-3 control-label">Gender</label>
                                    <div class="col-md-9">                                        
                                            <select  class="form-control" id="gender" placeholder="Gender" name="gender">
                                                <option>Male</option>
                                                <option>female</option>
                                            </select>
                                    </div>
                                </div>  
                            
                               
                                
                                
                                <div class="form-group row">
                                    <label for="birthday" class="col-md-3 control-label">Date of Birth</label>
                                    <div class="col-md-9">
                                        <input type="date" class="form-control" id="birthday"  placeholder="Date of Birth"  name="birthday" max="<?php echo $today; ?>" autocomplete="off">
                                    </div>
                                </div>
                            
                                
                                
                                <div class="form-group row">
                                    <label for="address" class="col-md-3 control-label">Address</label>
                                     <div class="col-md-9">
                                        <input type="text" class="form-control" id="address" placeholder="Address" name="address" autocomplete="off">
                                     </div>
                                </div>  
                                            
                           
                                
                                <div class="form-group row">
                                     <label for="area" class="col-md-3 control-label">Area</label>
                                     <div class="col-md-9">
                                        <input type="text" class="form-control" id="area" placeholder="Area" name="area" autocomplete="off">
                                     </div>
                                </div>  
                                            
                         
                                <div class="form-group row">
                                    <label class="col-md-3 control-label">State /Pincode</label>
                                    <div class="col-md-9">

                                        <div class="row">
                                            <div class="col-md-5" id="input_align_top">
                                                <input  type="text" class="form-control" id="state" name="state" placeholder="State" autocomplete="off">
                                            </div>
                                            <div class="col-md-5 sm-m-t-10" id="input_align_top">
                                                <input  type="number" class="form-control" id="pincode" name="pincode" placeholder="Pincode" autocomplete="off">
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                                                         
                         
                                <div class="form-group row">
                                    <label class="col-md-3 control-label">Home Phone / Mobile</label>
                                    <div class="col-md-9">

                                        <div class="row">
                                            <div class="col-md-5" id="input_align_top">
                                                <input  type="text" class="form-control" id="homephone" name="homephone" placeholder="Home Phone" autocomplete="off"> 
                                            </div>
                                            <div class="col-md-5 sm-m-t-10" id="input_align_top">
                                                <input  type="text" class="form-control" id="mobilenumber" name="mobilenumber" placeholder="Mobile Number" autocomplete="off"> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                
                                          
                                
                                <div class="form-group row">
                                    <label for="fname" class="col-md-3 control-label">Email Address</label>
                                     <div class="col-md-9">
                                        <input type="email" class="form-control" id="emailaddress" placeholder="Email Address" name="emailaddress" autocomplete="off">
                                     </div>
                                </div>  
                                 
                            
                            
                                <div class="form-group row">
                                    <label for="passowrd" class="col-md-3 control-label">Password</label>
                                     <div class="col-md-9">
                                        <input type="text" class="form-control" id="password" placeholder="Password" name="password" autocomplete="off">
                                     </div>
                                </div>  
                            
                        
                                
                                <div class="form-group row">
                                    <label for="fname" class="col-md-3 control-label">Company Phone Number</label>
                                     <div class="col-md-9">
                                        <input type="text" class="form-control" id="companynumber" placeholder="Company Phone Number" name="companynumber" autocomplete="off">
                                     </div>
                                </div>  
                                       
                                
                                <div class="form-group row">
                                    <label for="fname" class="col-md-3 control-label">Company Email</label>
                                     <div class="col-md-9">
                                        <input type="email" class="form-control" id="companyemail" placeholder="Company Email" name="companyemail" autocomplete="off">
                                     </div>
                                </div>  
                                
                                
                                
                                  <div class="form-group row">
                                    <label class="col-md-3 control-label">Pan No / Aadhar No </label>
                                    <div class="col-md-9">

                                        <div class="row">
                                            <div class="col-md-5" id="input_align_top">
                                                <input  type="text" class="form-control" id="panno" name="panno" placeholder="Pan Number" autocomplete="off">
                                            </div>
                                            
                                            <div class="col-md-5 sm-m-t-10" id="input_align_top">
                                                <input  type="number" class="form-control" id="aadharno" name="aadharno" placeholder="Aadhar Number" autocomplete="off">
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
                                                <input  type="text" class="form-control" id="bankname" name="bankname" placeholder="Bank Name" autocomplete="off">
                                            </div>
                                            <div class="col-md-5 sm-m-t-10" id="input_align_top">
                                                <input  type="text" class="form-control" id="branchname" name="branchname" placeholder="Branch Name" autocomplete="off">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                                
                                
                                 <div class="form-group row">
                                    <label class="col-md-3 control-label">IFSC / Account Number </label>
                                    <div class="col-md-9">

                                        <div class="row">
                                            <div class="col-md-5" id="input_align_top">
                                                <input  type="text" class="form-control" id="ifsc" name="ifsc" placeholder="IFSC" autocomplete="off">
                                            </div>
                                            <div class="col-md-5 sm-m-t-10" id="input_align_top">
                                                <input  type="number" class="form-control" id="accountnumber" name="accountnumber" placeholder="Account Number" autocomplete="off">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                </div>
                                
                                
                         
                                
                                
                                
                                   
                                <div class="form-group row">
                                    <label for="fname" class="col-md-3 control-label"> Are you a   permanent resident? </label>
                                     <div class="col-md-9">
                                        <input type="text" class="form-control" id="permanentresident" placeholder="Permanent Resident" name="permanentresident" autocomplete="off">
                                     </div>
                                </div> 
                                
                                
                                <div class="form-group row">
                                    <label for="fname" class="col-md-3 control-label">Do you have a working Visa? Expiry date:</label>
                                     <div class="col-md-9">
                                        <input type="date" class="form-control" id="visaexpirydate" placeholder="Visa Expiry date" name="visaexpirydate" min="<?php echo $today; ?>" autocomplete="off">
                                     </div>
                                </div>  
                                
                            
                                       
                             
                            
                            
                            
                            
                              <br>
                        <div class="row">
                            <div class="col-md-3">
                                <p>I hereby certify that the information above is true and accurate. </p>
                            </div>
                            <div class="col-md-9">
                           <?php echo form_input(array('type' => 'submit','id' => 'submit_button', 'name' => 'login', 'value' => 'Submit', 'class' => 'btn btn-success')); ?>
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
               <?php get_template('templates/jsForm');?>
        <!--  js -->

       <script>
        function showDiv(divId, element)
{
    document.getElementById(divId).style.display = element.value == "Band1" ? 'block' : 'none';
}
        </script>
        
        
        
        
        
                    <!--   form validation Process     -->
                    <!--   form validation Process     -->
                    <!--   form validation Process     -->


        
        















        


        
        
       <script>
            $(function() {
                $("#insertemployee").validate({

                    rules: {
                   

                    employeeid:  {
                            required: !0,
                        },
                        
                        
                    selectbranch:  {
                            required: !0,
                        },
                             
                    firstname:  {
                            required: !0,
                        },
                        
                    lastname:  {
                            required: !0,
                        },
                              
                    employeenumber:  {
                            required: !0,
                        },
                        
                    gender:  {
                            required: !0,
                        },
                        
                    birthday:  {
                            required: !0,
                        },
                        
                    address:  {
                            required: !0,
                        },
                               
                    area:  {
                            required: !0,
                        },
                                      
                    State:  {
                            required: !0,
                        },
                                           
                    pincode:  {
                            required: !0,
                        },  
                        
                    state:  {
                            required: !0,
                        },
                             
                    homephone:  {
                            required: !0,
                        },  
                        
                    mobilenumber:  {
                            required: !0
                          
                        },
                        
                    emailaddress:  {
                            required: !0,
                        },
               
                     password:  {
                            required: !0,
                        }
                    },
                    
                    
                    
                    
                    messages: {
                        
                        
              
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                       
                                       
                       
                           
                            selectbranch: {
                            required: "Please enter selectbranch"
                        }, 
                               
                           
                            firstname: {
                            required: "Please enter First Name"
                        }, 
                                 
                            lastname: {
                            required: "Please enter Last Name"
                        }, 
                                       
                            employeenumber: {
                            required: "Please enter Employee Number"
                        }, 
                                         
                            gender: {
                            required: "Please select gender"
                        }, 
                                              
                            birthday: {
                            required: "Please enter birthday date"
                        }, 
                            
                                           
                            address: {
                            required: "Please enter address"
                        }, 
                                               
                            area: {
                            required: "Please enter area"
                        }, 
                                                    
                            State: {
                            required: "Please enter State"
                        }, 
                                                         
                            pincode: {
                            required: "Please enter pincode"
                        }, 
                                                             
                            homephone: {
                            required: "Please enter homephone"
                        }, 
                                                                  
                            mobilenumber: {
                             required: "Please enter mobile number ",
                            
                            numbersonly: "Only numbers please!"
                        }, 
                                                                        
                            emailaddress: {
                            required: "Please enter emailaddress"
                        }, 
                            
                  
                        
                      
                        
                         
                            password: {
                            required: "Please enter password"
                        }

                    },
//                    success: function(e) {
//                        e.addClass("valid").text("Perfect!")
//                    },
//                  
                });
            });
        </script>
        
                                        <!-- end   form validation Process     -->
                                        <!-- end   form validation Process     -->
                                        <!-- end   form validation Process     -->

        
        
        
           <script>
            var timeout = 5000; // in miliseconds (3*1000)
            $('#flash_style').delay(timeout).fadeOut(3000);
        </script>
        
        
        
        
<!--
           <script>
               // html ->  <span id="errmsgtwo"></span>

            $(document).ready(function () {
            $("#homephone").keypress(function (e) {
            if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
            //display error message
            $("#errmsg").html("Digits Only").show().fadeOut("slow");
            return false;
            }
            });
            });
        
        </script> 
-->

      
        
        
     
      
        
    </body>
</html>