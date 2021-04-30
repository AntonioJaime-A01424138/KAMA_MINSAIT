<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Minsait-Registro</title>
    <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/registro.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/Minsait-logo.png" />
</head>
<body>
<main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
    <div class="container">
        <div class="card login-card">
            <div class="row no-gutters">
                <div class="col-md-7">
                    <div class="card-body">
                        <div class="brand-wrapper">
                            <img src="${pageContext.request.contextPath}/assets/img/Minsait-logo.png" alt="logo" class="logo"/>
                        </div>
                        <p class="login-card-description">Registro</p>

                        <form action="registro" method="post">

                            <div class="form-group">
                                <label for="nombre" class="sr-only">Nombre</label>
                                <input type="text" name="nombre" id="nombre" class="form-control" placeholder="Nombre completo" required/>
                            </div>
                            <div class="form-group">
                                <label for="telefono" class="sr-only">Nombre</label>
                                <input type="text" name="telefono" id="telefono" value="" class="form-control" placeholder="Teléfono" required/>
                            </div>
                            <div class="form-group">
                                <label for="curp" class="sr-only">Nombre</label>
                                <input type="text" name="curp" id="curp" class="form-control" placeholder="CURP" oninput="validarCURP(this)" required/>
                                <span style="font-size: 12px;" id="resultadoCURP"></span>
                            </div>
                            <div class="form-group mb-4">
                                <label for="email" class="sr-only">Email</label>
                                <input type="text" name="email" id="email" class="form-control" placeholder="Email" required/>
                                <span style="font-size: 12px;" id="resultadoEMAIL"></span>
                            </div>
                            <div class="form-group mb-4">
                                <label for="password" class="sr-only">Password</label>
                                <input type="password" name="password" id="password" class="form-control" placeholder="*****" required/>
                                <span style="font-size: 12px;" id="resultadoCORRECTA"></span>
                                <span style="font-size: 12px;"><br>La contraseña debe contener:<br>-Al menos 8 carácteres<br>-1 mayúscula<br>-1 número<br>-1 carácter especial (* - _ . ,)</span>
                            </div>
                            <div class="form-group mb-4">
                                <label for="formacion" class="sr-only">Formacion Academica</label>
                                <input type="formacion" name="formacion" id="formacion" class="form-control" placeholder="Formacion Academica" required/>
                            </div>
                            <div class="form-group mb-4">
                                <label class="sr-only">&Aacute;rea de inter&eacute;s</label>
                                <select name="area" class="form-control" required>
                                    <option>Agencia digital</option>
                                    <option>Arquitecturas</option>
                                    <option>Big data</option>
                                    <option>Ciberseguridad</option>
                                    <option>Consultor&iacute;a ERP</option>
                                    <option>Consultor&iacute;a estrat&eacutegica y de negocio</option>
                                    <option>Consultor&iacute;a Tecnol&oacutegica</option>
                                    <option>DataScience and AI</option>
                                    <option>Desarrollo de software</option>
                                    <option>Hardware y Comunicaciones</option>
                                    <option>Perf&iacute;les corporativos</option>
                                    <option>QA and testing</option>
                                    <option>Sistemas/BBDD/Redes</option>
                                    <option>Soporte a usuarios y operaci&oacute;n</option>
                                </select>
                            </div>
                            <input name="login" id="login" class="btn btn-block login-btn mb-4" type="submit" value="Login"/>
                            <div>
                                <%= request.getAttribute("mensaje") == null ? "" : request.getAttribute("mensaje") %>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-5">
                    <img src="${pageContext.request.contextPath}/assets/img/registrate.jpg" alt="login" class="login-card-img">
                </div>
            </div>
        </div>

    </div>


</main>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/check/curp.js"></script>
<script src="${pageContext.request.contextPath}/js/check/passwords.js"></script>
<script src="${pageContext.request.contextPath}/js/check/email.js"></script>
<script src="${pageContext.request.contextPath}/js/check/phone.js"></script>
</body>
</html>