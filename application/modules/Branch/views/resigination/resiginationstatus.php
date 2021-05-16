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
                                                <li class="breadcrumb-item"><a href="javascript: void(0);">Resigination Status</a></li>
                                            </ol>
                                        </div>
                                        <h4 class="page-title">                                <a href="<?php echo base_url();?>Branch/insertresigination"><i class="material-icons">done_all</i><span>Create Resigination</span> </a></h4>
                                    </div>
                                </div>
                            </div>
                            <!-- end page title -->

                            <div class="row">
                                <div class="col-12">
                                    <div class="card">
                                        <div class="card-body">

                                            <h4 class="header-title">Resigination status</h4>
                                            <p class="text-muted font-13 mb-4"></p>

                                            <table id="example" class="table table-striped dt-responsive nowrap">
                                                <thead>
                                                    <tr>
                                                        
                                                        
                                                        <th>Employee ID</th>
                                                        <th>Create Date</th>
                                                        <th>firstname</th>
                                                        <th>Department</th>
                                                        <th>reason</th>
                                                        <th>notice_date</th>
                                                        <th>resigination_date</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <?php foreach ($resigination as $key=>$value):?>   
                                                        <tr>
                                                            <td>
                                                                <?php echo $resigination[$key]['employeeid'];?>
                                                            </td>
                                                            <td>
																<?php 
																	$sampleDate = $resigination[$key]['date'];
																	$convertdate = date("d-m-Y", strtotime($sampleDate));
																?>
                                                                <?php echo $convertdate;?>
                                                            </td>
                                                            <td>
                                                                <?php echo $resigination[$key]['empname'];?>
                                                            </td>
                                                        
                                                            <td>
                                                                <?php echo $resigination[$key]['department'];?>
                                                            </td>    
                                                            <td>
                                                                <?php echo $resigination[$key]['reason'];?>
                                                            </td>
                                                            <td>
																<?php 
																	$sampleDate = $resigination[$key]['notice_date'];
																	$convertstartdate = date("d-m-Y", strtotime($sampleDate));
																?>
                                                                <?php echo $convertstartdate;?>
                                                            </td>
                                                            <td>
																<?php 
																	$sampleDate = $resigination[$key]['resigination_date'];
																	$convertenddate = date("d-m-Y", strtotime($sampleDate));
																?>
                                                                <?php echo $convertenddate;?>
                                                            </td>
                                                        
                                                           
                                                              <td>
                                            <a href="<?php echo base_url('Branch/updateresigination/'.base64_encode($resigination[$key]['id']).'');?>">Update</a>

                                                            </td>
                                                           
                                                          
                                                         
                                                        </tr>
                                                        <?php endforeach;?>
                                                </tbody>
                                            </table>

                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="container">

                        <!-- Modal -->
                        <div class="modal fade" id="myModal" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title">Update Conveyance</h4>
                                        <button id="close_x" type="button" class="close" data-dismiss="modal">&times;</button>

                                    </div>
                                    <div class="modal-body">

                                        <form id="form-work" class="form-horizontal" role="form" autocomplete="off">

                                            <div class="form-group row">
                                                <label for="fname" class="control-label" id="model_edit">Customer ID</label>
                                                <div class="col-md-12">
                                                    <input type="text" class="form-control" id="fname" placeholder="Customer ID" name="customerid" required>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label for="fname" class="control-label" id="model_edit">Date</label>
                                                <div class="col-md-12">
                                                    <input type="text" class="form-control" id="fname" placeholder="Date" name="date" required>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="control-label" id="model_edit">From (Place) / To (Place)</label>
                                                <div class="col-md-12">
                                                    <div class="row">
                                                        <div class="col-md-6" id="input_align_top">
                                                            <input id="start-date" type="text" class="form-control" name="fromplace" placeholder="From (place)">
                                                        </div>
                                                        <div class="col-md-6 sm-m-t-10" id="input_align_top">
                                                            <input id="end-date" type="text" class="form-control" name="toplace" placeholder="To (place)">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label for="fname" class="control-label" id="model_edit">Name of the Client</label>
                                                <div class="col-md-12">
                                                    <input type="text" class="form-control" id="clientname" placeholder="Name of the Client" name="clientname" required>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label for="fname" class="control-label" id="model_edit">Description</label>
                                                <div class="col-md-12">
                                                    <input type="text" class="form-control" id="description" placeholder="Description" name="description" required>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label for="fname" class="control-label" id="model_edit">Contact person number</label>
                                                <div class="col-md-12">
                                                    <input type="text" class="form-control" id="contactpersonnumber" placeholder="Contact person number" name="contactpersonnumber" required>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label for="fname" class="control-label" id="model_edit">Mode of Conveyance</label>
                                                <div class="col-md-12">
                                                    <select class="form-control" id="fname" placeholder="Conveyance status">
                                                        <option>Bike</option>
                                                        <option>Car</option>
                                                        <option>Others</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="control-label" id="model_edit">Time in / Time Out</label>
                                                <div class="col-md-12">
                                                    <div class="row">
                                                        <div class="col-md-6" id="input_align_top">
                                                            <input id="start-date" type="time" class="form-control date" name="timein" placeholder="Time in">
                                                        </div>
                                                        <div class="col-md-6 sm-m-t-10" id="input_align_top">
                                                            <input id="end-date" type="time" class="form-control date" name="timeout" placeholder="Time Out">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label for="fname" class="control-label" id="model_edit">Kms Travelled</label>
                                                <div class="col-md-12">
                                                    <input type="text" class="form-control" id="fname" placeholder="Kms Travelled" name="kmstravelled" required>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label for="fname" class="control-label" id="model_edit">Rate Per Km</label>
                                                <div class="col-md-12">
                                                    <input type="text" class="form-control" id="fname" placeholder="rateperkm" name="kmstravelled" required>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label for="fname" class="control-label" id="model_edit">Total Amount</label>
                                                <div class="col-md-12">
                                                    <input type="text" class="form-control" id="fname" placeholder="Total Amount" name="totalamount" required>
                                                </div>
                                            </div>

                                            <br>
                                            <div class="row">
                                                <div class="col-md-3">
                                                </div>
                                                <div class="col-md-9" id="model_bottom_space">
                                                    <button class="btn btn-success" type="submit" id="submit_button">Submit</button>
                                                    <button class="btn btn-default" id="clear_button"><i class="pg-close"></i> Clear</button>
                                                </div>
                                            </div>
                                        </form>

                                    </div>
                                    <div class="bottom_space">
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>

                    <?php get_template ('templates/footer') ?>

                </div>

    </div>
    <!--  js -->
        <?php get_template ('templates/jsForm') ?>
    <!--  js -->

</body>

</html>