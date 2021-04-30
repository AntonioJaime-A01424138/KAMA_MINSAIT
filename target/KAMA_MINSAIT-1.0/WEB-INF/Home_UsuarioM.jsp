<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Minsait</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="vendors/feather/feather.css">
    <link rel="stylesheet" href="vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="vendors/datatables.net-bs4/dataTables.bootstrap4.css">
    <link rel="stylesheet" href="vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/js/pag_inicio_admin/select.dataTables.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/Minsait-logo.png"/>

    <!--Tablas></!-->
    <script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script type="text/javascript" charset="utf8"
            src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>


    <!--Botones></!-->
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.7.0/css/buttons.dataTables.min.css">
    <script type="text/javascript" charset="utf8"
            src="https://cdn.datatables.net/buttons/1.7.0/js/dataTables.buttons.min.js"></script>

    <!--Botones individuales></-->
    <script type="text/javascript" charset="utf8"
            src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script type="text/javascript" charset="utf8"
            src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script type="text/javascript" charset="utf8"
            src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script type="text/javascript" charset="utf8"
            src="https://cdn.datatables.net/buttons/1.7.0/js/buttons.html5.min.js"></script>
    <script type="text/javascript" charset="utf8"
            src="https://cdn.datatables.net/buttons/1.7.0/js/buttons.print.min.js"></script>
    <script type="text/javascript" charset="utf8" src="${pageContext.request.contextPath}/js/home_usuariom.js"></script>

</head>
<body>

<script>
    $(document).ready(function () {

        $('#example1').DataTable({
            dom: 'Bfrtip',
            buttons: [
                'copy', {
                    extend: 'excel',
                    messageTop: 'The information in this table belongs to Minsait.'
                },
                {
                    extend: 'pdf',
                    messageBottom: null
                },
                {
                    extend: 'print',
                    messageTop: null,
                    messageBottom: null
                },
                {
                    extend: 'csv',
                    messageTop: null,
                    messageBottom: null
                }
            ]
        });
    });

</script>
<div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
            <a class="navbar-brand brand-logo mr-5" href="auth"><img
                    src="${pageContext.request.contextPath}/images/Minsait-logo.png" class="mr-2" alt="logo" /></a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
            <ul class="navbar-nav navbar-nav-right">
                <li class="nav-item nav-profile dropdown">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" id="profileDropdown">
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

        <!-- partial -->

            <div class="content-wrapper">
                <div class="row">
                    <div class="col-md-12 grid-margin">
                        <div class="row">
                            <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                                <h3 class="font-weight-bold">Bienvenido Administrador</h3>
                                <hr>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 grid-margin">

                            <table id="example1" class="display expandable-table" style="width:100%">
                                <thead>
                                <tr>
                                    <th>Nombre Completo</th>
                                    <th>Teléfono</th>
                                    <th>Correo</th>
                                    <th>Curp</th>
                                    <th>Formacion</th>
                                    <th>Área de interés</th>
                                    <th>Visualizaciones</th>
                                </tr>
                                </thead>

                                <tbody>

                                <c:forEach items="${ListaC}" var="candidato" varStatus="status">
                                    <tr>

                                        <td><c:out value="${candidato.nombre}"/></td>
                                        <td><c:out value="${candidato.telefono}"/></td>
                                        <td><c:out value="${candidato.correo}"/></td>
                                        <td><c:out value="${candidato.curp}"/></td>
                                        <td><c:out value="${candidato.formacion}"/></td>
                                        <td><c:out value="${candidato.area}"/></td>
                                        <td>
                                            <button type="button" id="${candidato.idCandidato}"
                                                    class="btn btn-primary datos" data-toggle="modal"
                                                    data-target="#Modal">
                                                Consultar
                                            </button>
                                        </td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>


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
                        <!-- main-panel ends -->
                    </div>
                    <!-- page-body-wrapper ends -->
                </div>
            </div>


        <!-- The Modal -->
        <div class="modal fade" id="Modal">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h3 class="modal-title">Información del usuario</h3>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        <h4>Información personal</h4>
                        <form action="reporte" method="post">
                            <input type="hidden" name="idCandidato" id="idCandidato" value=""/>
                            <input type="submit" value="Descargar"/>
                        </form>
                        <table class="table table-hover table-primary">
                            <tbody>
                            <tr>
                                <th scope="row">Nombre completo</th>
                                <th id="nombre"></th>
                            </tr>
                            <tr>
                                <th scope="row">Teléfono</th>
                                <th id="telefono"></th>
                            </tr>
                            <tr>
                                <th scope="row">Correo</th>
                                <th id="correo"></th>
                            </tr>
                            <tr>
                                <th scope="row">CURP</th>
                                <th id="curp"></th>
                            </tr>
                            </tbody>
                        </table>

                        <h4></h4>
                        <h4>Puntajes</h4>
                        <table class="table table-hover table-primary">
                            <tbody>
                            <tr>
                                <th scope="row">Puntaje solución de problemas</th>
                                <th id="PP_SolProb"></th>
                            </tr>
                            <tr>
                                <th scope="row">Puntaje trabajo bajo presión</th>
                                <th id="PP_TrabPres"></th>
                            </tr>
                            <tr>
                                <th scope="row">Confianza valores y ética </th>
                                <th id="PP_Etica"></th>
                            </tr>
                            <tr>
                                <th scope="row">Fecha final</th>
                                <th id="Fecha_Final"></th>
                            </tr>
                            <tr>
                                <th scope="row">Fecha inicial</th>
                                <th id="Fecha_Inicio"></th>
                            </tr>
                            <tr>
                                <th scope="row">Hora final</th>
                                <th id="Hora_Final"></th>
                            </tr>
                            <tr>
                                <th scope="row">Hora inicial</th>
                                <th id="Hora_Inicio"></th>
                            </tr>

                            </tbody>
                        </table>
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <form action="reporte" method="post">
                            <input type="hidden" name="idCandidato" id="idCandidato" value=""/>
                            <input type="hidden" name="curp" id="" value="curp"/>
                            <button type="submit" value="Descargar"> </button>
                        </form>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>

                </div>
            </div>
        </div>


        <!-- container-scroller -->


        <!-- plugins:js -->
        <script src="${pageContext.request.contextPath}/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>

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
        <!-- End custom js for this page-->
</body>

</html>

