<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Minsait</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/feather/feather.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/perfil.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/pag_inicio_admin/select.dataTables.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/Minsait-logo.png" />

</head>
<body>
<div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
            <a class="navbar-brand brand-logo mr-5" href="index.html"><img src="${pageContext.request.contextPath}/images/Minsait-logo.png" class="mr-2" alt="logo"/></a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
            <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                <span class="icon-menu"></span>
            </button>
            <ul class="navbar-nav navbar-nav-right">
                <li class="nav-item nav-profile dropdown">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
                        <img src="${pageContext.request.contextPath}/images/faces/face28.jpg" alt="profile"/>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
                        <a class="dropdown-item">
                            <i class="ti-power-off text-primary"></i>
                            Logout
                        </a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
            <ul class="nav">
                <li class="nav-item">
                    <a class="nav-link" href="index.html">
                        <i class="icon-grid menu-icon"></i>
                        <span class="menu-title">Inicio</span>
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#tables" aria-expanded="false" aria-controls="tables">
                        <i class="icon-grid-2 menu-icon"></i>
                        <span class="menu-title">Videojuego</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
                        <i class="icon-head menu-icon"></i>
                        <span class="menu-title">Perfil</span>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper">
                <article class="resume-wrapper text-center position-relative">
                    <div class="resume-wrapper-inner mx-auto text-left bg-white shadow-lg">
                        <header class="resume-header pt-0 pt-md-4">
                            <div class="media flex-column flex-md-row">
                                <img class="mr-3 img-fluid picture mx-4" src="${pageContext.request.contextPath}/images/faces/face3.jpg" alt="" style="width: 200px; height: 250px">
                                <div class="media-body p-4 d-flex flex-column flex-md-row mx-auto mx-lg-0">
                                    <div class="primary-info">
                                        <h1 class="name mt-0 mb-4 text text-uppercase text-uppercase">Hubert Blaine Wolfeschlegelsteinhause <hr> </h1>
                                        <ul class="list-unstyled">
                                            <li class="mb-2"><i class="far fa-envelope fa-fw mr-2" data-fa-transform="grow-3"></i><p style="font-size: 20px;">Telefono :</p></li>
                                            <li class="mb-2"><i class="far fa-envelope fa-fw mr-2" data-fa-transform="grow-3"></i><p style="font-size: 20px;">Correo</p></li>
                                            <li class="mb-2"><i class="far fa-envelope fa-fw mr-2" data-fa-transform="grow-3"></i><p style="font-size: 20px;">Curp</p></li>
                                            <li class="mb-2"><i class="far fa-envelope fa-fw mr-2" data-fa-transform="grow-3"></i><p style="font-size: 20px;">Edad</p></li>
                                            <li class="mb-2"><i class="far fa-envelope fa-fw mr-2" data-fa-transform="grow-3"></i><p style="font-size: 20px;">Carrera</p></li>
                                            <li class="mb-2"><i class="far fa-envelope fa-fw mr-2" data-fa-transform="grow-3"></i><p style="font-size: 20px;">Area de interes</p></li>
                                        </ul>
                                    </div>
                                </div><!--//media-body-->
                            </div><!--//media-->
                        </header>
                        <div class="resume-body p-5">

                            <div class="row">

                                <div class="col-lg-10">
                                </div>
                            </div><!--//row-->
                        </div><!--//resume-body-->
                    </div>
                </article>
            </div>
            <!-- content-wrapper ends -->
            <!-- partial:partials/_footer.html -->
            <footer class="footer">
                <div class="d-sm-flex justify-content-center justify-content-sm-between">
                    <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2021.  Premium <a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap admin template</a> from BootstrapDash. All rights reserved.</span>
                </div>
            </footer>
            <!-- partial -->
        </div>
        <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->

<!-- plugins:js -->
<script src="${pageContext.request.contextPath}/vendors/js/vendor.bundle.base.js"></script>
<!-- endinject -->
<!-- Plugin js for this page -->
<script src="${pageContext.request.contextPath}/vendors/chart.js/Chart.min.js"></script>
<script src="${pageContext.request.contextPath}/vendors/datatables.net/jquery.dataTables.js"></script>
<script src="${pageContext.request.contextPath}/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
<script src="${pageContext.request.contextPath}/js/pag_inicio_admin/dataTables.select.min.js"></script>

<!-- End plugin js for this page -->
<!-- inject:js -->
<script src="${pageContext.request.contextPath}/js/pag_inicio_admin/off-canvas.js"></script>
<script src="${pageContext.request.contextPath}/js/pag_inicio_admin/hoverable-collapse.js"></script>
<script src="${pageContext.request.contextPath}/js/pag_inicio_admin/template.js"></script>
<script src="${pageContext.request.contextPath}/js/pag_inicio_admin/settings.js"></script>
<script src="${pageContext.request.contextPath}/js/pag_inicio_admin/todolist.js"></script>
<!-- endinject -->
<!-- Custom js for this page-->
<script src="${pageContext.request.contextPath}/js/pag_inicio_admin/dashboard.js"></script>
<script src="${pageContext.request.contextPath}/js/pag_inicio_admin/Chart.roundedBarCharts.js"></script>
<!-- End custom js for this page-->
</body>

</html>