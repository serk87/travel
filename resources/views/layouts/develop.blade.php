<!DOCTYPE html>
<html lang="ru">
    <head>
        <meta charset="utf-8" />
        <title>Travel - для разработчиков</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="#" name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="dev/assets/images/favicon.ico">

        <!-- App css -->
        <link href="{{$app->make('url')->to('/')}}/dev/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="{{$app->make('url')->to('/')}}/dev/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="{{$app->make('url')->to('/')}}/dev/assets/css/app.min.css" rel="stylesheet" type="text/css" />

        <!-- Jquery js-->
        <script src="{{$app->make('url')->to('/')}}/dev/assets/js/jquery-3.6.0.js"></script>
        @FilemanagerScript
    </head>

    <body>

        <!-- Navigation Bar-->
        <header id="topnav">

            <!-- Topbar Start -->
            <div class="navbar-custom">
                <div class="container-fluid">
                    <ul class="list-unstyled topnav-menu float-right mb-0">

                        <li class="dropdown notification-list">
                            <!-- Mobile menu toggle-->
                            <a class="navbar-toggle nav-link">
                                <div class="lines">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div>
                            </a>
                            <!-- End mobile menu toggle-->
                        </li>
    
                        <li class="d-none d-sm-block">
                            <form class="app-search">
                                <div class="app-search-box">
                                    <div class="input-group">
                                        
                                    </div>
                                </div>
                            </form>
                        </li>
            
                        <li class="dropdown notification-list">
                            
                            
                        </li>
    
                        <li class="dropdown notification-list">
                            <a class="nav-link dropdown-toggle nav-user mr-0 waves-effect" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                <img src="{{$app->make('url')->to('/')}}/dev/assets/images/users/user.png" alt="user-image" class="rounded-circle">
                                <span class="pro-user-name ml-1">
                                    {{Auth::user()->email}} <i class="mdi mdi-chevron-down"></i> 
                                </span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                <!-- item-->
                                <div class="dropdown-header noti-title">
                                    <h6 class="text-overflow m-0">Добро пожаловать!</h6>
                                </div>
    
                                <div class="dropdown-divider"></div>
    
                                <!-- item-->
                                <a href="{{ url('/logout') }}"
                                onclick="event.preventDefault();
                                         document.getElementById('logout-form').submit();" class="dropdown-item notify-item">
                                    <i class="fe-log-out"></i>
                                    <span>Выйти</span>
                                </a>
    
                            </div>
                        </li>

                        <form id="logout-form" action="{{ url('/logout') }}" method="POST" style="display: none;">
                            {{ csrf_field() }}
                        </form>
    
                        <li class="dropdown notification-list">
                            
                        </li>
    
                    </ul>
    
                    <!-- LOGO -->
                    <div class="logo-box">
                        <a href="{{route('dashboard')}}" class="logo text-center">
                            <span class="logo-lg">
                                <img src="dev/assets/images/logo-sm.png" alt="" height="16">
                                <!-- <span class="logo-lg-text-light">UBold</span> -->
                            </span>
                            <span class="logo-sm">
                                <!-- <span class="logo-sm-text-dark">U</span> -->
                                <img src="dev/assets/images/logo-sm.png" alt="" height="24">
                            </span>
                        </a>
                    </div>
    
                </div> <!-- end container-fluid-->
            </div>
            <!-- end Topbar -->

            <div class="topbar-menu">
                <div class="container-fluid">
                    <div id="navigation">
                        <!-- Navigation Menu-->
                        <ul class="navigation-menu">

                            <li class="has-submenu">
                                <a href="{{route('dashboard')}}"><i class="mdi mdi-view-dashboard"></i>Главная</a>
                            </li>

                            <li class="has-submenu">
                                <a href="#"> <i class="mdi mdi-invert-colors"></i>API  <div class="arrow-down"></div></a>
                                <ul class="submenu megamenu">
                                    <li>
                                        <ul>
                                            <li>
                                                <a href="{{route('apiclients')}}">Клиенты OAuth2</a>
                                            </li>
                                            <li>
                                                <a href="{{route('apidocs')}}">Документация API</a>
                                            </li>
                                        </ul>
                                    </li>
                                    
                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#">
                                    <i class="mdi mdi-lifebuoy"></i>Карты <div class="arrow-down"></div></a>
                                <ul class="submenu">
                                    <li class="has-submenu">
                                        <a href="{{route('maps')}}">Документация Tile сервера</a>
                                    </li>
                                    
                                    <li>
                                        <a href="{{route('geo')}}">Документация сервера геокодирования</a>
                                    </li>
                                    <li>
                                        <a href="{{route('route')}}">Документация сервера построения маршрутов</a>
                                    </li>
                                    <li>
                                        <a href="{{route('overpass')}}">Документация сервера Overpass</a>
                                    </li>
                                </ul>
                            </li>

                            @if(in_array('root', Auth::user()->getRoleNames()->toArray()))
                            <li class="has-submenu">
                                <a href="{{route('attractions.index')}}">
                                    <i class="mdi mdi-lifebuoy"></i>Достопримечательности<div class="arrow-down"></div></a>
                            </li>
                            <li class="has-submenu">
                                <a href="{{route('filemanager.base_route')}}">
                                    <i class="mdi mdi-lifebuoy"></i>Файловый менеджер
                                </a>
                            </li>
                            @endif

                            

                            

                        </ul>
                        <!-- End navigation menu -->

                        <div class="clearfix"></div>
                    </div>
                    <!-- end #navigation -->
                </div>
                <!-- end container -->
            </div>
            <!-- end navbar-custom -->

        </header>
        <!-- End Navigation Bar-->
    <!-- ============================================================== -->
        <!-- Start Page Content here -->
        <!-- ============================================================== -->

        <div class="wrapper">
            <div class="container-fluid">

                <!-- start page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box">
                            
                            <h4 class="page-title">{{$title}}</h4>
                        </div>
                    </div>
                </div>   
                @yield('content')
            </div>
        </div>

        <!-- Footer Start -->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        2022 &copy; Создано <a href="https://vk.com/sergei_klimovich" target="_blank">Климович Сергеем</a> 
                    </div>
                </div>
            </div>
        </footer>
        <!-- end Footer -->

        <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>

        <!-- Vendor js -->
        <script src="{{$app->make('url')->to('/')}}/dev/assets/js/vendor.min.js"></script>

        <!-- knob plugin -->
        <script src="{{$app->make('url')->to('/')}}/dev/assets/libs/jquery-knob/jquery.knob.min.js"></script>

        

        <!-- App js-->
        <script src="{{$app->make('url')->to('/')}}/dev/assets/js/app.min.js"></script>
        
        
    </body>
</html>