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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Update Clients</a></li>
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
                        <?php echo form_open('Branch/updatetimesheet/', 'class="form-horizontal" role="form" id="updateclients"'); ?>
                                             
                                  





      
                                        
                                        
          <div class="form-group row">
                <label for="customerid" class="col-md-3 control-label">id</label>
                <div class="col-md-9">
                    <input type="text" class="form-control" id="id" placeholder="id" name="id" value="<?php echo $updatetimesheet['id'];?>" autocomplete="off" readonly>
                </div>
            </div>

      
                                        
                                        
          <div class="form-group row">
                <label for="customerid" class="col-md-3 control-label">employeeid</label>
                <div class="col-md-9">
                    <input type="text" class="form-control" id="employeeid" placeholder="employeeid" name="employeeid" value="<?php echo $updatetimesheet['employeeid'];?>" autocomplete="off" readonly>
                </div>
            </div>



      
                                        
                                        
          <div class="form-group row">
                <label for="customerid" class="col-md-3 control-label">empname</label>
                <div class="col-md-9">
                    <input type="text" class="form-control" id="empname" placeholder="empname" name="empname" value="<?php echo $updatetimesheet['empname'];?>" autocomplete="off" readonly>
                </div>
            </div>

                                                            
                                        
                                        
          <div class="form-group row">
                <label for="customerid" class="col-md-3 control-label">teamid</label>
                <div class="col-md-9">
                    <input type="text" class="form-control" id="teamid" placeholder="teamid" name="teamid" value="<?php echo $updatetimesheet['teamid'];?>" autocomplete="off" >
                </div>
          </div>
                                                       
                                        
                                        
          <div class="form-group row">
                <label for="customerid" class="col-md-3 control-label">project</label>
                <div class="col-md-9">
                    <input type="text" class="form-control" id="project" placeholder="project" name="project" value="<?php echo $updatetimesheet['project'];?>" autocomplete="off" >
                </div>
          </div>

                                                  
          <div class="form-group row">
                <label for="customerid" class="col-md-3 control-label">assignedhours</label>
                <div class="col-md-9">
                    <input type="text" class="form-control" id="assignedhours" placeholder="assignedhours" name="assignedhours" value="<?php echo $updatetimesheet['assignedhours'];?>" autocomplete="off" readonly>
                </div>
          </div>
                                       
          <div class="form-group row">
                <label for="customerid" class="col-md-3 control-label">hours</label>
                <div class="col-md-9">
                    <input type="text" class="form-control" id="hours" placeholder="hours" name="hours" value="<?php echo $updatetimesheet['hours'];?>" autocomplete="off">
                </div>
          </div>
                               

                                        
                                        
    
          <div class="form-group row">
                <label for="customerid" class="col-md-3 control-label">description</label>
                <div class="col-md-9">
                    <input type="text" class="form-control" id="description" placeholder="description" name="description" value="<?php echo $updatetimesheet['description'];?>" autocomplete="off" >
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
                   
    
                     sourceofcall:  {
                            required: !0,
                        },    

                     jointcall:  {
                            required: !0,
                        },    

                     customername:  {
                            required: !0,
                        },    
                        
                     customeraddress:  {
                            required: !0,
                        }, 
                        
                     customerphoneno:  {
                             required: !0
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
                            required: !0,
                            minlength: 3
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
                     
                       
                            
                            sourceofcall: {
                            required: "Please enter sourceofcall"
                        }, 
                               
                            jointcall: {
                            required: "Please enter jointcall"
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
                            required: "Please enter mobile number ",
                            numbersonly: "Only numbers please!"
                        }, 
                        
                            contactdesignation: {
                            required: "Please enter contact person designation"
                        }, 
                        
                            personcontacted: {
                            required: "Please enter personcontacted"
                        }, 
                        
                            persondescription: {
                            required: "Please enter persondescription"
                        }, 
                             
                            producttype: {
                            required: "Please enter producttype"
                        }, 
                        
                            callstatus: {
                            required: "Please enter sourceofcall"
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