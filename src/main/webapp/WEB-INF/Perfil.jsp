<!DOCTYPE html>
<html lang="es_MX">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Perfil-${sessionScope.candidato.nombre}</title>
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
            <ul class="navbar-nav navbar-nav-right">
                <li class="nav-item nav-profile dropdown">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
                        <form action="logout" method="get">
                            <i class="ti-power-off text-primary"></i>
                            <input name="logout" id="logout" type="submit" value="logout"/>
                        </form>
                    </a>
                </li>
            </ul>
        </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
            <ul class="nav">
                <form action="cand" method="post">
                    <button  type="submit" style="border: 0px; width:200px; background-color: white;">
                        <li class="nav-item">
                            <a class="nav-link">
                                <i class="icon-grid menu-icon" style="color: black;"></i>
                                <span class="menu-title" style="color: black;">Inicio</span>
                            </a>
                        </li>
                    </button>
                </form>
                <button type="button" style="border: 0px; width:200px; background-color: white;">
                    <li class="nav-item">
                        <a class="nav-link" href="https://web.whatsapp.com/" target="_blank">
                            <i class="icon-grid-2 menu-icon" style="color: black;"></i>
                            <span class="menu-title" style="color: black;">Videojuego</span>
                        </a>
                    </li>
                </button>
                <form  action="cand" method="get">
                    <button type="submit" style="border: 0px; width:200px; background-color: white;">
                        <li  class="nav-item">
                            <a class="nav-link">
                                <i class="icon-head menu-icon" style="color: black;"></i>
                                <span class="menu-title" style="color: black;">Perfil</span>
                            </a>
                        </li>
                    </button>
                </form>
            </ul>
        </nav>
        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper">
                <article class="resume-wrapper text-center position-relative">
                    <div class="resume-wrapper-inner mx-auto text-left bg-white shadow-lg">
                        <header class="resume-header pt-0 pt-md-4">
                            <div class="media flex-column flex-md-row">
                                <div class="media-body p-4 d-flex flex-column flex-md-row mx-auto mx-lg-0">
                                    <div class="primary-info">
                                        <h1 class="name mt-0 mb-4 text text-uppercase text-uppercase">${sessionScope.candidato.nombre}<hr> </h1>
                                        <ul class="list-unstyled">
                                            <li class="mb-2"><i class="far fa-envelope fa-fw mr-2" data-fa-transform="grow-3"></i><p style="font-size: 20px;"><strong>Tel&eacute;fono:</strong> ${sessionScope.candidato.telefono}</p></li>
                                            <li class="mb-2"><i class="far fa-envelope fa-fw mr-2" data-fa-transform="grow-3"></i><p style="font-size: 20px;"><strong>Correo:</strong> ${sessionScope.candidato.correo}</p></li>
                                            <li class="mb-2"><i class="far fa-envelope fa-fw mr-2" data-fa-transform="grow-3"></i><p style="font-size: 20px;"><strong>Curp:</strong> ${sessionScope.candidato.curp}</p></li>
                                            <li class="mb-2"><i class="far fa-envelope fa-fw mr-2" data-fa-transform="grow-3"></i><p style="font-size: 20px;"><strong>Formaci&oacute;n acad&eacute;mica:</strong> ${sessionScope.candidato.formacion}</p></li>
                                            <li class="mb-2"><i class="far fa-envelope fa-fw mr-2" data-fa-transform="grow-3"></i><p style="font-size: 20px;"><strong>&Aacute;rea de inter&eacute;s:</strong> ${sessionScope.candidato.area}</p></li>
                                        </ul>
                                    </div>
                                </div><!--//media-body-->
                            </div><!--//media-->
                        </header>
                    </div>
                </article>
            </div>
            <!-- content-wrapper ends -->
            <!-- partial:partials/_footer.html -->
            <footer class="footer">
                <div class="d-sm-flex justify-content-center justify-content-sm-between">
                    <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">
                        <img src="${pageContext.request.contextPath}/images/Minsait-logo.png" width="100px" height="50px">
                    </span>
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