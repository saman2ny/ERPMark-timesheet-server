 <!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Login | <?php echo $title;?></title>
        
        <?php get_template('templates/header');?>
        <?php get_template('templates/cssForms');?>

    </head>

    <body>
        <div class="account-pages mt-5 mb-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-8 col-lg-6 col-xl-5">
                        <div class="card bg-pattern">

                            <div class="card-body p-4">
                                
                                <div class="text-center w-75 m-auto">   
                                    <a href="http://thinkwise-inc.com/">
                                        <span><img src="<?php echo bdm_admin_url();?>logo_white1.png" alt="" height="35"></span>
                                    </a>
                                    <p class="text-muted mb-4 mt-3"><?php echo get_lang('loginin');?></p>
                                </div>
                                        <p style="color:#CC0000;text-align:center;" id="error"></p>
                                <?php echo form_open('Branch/index/', 'class="m-t" role="form" id="myform"'); ?>

                                    <div class="form-group mb-3">
                                        <label for="emailaddress">User Name</label>
                                        <?php echo form_input(array('type' => 'email','placeholder' => 'Email','id' => 'username', 'name' => 'username', 'class' => 'form-control', 'autocomplete' => 'off')); ?>
                                    </div>

                                    <div class="form-group mb-3">
                                        <label for="password">Password</label>
                                        <?php echo form_input(array('type' => 'password','placeholder' => 'Password','id' => 'password', 'name' => 'password', 'class' => 'form-control', 'autocomplete' => 'off')); ?>
                                    </div>

                                    <div class="form-group mb-0 text-center">
                                        <?php echo form_input(array('type' => 'submit','id' => 'login', 'name' => 'login', 'value' => 'login', 'class' => 'btn btn-primary btn-block')); ?>
                   
                                    </div>

                                <?php echo form_close(); ?>
       



                            </div> <!-- end card-body -->
                        </div>
                        <!-- end card -->

                        <div class="row mt-3">
                            <div class="col-12 text-center">
                                <p> <a href="index" class="text-white-50 ml-1">Forgot your password?</a></p>
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->

                    </div> <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
        <!-- END wrapper -->

        <!-- Right Sidebar -->
    
        <!-- /Right-bar -->

        <!-- Right bar overlay-->

        <!-- Vendor js -->
        
         <?php get_template('templates/jsForm');?>

        
    </body>
</html>