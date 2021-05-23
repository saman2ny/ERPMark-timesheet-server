   <div class="navbar-custom">
                <ul class="list-unstyled topnav-menu float-right mb-0">

              
                 

                    <li class="dropdown notification-list">
                        <a class="nav-link dropdown-toggle nav-user mr-0 waves-effect waves-light" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                            
                            <span class="pro-user-name ml-1">
                                Thinkwise <i class="mdi mdi-chevron-down"></i> 
                            </span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                            <!-- item-->
                            <div class="dropdown-header noti-title">
                                <h6 class="text-overflow m-0">Welcome !</h6>
                            </div>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <i class="material-icons">account_circle</i>
                                <span>My Account</span>
                            </a>

                            <div class="dropdown-divider"></div>

                            <!-- item-->
                            <a href="<?php echo base_url();?>Bdm/logout" class="dropdown-item notify-item">
                                 <i class="material-icons">all_out</i>
                                <span>Logout</span>
                            </a>

                        </div>
                    </li>

                 


                </ul>

                <!-- LOGO -->
                <div class="logo-box">
                     <a href="<?php echo base_url();?>Bdm/dashboard" class="logo text-center">
                        <span class="logo-lg">
                            <img src="<?php echo bdm_admin_url();?>logo_white.png" alt="" height="auto"     width="150px">
                        </span>
                        <span class="logo-sm">
                            <img src="<?php echo bdm_admin_url();?>logo_white.png" alt="" height="24">
                        </span>
                    </a>
                </div>

                <ul class="list-unstyled topnav-menu topnav-menu-left m-0">
                    <li>
                        <button class="button-menu-mobile waves-effect waves-light">
                                <i class="material-icons">dehaze</i>
                        </button>
                    </li>
        
                    <li class="dropdown d-none d-lg-block">
                        <a class="nav-link dropdown-toggle waves-effect waves-light" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                            Create New
                            <i class="mdi mdi-chevron-down"></i> 
                        </a>
                        <div class="dropdown-menu">
                            <!-- item-->
                            <a href="<?php echo base_url();?>Bdm/bulkupload" class="dropdown-item">
                                <i class="material-icons">cloud_upload</i>
                                <span>Bulk Upload</span>
                            </a>

                            <!-- item-->
                            <a href="<?php echo base_url();?>Bdm/leadcreation" class="dropdown-item">
                                <i class="material-icons">person</i>
                                <span>Lead creation </span>
                            </a>
                                
                         

                            <div class="dropdown-divider"></div>

                         

                        </div>
                    </li>

                   
                </ul>
            </div>