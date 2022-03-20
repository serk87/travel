@extends('layouts.develop')

@section('content')


                <div class="row">

                    <div class="col-xl-3 col-md-6">
                        <div class="card-box">
                           

                            <h4 class="header-title mt-0 mb-4">Количество клиентов</h4>

                            <div class="widget-chart-1">
                                <div class="widget-chart-box-1 float-left" dir="ltr">
                                    <input data-plugin="knob" data-width="80" data-height="80" data-fgColor="#f05050 "
                                            data-bgColor="#F9B9B9" value="1"
                                            data-skin="tron" data-angleOffset="360" data-readOnly=true
                                            data-thickness=".15"/>
                                </div>

                                <div class="widget-detail-1 text-right">
                                    <h2 class="font-weight-normal pt-2 mb-1"> 1 </h2>
                                    <p class="text-muted mb-1">Клиентов</p>
                                </div>
                            </div>
                        </div>

                    </div><!-- end col -->

                   

                    <div class="col-xl-3 col-md-6">
                        <div class="card-box">
                            <div class="dropdown float-right">
                                <a href="#" class="dropdown-toggle arrow-none card-drop" data-toggle="dropdown" aria-expanded="false">
                                    <i class="mdi mdi-dots-vertical"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Another action</a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Something else</a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Separated link</a>
                                </div>
                            </div>

                            <h4 class="header-title mt-0 mb-4">Statistics</h4>

                            <div class="widget-chart-1">
                                <div class="widget-chart-box-1 float-left" dir="ltr">
                                    <input data-plugin="knob" data-width="80" data-height="80" data-fgColor="#ffbd4a"
                                            data-bgColor="#FFE6BA" value="80"
                                            data-skin="tron" data-angleOffset="180" data-readOnly=true
                                            data-thickness=".15"/>
                                </div>
                                <div class="widget-detail-1 text-right">
                                    <h2 class="font-weight-normal pt-2 mb-1"> 4569 </h2>
                                    <p class="text-muted mb-1">Revenue today</p>
                                </div>
                            </div>
                        </div>

                    </div><!-- end col -->

                    

                </div>
                <!-- end row -->



        <!-- ============================================================== -->
        <!-- End Page content -->
        <!-- ============================================================== -->
        <!--Morris Chart-->
        <script src="{{$app->make('url')->to('/')}}/dev/assets/libs/morris-js/morris.min.js"></script>
        <script src="{{$app->make('url')->to('/')}}/dev/assets/libs/raphael/raphael.min.js"></script>

        <!-- Dashboard init js-->
        <script src="{{$app->make('url')->to('/')}}/dev/assets/js/pages/dashboard.init.js"></script>
@endsection