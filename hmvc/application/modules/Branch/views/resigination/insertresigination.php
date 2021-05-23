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
                                                <li class="breadcrumb-item"><a href="javascript: void(0);">Apply resigination</a></li>
                                            </ol>
                                        </div>
                                        <h4 class="page-title">Apply Resigination</h4>
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
                                                <p id="flash_style">
                                                    <?php echo $this->session->flashdata('msg'); ?>
                                                </p>
                                                <?php endif; ?>

                                                    <?php echo form_open('Bdm/insertresigination/', 'class="form-horizontal" role="form" id="insertapplyleave"'); ?>

                                                        <div class="form-group row">
                                                            <label for="bdmid" class="col-md-3 control-label">Employee ID</label>
                                                            <div class="col-md-9">
                                                                <input id="end-date" type="text" class="form-control" name="employeeid" placeholder="employeeid" value="<?php echo $employee['employeeid']?>">
                                                            </div>
                                                        </div>

                                                        <div class="form-group row">
                                                            <label for="bdmid" class="col-md-3 control-label">Employee Name</label>
                                                            <div class="col-md-9">
                                                                <input id="end-date" type="text" class="form-control" name="empname" placeholder="empname" value="<?php echo $employee['empname']?>">
                                                            </div>
                                                        </div>

                                                        <div class="form-group row ">
                                                            <label class="col-md-3 control-label">Department</label>
                                                            <div class="col-md-9">
                                                                <div class="row">
                                                                    <div class="col-md-9 sm-m-t-10" id="input_align_top">
                                                                        <input id="end-date" type="text" class="form-control" name="department" placeholder="department" value="<?php echo $employee['department']?>" >
                                                                    </div>

                                                                  

                                                                </div>
                                                            </div>
                                                        </div>





                                                      
                                            
                                            
                                                  

                                                        <div class="form-group row">
                                                            <label class="col-md-3 control-label">Notice Date / Resigination Date</label>
                                                            <div class="col-md-9">
                                                                <div class="row">
                                                                    <div class="col-md-5" id="input_align_top">
                                                                        <input id="notice_date" type="date" class="form-control date" name="notice_date"  placeholder="notice_date">
                                                                    </div>
                                                                    <div class="col-md-5 sm-m-t-10" id="input_align_top">
                                                                        <input id="resigination_date" type="date" class="form-control date" name="resigination_date"  placeholder="resigination_date">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                            
                                        
                                            
                                            
                                             
                                            
                                            
                                            
                                            

                                                        <div class="form-group row">
                                                            <label for="fname" class="col-md-3 control-label">Message</label>
                                                            <div class="col-md-9">
                                                                <textarea class="form-control" id="reason" placeholder="reason" name="reason"></textarea>
                                                            </div>
                                                        </div>
                                                        <br>
                                                        <div class="row">
                                                            <div class="col-md-3">
                                                                <p>I hereby certify that the information above is true and accurate.</p>
                                                            </div>
                                                            <div class="col-md-9">

                                                                <?php echo form_input(array('type' => 'submit','id' => 'submit_button', 'name' => 'submit', 'value' => 'submit', 'class' => 'btn btn-success')); ?>

                                                            </div>
                                                        </div>
                                                        <?php echo form_close(); ?>
                                        </div>

                                    </div>

                                </div>
                            </div>

                        </div>

                    </div>
                    <!-- content -->

                    <!-- Footer Start -->
                    <?php get_template('templates/footer');?>
                        <!-- end Footer -->

                </div>

    </div>
    <!--  js -->
    <?php get_template('templates/jsForm') ?>

        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/is-in-viewport/3.0.0/isInViewport.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/additional-methods.min.js"></script>

        <!--  js -->

        <!--   form validation Process     -->
        <!--   form validation Process     -->
        <!--   form validation Process     -->

        <script>
            $(function() {
                $("#insertapplyleave").validate({

                    rules: {

                        bdmid: {
                            required: !0,
                        },  
                             
                        bdmname: {
                            required: !0,
                        },  
                        
                        branchname: {
                            required: !0,
                        },  
                    
                        mobile: {
                            required: !0,
                        },  
                    
                        noofleave: {
                            required: !0,
                        },
                        
                        startdate: {
                            required: !0,
                        },

                        enddate: {
                            required: !0,
                        },

                        leavetype: {
                            required: !0,
                        },

                        message: {
                            required: !0,
                        }
                    },

                    messages: {

                        
                        bdmid: {
                            required: "Please enter bdmid"
                        },
                            
                        bdmname: {
                            required: "Please enter BDM Name"
                        },
                             
                        branchname: {
                            required: "Please enter Branch Name"
                        },
                               
                        mobile: {
                            required: "Please enter Mobile"
                        },
                                  
                        noofleave: {
                            required: "Please enter No of Leave"
                        },
                        
                        startdate: {
                            required: "Please enter Etart Date"
                        },

                        enddate: {
                            required: "Please enter End Date"
                        },

                        leavetype: {
                            required: "Please enter Leave Type"
                        },

                        message: {
                            required: "Please enter Message"
                        }

                    },
                   

                });
            });
        </script>
        <!-- end   form validation Process     -->
        <!-- end   form validation Process     -->

        <!--    Flash msg time out     -->

        <script>
            var timeout = 5000; // in miliseconds (3*1000)
            $('#flash_style').delay(timeout).fadeOut(3000);
        </script>

</body>

</html>