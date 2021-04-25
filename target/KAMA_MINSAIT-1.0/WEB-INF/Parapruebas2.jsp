<%--
  Created by IntelliJ IDEA.
  User: Alison
  Date: 18/04/2021
  Time: 06:39 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">
    <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
</head>
<body>
Hola soy el Admin
<a href="logout">Cerrar sesion</a>

<div class="container" style="background: rgba(255, 255, 255, 1); padding: 10px;border-radius: 5px;">
    <div class="container-fluid" id="containBotones">
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#createNew">
            <i class="fas fa-user-plus"></i> Crear nuevo GID
        </button>
        <button type="button" class="btn btn-success">
            <i class="fas fa-file-csv"></i> Exportar selección a CSV
        </button>
        <button id="modalGm" type="button" class="btn btn-success" onclick="showToast()">
            <i class="fas fa-check-square"></i> Seleccionar TODOS
        </button>
        <button type="button" class="btn btn-secondary">
            <i class="fas fa-times-circle"></i> Quitar selección
        </button>
    </div>
    <table id="TheChamber" class="table table-hover table-dark">
        <thead>
        <tr>
            <th scope="col">GamerID</th>
            <th scope="col">Nombre(s)</th>
            <th scope="col">Apellido(s)</th>
            <th scope="col">Correo</th>
            <th scope="col">Rol</th>
            <th scope="col">Descargas</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${ListaC}" var="candidato" varStatus="status">
            <tr>
                <td>${candidato.idCandidato}</td>
                <td><c:out value="${candidato.nombre}" /></td>
                <td><c:out value="${candidato.telefono}" /></td>
                <td><c:out value="${candidato.correo}" /></td>
                <td><c:out value="${candidato.curp}" /></td>
                <td><button type="button" class="btn btn-outline-primary" data-bs-toggle="modal"
                            data-bs-target="#Modal${cuenta.username}">
                    <i class=" fas fa-info-circle"></i> VER
                </button> <button type="button" class="btn btn-outline-danger">
                    <i class="far fa-file-pdf"></i> PDF
                </button>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>


</body>
</html>
