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
                    
                     <?php get_template('templates/top.php');?>
            <!-- end Topbar -->

            <!-- ========== Left Sidebar Start ========== -->
                 
                    <?php get_template('templates/left.php');?>
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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">New Customer</a></li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">New Customer 
										
										
<!--
										
										<?php
											$date = "2010-08-12";
											$d = new DateTime($date);
 											$maa=$d->format( 'F' );
										?>
-->
										
				
										
                                    </h4>
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
                                    
                                        
                                        
<!--                                           <p style="color:#CC0000;text-align:center;" id="error"></p>-->
                        <?php echo form_open('Bdm/insertData/', 'class="form-horizontal" role="form" id="bdminsert"'); ?>
                                             
                                        
                                        
                                        
                        <div class="form-group row">
                            <label for="employeeid" class="col-md-3 control-label">Date</label>
                            <div class="col-md-9">
                                                      
                                <input type="date" class="form-control" id="date" placeholder="date" name="date" value="<?php echo $today; ?>" max="<?php echo $today; ?>" autocomplete="off">
                            </div>
                        </div>                 
                                        
                        <div class="form-group row">
                            <label for="employeeid" class="col-md-3 control-label">Employee ID</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" id="employeeid" placeholder="Employee ID" name="employeeid" value="<?php echo $employee['employeeid'];?>" autocomplete="off" readonly>
                            </div>
                        </div>                    
                                        
                                        
                        <div class="form-group row">
                            <label for="customerid" class="col-md-3 control-label">Branch Name</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" id="branchname" placeholder="Branch Name" name="branchname" value="<?php echo $employee['selectbranch'];?>" autocomplete="off" readonly>
                            </div>
                        </div>
                                        
                        <div class="form-group row">
                            <label for="customerid" class="col-md-3 control-label">BDM Name</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" id="bdmname" placeholder="BDM Name" name="bdmname" value="<?php echo $employee['firstname'];?>" autocomplete="off" readonly>
                            </div>
                        </div>
                                        
                        <div class="form-group row">
                            <label for="customerid" class="col-md-3 control-label">Customer ID</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" id="customerid" placeholder="Customer ID" name="customerid" value="<?php echo $maxCCId ;?>" autocomplete="off" readonly>
                            </div>
                        </div>
                                        
                                        
                                        

                  <div class="form-group row" style="display:none;">
                        <label for="fname" class="col-md-3 control-label">Call Create</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="callcreate" placeholder="New Call" name="callcreate" autocomplete="off" required>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="fname" class="col-md-3 control-label">Source of Call</label>
                        <div class="col-md-9">
                            <select class="form-control" id="sourceofcall" placeholder="Source of Call" name="sourceofcall">
                                <option value="Cold Call">Cold Call</option>
                                <option value="Reference Call">Reference Call</option>
                                <option value="Lead Call">Lead Call</option>
                            </select>
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="jointcall" class="col-md-3 control-label">Joint Call</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="jointcall" placeholder="Join Call" name="jointcall" autocomplete="off">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="fname" class="col-md-3 control-label">Customer name</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="customername" placeholder="Customer Name" name="customername" autocomplete="off">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="fname" class="col-md-3 control-label">Customer Address</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="customeraddress" placeholder="Customer Address" name="customeraddress" autocomplete="off">
                        </div>
                    </div>


                    <div class="form-group row">
                        <label for="fname" class="col-md-3 control-label">Customer Ph No</label>
                        <div class="col-md-9">
                            <input type="tel" class="form-control" id="customerphoneno" placeholder="Customer Phone no" name="customerphoneno" autocomplete="off" > 
                        </div>
                    </div>
										
										
										
										
										
										
										
										
										
										
											
										
										
							
                    <div class="form-group row">
                        <label for="boardschool" class="col-md-3 control-label">Principal Name</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="principalname" placeholder="Correspondent Name" name="principalname" autocomplete="off">
                        </div>
                    </div>
													
                    <div class="form-group row">
                        <label for="boardschool" class="col-md-3 control-label">Principal Mobile No</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="principalnumber" placeholder="Correspondent Mobile no" name="principalnumber" autocomplete="off">
                        </div>
                    </div>
													
                    <div class="form-group row">
                        <label for="boardschool" class="col-md-3 control-label">Principal Name</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="correspondentname" placeholder="Correspondent Name" name="correspondentname" autocomplete="off">
                        </div>
                    </div>
													
                    <div class="form-group row">
                        <label for="boardschool" class="col-md-3 control-label">Principal Mobile No</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="correspondentnumber" placeholder="Correspondent Mobile no" name="correspondentnumber" autocomplete="off">
                        </div>
                    </div>
													
										
										
										

										
										
										
										
										
										
										
										
										
										
										
										
										
										
							
                    <div class="form-group row">
                        <label for="boardschool" class="col-md-3 control-label">Board School follows</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="boardschool" placeholder="Board School follows" name="boardschool" autocomplete="off">
                        </div>
                    </div>
										
							
                    <div class="form-group row">
                        <label for="boardschool" class="col-md-3 control-label">Total no of Students</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="noofstudents" placeholder="Total no of students" name="noofstudents" autocomplete="off">
                        </div>
                    </div>
			
							
                    <div class="form-group row">
                        <label for="boardschool" class="col-md-3 control-label">Average Monthly Fee</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="monthlyfee" placeholder="Average Monthly Fee" name="monthlyfee" autocomplete="off">
                        </div>
                    </div>
			
							
                    <div class="form-group row">
                        <label for="boardschool" class="col-md-3 control-label">Competition Details</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="competitiondetails" placeholder="Competition Details" name="competitiondetails" autocomplete="off">
                        </div>
                    </div>
			
							
                    <div class="form-group row">
                        <label for="boardschool" class="col-md-3 control-label">Management Presentation</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="managementpresentation" placeholder="Management Presentation" name="managementpresentation" autocomplete="off">
                        </div>
                    </div>
			
							
                    <div class="form-group row">
                        <label for="boardschool" class="col-md-3 control-label">Principal Presentation</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="principalpresentation" placeholder="Principal Presentation" name="principalpresentation" autocomplete="off">
                        </div>
                    </div>
											
							
                    <div class="form-group row">
                        <label for="boardschool" class="col-md-3 control-label">Other Presentation</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="otherpresentation" placeholder="Other Presentation" name="otherpresentation" autocomplete="off">
                        </div>
                    </div>
			
										
										
										
																
				
										
										
										
										
										
										
										
										
															
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										

                    <div class="form-group row">
                        <label for="fname" class="col-md-3 control-label">Contact Person</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="contactperson" placeholder="Contact Person" name="contactperson" autocomplete="off">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="fname" class="col-md-3 control-label">Contact Number</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="contactnumber" placeholder="Contact Number" name="contactnumber" autocomplete="off"> 
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="fname" class="col-md-3 control-label">Contact Designation</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="contactdesignation" placeholder="Contact Designation" name="contactdesignation" autocomplete="off">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-md-3 control-label">In / Out Time</label>
                        <div class="col-md-9">

                            <div class="row">
                                <div class="col-md-5" id="input_align_top">
                                    <input type="time" class="form-control" id="intime"  name="intime" autocomplete="off">
                                </div>
                                <div class="col-md-5 sm-m-t-10" id="input_align_top">
                                    <input type="time" class="form-control"  id="outtime" name="outtime"  autocomplete="off">
                                </div>
                            </div>
                            
                        </div>
                    </div>
                                        

                    <div class="form-group row">
                        <label for="fname" class="col-md-3 control-label">Person Contacted</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="personcontacted" placeholder="Person contacted" name="personcontacted" autocomplete="off">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="fname" class="col-md-3 control-label">Call Description</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="persondescription" placeholder="Person Description" name="persondescription" autocomplete="off">
                        </div>
                    </div>


                    <div class="form-group row">
                        <label for="fname" class="col-md-3 control-label">Product Type</label>
                        <div class="col-md-9">
                            <select class="form-control" id="producttype" name="producttype" placeholder="Product Type">
                                <option></option>
                                <?php foreach ($productname as $key=>$value):?>  
                                        <option><?php echo $productname[$key]['productname'];?></option>
                                <?php endforeach;?>
                            </select>
                        </div>
                    </div>
                                                                                
                                        
                    <div class="form-group row">
                    <label for="fname" class="col-md-3 control-label">Status of the call</label>
                    <div class="col-md-9">
                        <select class="form-control" id="fname" name="callstatus" placeholder="call status" onchange="showDiv1('hidden_div', this)">
                            <option value="Sign Up">Sign Up</option>
                            <option >Negotiation</option>
                            <option>Follow Up</option>
                            <option>Proposal Call</option>
                            <option>Demo Call</option>
                            <option selected>Cold Call</option>
                            <option>Support Call</option>
                        </select>
                    </div>
                    </div>



                    <div id="hidden_div">
                        <div class="form-group row">
                            <label for="productvalue" class="col-md-3 control-label" id="follow_heading">Product Name</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" id="productname" placeholder="Product Name" name="productname" autocomplete="off">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="productvalue" class="col-md-3 control-label" id="follow_heading">Product Value</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" id="productvalue" placeholder="Product Value" name="productvalue" autocomplete="off" readonly>
                            </div>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="fname" class="col-md-3 control-label">Priority status</label>
                        <div class="col-md-9">
                            <select class="form-control" id="prioritystatus" name="prioritystatus" placeholder="Priority Status">
                                <option value="P1">P1 (0 to 7 Days)</option>
                                <option value="P2">P2 (7 to 14 Days)</option>
                                <option value="P3">P3 (14 to 21 Days)</option>
                                <option value="P4">P4 (21 to 28 Days)</option>
                                <option value="P5">P5 (28 to 35 Days)</option>
                                <option value="P6">P6 (35 to 45 Days)</option>
                                <option value="P7">P7 ( > 45 Days)</option>
                                <option value="ZNI">ZNI ( Not Interested )</option>
                                <option value="Sign Up">Sign Up</option>
                            </select>
                        </div>
                    </div>

                <div class="form-group row">
                    <label class="col-md-3 control-label">Next appointment date and time</label>
                    <div class="col-md-9">

                        <div class="row">
                            
                            <div class="col-md-5" id="input_align_top">
                                <input id="nextappointmentdate" type="date" class="form-control" name="nextappointmentdate" placeholder="Next appointment date" min="<?php echo $today; ?>" autocomplete="off">
                            </div>
                            
                            <div class="col-md-5 sm-m-t-10" id="input_align_top">
                                <input id="nextappointmenttime" type="time" class="form-control" name="nextappointmenttime" placeholder="Next appointment time" autocomplete="off">
                            </div>
                            
                        </div>
                    </div>
                </div>

                        <div class="form-group row">
                            <label for="fname" class="col-md-3 control-label">KMs Travelled from previous call</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" id="previouscallkms" placeholder="KMs Travelled from previous call" name="previouscallkms" autocomplete="off">
                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="fromplace" class="col-md-3 control-label">From Place</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" id="fromplace" placeholder="From Place" name="fromplace" autocomplete="off">
                            </div>
                        </div>  



                        <div class="form-group row">
                            <label for="toplace" class="col-md-3 control-label">To place</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" id="toplace" placeholder="To Place" name="toplace" autocomplete="off"> 
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="fname" class="col-md-3 control-label">Mode of Conveyance</label>
                            <div class="col-md-9">
                                <select class="form-control" id="modeofconveyance" name="conveyancemode" placeholder="Conveyance status" onchange="showDiv2('hidden_others', this)">
                                    <option value="Bike">Bike</option>
                                    <option value="car">Car</option>
                                    <option value="Others">Others</option>
                                </select>
                            </div>
                        </div>
										
											
                        <div class="form-group row hidden">
                            <label for="toplace" class="col-md-3 control-label">Bike</label> 
                            <div class="col-md-9">
                                <input type="text" class="form-control" id="bike" placeholder="Bike" name="bike" value="<?php echo $conveyance['bike'];?>" autocomplete="off" readonly>
                            </div>
                        </div>	
										
												
                        <div class="form-group row hidden">
                            <label for="toplace" class="col-md-3 control-label">Car</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" id="car" placeholder="Car" name="car" value="<?php echo $conveyance['car'];?>" autocomplete="off" readonly>
                            </div>
                        </div>	
											
										
										
										


                        <div id="hidden_others">
                            <div class="form-group row">
                                <label for="enteramount" class="col-md-3 control-label" id="follow_heading">Enter Amount</label>
                                <div class="col-md-9">
                                    <input type="number" class="form-control" id="amount" placeholder="Enter Amount" name="amount" autocomplete="off">
                                </div>
                            </div>  
                        </div>
                                        
                             
                                        
                                        
                               
                                        
                                        
                                        


                            <br>
                            <div class="row">
                                <div class="col-md-3">
                                    <p>I hereby certify that the information above is true and accurate. </p>
                                </div>
                                <div class="col-md-9">
                                    <?php echo form_input(array('type' => 'submit','id' => 'submit_button', 'name' => 'Submit', 'value' => 'Submit', 'class' => 'btn btn-success')); ?>
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
        
        
                    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/is-in-viewport/3.0.0/isInViewport.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/additional-methods.min.js"></script>



                <!--  js -->
        
        
        
                                                <!--   form validation Process     -->
                                                <!--   form validation Process     -->
                                                <!--   form validation Process     -->


        
        
       <script>
            $(function() {
                $("#bdminsert").validate({

                    rules: {
                   
                    callcreate:  {
                            required: !0,
                        },
    
                     sourceofcall:  {
                            required: !0,
                        },    

                     

                     customername:  {
                            required: !0,
                        },    
                        
                     customeraddress:  {
                            required: !0,
                        }, 
                        
                     customerphoneno:  {
                             required: !0,
                        },    

                     contactperson:  {
                            required: !0,
                        },    
                        
                     contactnumber:  {
                            required: !0
                        },    
                        
                     contactdesignation:  {
                            required: !0,
                        },  
                        
                     personcontacted:  {
                            required: !0
                        },    

                     persondescription:  {
                            required: !0,
                        },    

                     producttype:  {
                            required: !0,
                        },    

                     producttype:  {
                            required: !0,
                        },    
                                      
                     callstatus:  {
                            required: !0,
                        }
                    },
                    
                    
                    
                    
                    messages: {
                     
                            callcreate: {
                            required: "Please enter callcreate"
                        }, 
                            
                            sourceofcall: {
                            required: "Please enter sourceofcall"
                        }, 
                               
                          
                            customername: {
                            required: "Please enter customername"
                        }, 
                        
                            customeraddress: {
                            required: "Please enter customeraddress"
                        }, 
                        
                            customerphoneno: {
                            required: "Please enter mobile number ",
                            numbersonly: "Only numbers please!"
                        }, 
                        
                            contactperson: {
                            required: "Please enter contactperson"
                        }, 
                        
                            contactnumber: {
                            required: "Please enter  contact number ",
                            numbersonly: "Only numbers please!"
                        }, 
                        
                            contactdesignation: {
                            required: "Please enter designation"
                        }, 
                        
                            personcontacted: {
                            required: "Please enter person contacted"
                        }, 
                        
                            persondescription: {
                            required: "Please enter person description"
                        }, 
                             
                            producttype: {
                            required: "Please enter product type"
                        }, 
                        
                            callstatus: {
                            required: "Please enter source of call"
                        }

                    },
                   
                });
            });
        </script>
        
                                        <!-- end   form validation Process     -->
                                        <!-- end   form validation Process     -->
                                        <!-- end   form validation Process     -->

          <script>
            function showDiv1(divId, element)
            {
                document.getElementById(divId).style.display = element.value == "Sign Up" ? 'block' : 'none';
            }
        </script>

        
         <script>
            function showDiv2(divId, element)
            {
                document.getElementById(divId).style.display = element.value == "Others" ? 'block' : 'none';
            }
        </script>

        <script type="text/javascript">
            $(document).ready(function()
            {
                $('#product').autocomplete({
                    source: "<?php echo base_url('Bdm/get_autocompleteproduct');?>",
                    select: function (event, ui) {
                        $('[name="productname"]').val(ui.item.label); 
                        $('[name="productvalue"]').val(ui.item.productvalue); 
                    }
                });
            });
        </script>
        
        
          
        <script>
            var timeout = 5000; // in miliseconds (3*1000)
            $('#flash_style').delay(timeout).fadeOut(3000);
        </script>
        
<!--
          <script>
            $(document).ready(function () {
              $("#contactnumber").keypress(function (e) {
                    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                        //display error message
                        $("#errmsgtwo").html("Digits Only").show().fadeOut("slow");
                   return false;
                }
               });
            });
        </script> 
        
        
          <script>
            $(document).ready(function () {
               $("#customerphoneno").keypress(function (e) {
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