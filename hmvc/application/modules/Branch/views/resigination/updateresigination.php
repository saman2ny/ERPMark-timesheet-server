<!DOCTYPE html>
<html lang="en">
    <head>
            <title><?php echo $title;?></title>
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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Update Resigination</a></li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Update Clients Details</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 


                        <div class="row">
                            <div class="col-12">
                                <div class="timeline" dir="ltr">

                                    <div class="container" id="form_padding">                                  


                                           <p style="color:#CC0000;text-align:center;" id="error"></p>
                        <?php echo form_open('Branch/updateresigination/', 'class="form-horizontal" role="form" id="updateclients"'); ?>
                                             
                                        
                                        
                                        
          <div class="form-group row">
                <label for="customerid" class="col-md-3 control-label">Employee ID</label>
                <div class="col-md-9">
                    <input type="text" class="form-control" id="employeeid" placeholder="Employee ID" name="employeeid" value="<?php echo $updateresigination['employeeid'];?>" autocomplete="off" >
                </div>
            </div>

                                                          
                                        
          <div class="form-group row">
                <label for="customerid" class="col-md-3 control-label"> ID</label>
                <div class="col-md-9">
                    <input type="text" class="form-control" id="id" placeholder="ID" name="id" value="<?php echo $updateresigination['id'];?>" autocomplete="off" >
                </div>
            </div>

                                                            
                                        
                                        
   
                                                  
          <div class="form-group row">
                <label for="customerid" class="col-md-3 control-label">Employee Name</label>
                <div class="col-md-9">
                    <input type="text" class="form-control" id="empname" placeholder="Employee Name" name="empname" value="<?php echo $updateresigination['empname'];?>" autocomplete="off" >
                </div>
          </div>
                                       
          <div class="form-group row">
                <label for="customerid" class="col-md-3 control-label">No Leave</label>
                <div class="col-md-9">
                    <input type="text" class="form-control" id="department" placeholder="department" name="department" value="<?php echo $updateresigination['department'];?>" autocomplete="off">
                </div>
          </div>
                               

          
                                            
                                                        
          <div class="form-group row">
                <label for="customerid" class="col-md-3 control-label">Reason</label>
                <div class="col-md-9">
                    <input type="text" class="form-control" id="reason" placeholder="reason" name="reason" value="<?php echo $updateresigination['reason'];?>" autocomplete="off" >
                </div>
          </div>
                               
               
                                        
                                        
                                        
                                        
                                        
                                        
                                               <div class="form-group row">
                <label for="customerid" class="col-md-3 control-label">From Date</label>
                <div class="col-md-9">
                    <input type="date" class="form-control" id="notice_date" placeholder="notice_date" name="notice_date" value="<?php echo $updateresigination['notice_date'];?>" autocomplete="off" >
                </div>
          </div>
                                                       
                                        
                                        
          <div class="form-group row">
                <label for="customerid" class="col-md-3 control-label">resigination_date</label>
                <div class="col-md-9">
                    <input type="date" class="form-control" id="resigination_date" placeholder="resigination_date" name="resigination_date" value="<?php echo $updateresigination['resigination_date'];?>" autocomplete="off" >
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
                <?php get_template('templates/jsForm');?>
                <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/is-in-viewport/3.0.0/isInViewport.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/additional-methods.min.js"></script>
        <!-- js -->
        
        
        
        
        
        
                                                <!--   form validation Process     -->
                                                <!--   form validation Process     -->
                                                <!--   form validation Process     -->


        
        
       <script>
            $(function() {
                $("#updateclients").validate({

                    rules: {
                   
    
                     employeeid:  {
                            required: !0,
                        },    

                     empname:  {
                            required: !0,
                        },    

                     department:  {
                            required: !0,
                        },    
                        
                     notice_date:  {
                            required: !0,
                        }, 
                        
                     resigination_date:  {
                             required: !0
                        }
                    },
                    
                    
                    
                    
                    messages: {
                     
                       
                            
                            employeeid: {
                            required: "Please enter employeeid"
                        }, 
                               
                            empname: {
                            required: "Please enter empname"
                        }, 
                    
                            department: {
                            required: "Please enter department"
                        }, 
                        
                            notice_date: {
                            required: "Please Select notice_date"
                        }, 
                        
                            resigination_date: {
                            required: "Please Select resigination_date"
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
                        select: function (event, ui) 
                        {
                            $('[name="productname"]').val(ui.item.label); 
                            $('[name="productvalue"]').val(ui.item.productvalue); 
                        }
                    });
                });
            </script>
        
        
        <script type="text/javascript"> 
            $(document).ready(()=>{ 
                $("#prioritystatus").val('<?php echo $updateClient['prioritystatus'];?>'); 
                $("#callstatus").val('<?php echo $updateClient['callstatus'];?>'); 
                $("#sourceofcall").val('<?php echo $updateClient['sourceofcall'];?>'); 
            });   
        </script>    
                
        
         <script>
                $(document).ready(function() {
                    $("#idname").keypress(function(e) {
                      if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                          //display error message
                          $("#errmsg").html("Numbers Only").show().fadeOut("slow");
                          return false;
                      }
                    });
                });
        </script>

        
               
        <script>
            $(document).on("click",".updateMenTshirtModal",function()
              {
                $(".#sNo").val(sNo);
                $(".#colorPicker").val(Color);
                $(".#SubcatMenTshirtsType").val(Type);
                $(".#SubcatMenTshirtsPattern").val(Pattern);
                $(".#SubcatMenTshirtsSleeve").val(Sleeve);
                $(".#SubcatMenTshirtsRange").val(Range);
                $(".#SubcatMenTshirtsOfferRange").val(offer);
                $(".#SubcatMenTshirtsSize").val(Size);
                $(".#SubcatMenTshirtsdescription").val(description);
              });
        </script>
        
        
        
        
        
        
        
        
    </body>
</html>