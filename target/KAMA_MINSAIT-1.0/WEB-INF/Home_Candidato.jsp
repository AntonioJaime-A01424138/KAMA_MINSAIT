<!DOCTYPE html>
<html lang="es">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Minsait</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/feather/feather.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/ti-icons/css/themify-icons.css">
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
            <a class="navbar-brand brand-logo mr-5" href="WEB-INF/Home_Candidato.jsp"><img src="${pageContext.request.contextPath}/images/Minsait-logo.png" class="mr-2" alt="logo"/></a>
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
                    <a class="nav-link" href="WEB-INF/Home_Candidato.jsp">
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
                    <a class="nav-link" data-toggle="collapse" href="WEB-INF/Perfil.jsp" aria-expanded="false" aria-controls="auth">
                        <i class="icon-head menu-icon"></i>
                        <span class="menu-title">Perfil</span>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="row">
                    <div class="col-md-12 grid-margin">
                        <div class="row">
                            <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                                <h3 class="font-weight-bold" style="font-size: 40px">Bienvenido Candidato</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 grid-margin stretch-card">
                        <div class="card position-relative">
                            <div class="card-body">
                                <div id="detailedReports" class="carousel slide detailed-report-carousel position-static pt-2" data-ride="carousel">
                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <div class="row">
                                                <img src="${pageContext.request.contextPath}/images/fondos/f1.png" alt="people" style="width: 100%; height: 450px;">
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <div class="row">
                                                <img src="${pageContext.request.contextPath}/images/fondos/f2.png" alt="people" style="width: 100%; height: 450px;">
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <div class="row">
                                                <img src="${pageContext.request.contextPath}/images/fondos/f3.png" alt="people" style="width: 100%; height: 450px;">
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <div class="row">
                                                <img src="${pageContext.request.contextPath}/images/fondos/f4.png" alt="people" style="width: 100%; height: 450px;">
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <div class="row">
                                                <img src="${pageContext.request.contextPath}/images/fondos/f5.png" alt="people" style="width: 100%; height: 450px;">
                                            </div>
                                        </div>
                                    </div>
                                    <a class="carousel-control-prev" href="#detailedReports" role="button" data-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="carousel-control-next" href="#detailedReports" role="button" data-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 grid-margin stretch-card">
                        <div class="card card-dark-blue">
                            <div class="card-body">
                                <h2 class="mb-4 font-weight-bold"> Pasos: </h2>
                                <div class="d-flex">
                                    <div class="ml-2">

                                        <p class="mb-4" style="font-size: 16px"> Agradecemos tu interés para formar parte del equipo Indra. A continuación te presentaremos los pasos a seguir para llevar a cabo tu proceso de selección:</p>

                                        <p class="mb-4 ml-4" style="font-size: 16px">Asegúrate de explorar las pestañas disponibles que tenemos para tí.</p>

                                        <p class="mb-4 ml-4" style="font-size: 16px">Revisa tu información personal y el horario en el que se te permitirá llevar a cabo tu prueba. </p>

                                        <p class="mb-4 ml-4" style="font-size: 16px">Ya habiendo finalizado tu prueba, nos pondremos en contacto contigo.</p>

                                        <p class="mb-4 ml-4" style="font-size: 16px">En caso de tener alguna duda comunícate con nosotros a través de nuestro correo.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-3 mb-4 stretch-card transparent">
                            <div class="card card-light-danger">
                                <div class="card-body">
                                    <p class="mb-4 font-weight-bold" style="font-size: 18px">Relájate:</p>
                                    <p style="font-size: 16px">En Minsait queremos conocer tu auténtico yo, saber qué te motiva en nuestra empresa y qué puedes aportar al equipo.</p>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 mb-4 stretch-card transparent">
                            <div class="card card-light-blue">
                                <div class="card-body">
                                    <p class="mb-4 font-weight-bold" style="font-size: 18px">Infórmate:</p>
                                    <p style="font-size: 16px">Encuentra en nuestra página web toda la información sobre nuestra división, las soluciones que ofrecemos y el tipo de proyecto que realizamos.</p>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3 mb-4 stretch-card transparent">
                            <div class="card card-light-danger">
                                <div class="card-body">
                                    <p class="mb-4 font-weight-bold" style="font-size: 18px" >Sé tu mismo/a:</p>
                                    <p style="font-size: 16px">Es importante que te muestres tal y como eres. Esto nos permitirá conocerte un poco más y saber en qué equipo encajaras..</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 mb-4 stretch-card transparent">
                            <div class="card card-light-blue">
                                <div class="card-body">
                                    <p class="mb-4 font-weight-bold" style="font-size: 18px">Creatividad al poder:</p>
                                    <p style="font-size: 16px">La metodología tradicional no es la más efectiva. Busca nuevas vías de enfrentarse ante un problema y seguro descubrimos tu lado más creativo.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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

