<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="img/logo.png" type="image/x-icon">
    {{-- Posto/Graduação          Nome de Guerra --}}
    <title>@yield('title') - {{ $user_data->rank->rankAbbreviation }} {{ $user_data->professionalName }}</title>


    <!-- Bootstrap Color Picker -->
    <link rel="stylesheet" href="plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
    <!-- Select2 -->
    <link rel="stylesheet" href="plugins/select2/css/select2.min.css">
    <link rel="stylesheet" href="plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
    <!-- Bootstrap4 Duallistbox -->
    <link rel="stylesheet" href="plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
    <!-- BS Stepper -->
    <link rel="stylesheet" href="plugins/bs-stepper/css/bs-stepper.min.css">
    <!-- dropzonejs -->
    <link rel="stylesheet" href="plugins/dropzone/min/dropzone.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bootstrap 4 -->
    <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- JQVMap -->
    <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
    {{-- sweetalert2 --}}
    <link rel="stylesheet" href="plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css">
    <link rel="stylesheet" href="plugins/toastr/toastr.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="css/adminlte.css">
    <!-- Utils -->
    <link rel="stylesheet" href="css/util.css">
  <!-- jQuery -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
    <!-- summernote -->
    <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">


    <script src="js/request_frontend.js"></script>
    <script>
        setTimeout(function() {
            var Toast = Swal.mixin({
                toast: true,
                position: 'top-end',
                showConfirmButton: false,
                timer: 5000
            });
            var Errors = @json($errors->all());
            var Erro = @json(session('erro'));
            var Success = @json(session('success'));

            function msg_error(msg) {
                toastr.error(msg);
            }
            if (Errors) {
                Errors.forEach(msg_error);
            }
            if (Erro) {
                toastr.error(Erro);
            }
            if (Success) {
                Toast.fire({
                    icon: 'success',
                    title: '&nbsp&nbsp' + Success
                })
            }
        }, 1000);

    </script>
    {{-- scripts especificos --}}
    @yield('scripts')
</head>

<body class="dark-mode hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">


        <!-- Preloader -->
        <div class="preloader flex-column justify-content-center align-items-center">
            <img class="animation__shake" src="img/logo.png" height="70" width="60">
            <span class="fs-30"><strong>SisTAO</strong> </span>
        </div>
        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <div class="brand-link">
                <img src="img/logo.png" alt="SisTAO logo" class="brand-image">
                <span class="brand-text "><strong>SisTAO</strong> </span>
            </div>


            <div class="sidebar">
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="{{ $user_data->photoUrl }}" class="img-circle elevation-2" alt="User Image">
                    </div>
                    <div class="info">
                        {{-- Posto/Graduação          Nome de Guerra --}}
                        <a href="{{ route('profile') }}">{{ $user_data->rank->rankAbbreviation }}
                            {{ $user_data->professionalName }}</a>
                    </div>
                </div>
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column nav-flat nav-legacy" data-widget="treeview"
                        role="menu" data-accordion="false">
                        <li class="nav-item menu-open">
                            <a href="{{ route('home') }}" class=' nav-link @yield("home")'>
                                <i class="nav-icon fas fa-home"></i>
                                <p>
                                    Home
                                </p>
                            </a>
                        </li>
                        <li class="nav-item menu-open">
                            <a href="#" class="nav-link @yield('profile') @yield('edit_profile')">
                                <i class="nav-icon fas fa-user-circle"></i>
                                <p>
                                    Perfil
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="{{ route('edit_profile') }}" class="nav-link  @yield('edit_profile')">
                                        <i class="nav-icon fas fa-user-edit"></i>
                                        <p>Editar perfil</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{ route('alt_password') }}" class="nav-link @yield('alt_password')">
                                        <i class="nav-icon fas fa-lock"></i>
                                        <p>Alterar senha</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{ route('logout') }}" class="nav-link">
                                        <i class="nav-icon fas fa-sign-out-alt"></i>
                                        <p>Sair</p>

                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                <div class="theme">
                    <span>Dark Mode</span> <input type="checkbox" value="1" class="mr-1">
                </div>
            </div>

        </aside>

        @yield('content')


        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>


        <footer class=" align-items-center main-footer">
            <footer>
                <div class="text-center">

                    &copy;SisTAO 2021 (v1.0) <br>
                    Desenvolvido por: Sgt Souza Lima e Cb Eduardo
                </div>
            </footer>
        </footer>

    </div>


    <!-- Bootstrap 4 -->
    <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Select2 -->
    <script src="plugins/select2/js/select2.full.min.js"></script>
    <!-- Bootstrap4 Duallistbox -->
    <script src="plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
    <!-- InputMask -->
    <script src="plugins/moment/moment.min.js"></script>
    <script src="plugins/inputmask/jquery.inputmask.min.js"></script>
    <!-- date-range-picker -->
    <script src="plugins/daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap color picker -->
    <script src="plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
    <!-- Tempusdominus Bootstrap 4 -->
    <script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
    <!-- Bootstrap Switch -->
    <script src="plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
    <!-- BS-Stepper -->
    <script src="plugins/bs-stepper/js/bs-stepper.min.js"></script>
    <!-- SweetAlert2 -->
    <script src="plugins/sweetalert2/sweetalert2.min.js"></script>
    <script src="plugins/toastr/toastr.min.js"></script>
    <!-- dropzonejs -->
    <script src="plugins/dropzone/min/dropzone.min.js"></script>
    <!-- AdminLTE App -->
    <script src="js/adminlte.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="js/main.js"></script>
    <!-- overlayScrollbars -->
    <script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
    <!-- Page specific script -->
    <script src="js/autocomplete-cep.js"></script>
    <script src="js/inputmask.js"></script>
    <!-- SCRIPT MANUAIS -->
    <script src="js/main.js"></script>
    <script src="js/toast.js"></script>



@yield('modal')
</body>

</html>
