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
                                                <li class="breadcrumb-item"><a href="javascript: void(0);">Apply Leave</a></li>
                                            </ol>
                                        </div>
                                        <h4 class="page-title">Insert Time Sheet</h4>
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

                                                    <?php echo form_open('Bdm/inserttimesheet/', 'class="form-horizontal" role="form" id="insertapplyleave"'); ?>

                                                        <div class="form-group row">
                                                            <label for="bdmid" class="col-md-3 control-label">Employee ID</label>
                                                            <div class="col-md-9">
                                                                <input id="end-date" type="text" class="form-control" name="employeeid" placeholder="employeeid" value="<?php echo $inserttimesheetlist['employeeid']?>">
                                                            </div>
                                                        </div>

                                                        <div class="form-group row ">
                                                            <label class="col-md-3 control-label">EMP Name</label>
                                                            <div class="col-md-9">
                                                                <div class="row">
                                                                    <div class="col-md-9 sm-m-t-10" id="input_align_top">
                                                                        <input id="end-date" type="text" class="form-control" name="empname" placeholder="EMP Name" value="<?php echo $inserttimesheetlist['firstname']?>"  >
                                                                    </div>

                                                                  

                                                                </div>
                                                            </div>
                                                        </div>

                                                      
                                            
                                            
                                                        <div class="form-group row">
                                                            <label for="noofleave" class="col-md-3 control-label">Teamid</label>
                                                            <div class="col-md-9">
                                                                <input type="text" class="form-control" id="teamid"  placeholder="Teamid" name="teamid" value="<?php echo $inserttimesheetlist['teamid']?>">
                                                            </div>
                                                        </div>  
                                            
                                            
                                                        <div class="form-group row">
                                                            <label for="noofleave" class="col-md-3 control-label">Project</label>
                                                            <div class="col-md-9">
                                                                <input type="text" class="form-control" id="project" placeholder="project" name="project">
                                                            </div>
                                                        </div>   
                                            
                                            
                                                        <div class="form-group row">
                                                            <label for="noofleave" class="col-md-3 control-label">Assignedhours</label>
                                                            <div class="col-md-9">
                                                                <input type="text" class="form-control" id="assignedhours" placeholder="Assignedhours" name="assignedhours">
                                                            </div>
                                                        </div>
                                                      
                                            
                                                        <div class="form-group row">
                                                            <label for="noofleave" class="col-md-3 control-label">hours</label>
                                                            <div class="col-md-9">
                                                                <input type="text" class="form-control" id="hours"  placeholder="Hours" name="hours">
                                                            </div>
                                                        </div>
                                                      
                                            
                                                        <div class="form-group row">
                                                            <label for="noofleave" class="col-md-3 control-label">Description</label>
                                                            <div class="col-md-9">
                                                                <input type="text" class="form-control" id="description"  placeholder="Description" name="description">
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

                        employeeid: {
                            required: !0,
                        },  
                             
                        empname: {
                            required: !0,
                        },  
                        
                        teamid: {
                            required: !0,
                        },  
                    
                        project: {
                            required: !0,
                        },  
                    
                        assignedhours: {
                            required: !0,
                        },
                        
                        hours: {
                            required: !0,
                        },

                        description: {
                            required: !0,
                        }
                    },

                    messages: {

                        
                        employeeid: {
                            required: "Please enter employeeid"
                        },
                            
                        empname: {
                            required: "Please enter empname"
                        },
                             
                        teamid: {
                            required: "Please enter teamide"
                        },
                               
                        project: {
                            required: "Please enter project"
                        },
                                  
                        assignedhours: {
                            required: "Please enter assignedhours"
                        },
                        
                        hours: {
                            required: "Please enter hours"
                        },

                        description: {
                            required: "Please enter descriptione"
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