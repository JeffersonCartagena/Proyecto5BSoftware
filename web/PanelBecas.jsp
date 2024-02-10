<%-- 
    Document   : Panel
    Created on : 03/12/2023, 3:04:08
    Author     : User
--%>

<!-- Dashboard.jsp -->

<!-- Panel.jsp -->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Panel de Becas</title>

    <!-- Agrega las librerías de Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="STYLES/panel.css">
</head>
<body>

<!-- Barra de navegación -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Bienestar Estudiantil</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="#">User</a>
            </li>
        </ul>
    </div>
</nav>

<!-- Contenido principal -->
<div class="container-fluid mt-3">
    <div class="row">
        <!-- Barra lateral -->
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
            <div class="sidenav">
                <a href="#"class="reportes-link">Menu</a>
                <a href="RegistroBecarios.jsp">Registro de Becarios</a>
                <a href="GestionBecas.jsp">Gestión de Becas</a>
                <a href="ReporteBecarios.jsp">Gestión de Reportes</a>
               <a href="Roles.jsp">Configuracion</a>
                <a href="index.jsp">Cerrar Sesión</a>
            </div>
        </nav>

        <!-- Contenido principal -->
         <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4 main">
            <h3 class="mt-4">¡Bienvenido!</h3>
            <div class="row mt-4">
                <div class="col-md-3">
                    <div class="card">
                        <img src="IMAGENES/beca.png" class="card-img-top" alt="Registro de Becarios"
                             onclick="window.location.href='RegistroBecarios.jsp'">
                        <div class="card-body">
                            <h5 class="card-title">Registro de Becarios</h5>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <img src="IMAGENES/graduacion.png" class="card-img-top" alt="Gestión de Becas"
                             onclick="window.location.href='GestionBecas.jsp'">
                        <div class="card-body">
                            <h5 class="card-title">Gestión de Becas</h5>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <img src="IMAGENES/reporte.png" class="card-img-top" alt="Gestión de Reportes"
                             onclick="window.location.href='ReporteBecarios.jsp'">
                        <div class="card-body">
                            <h5 class="card-title">Gestión de Reportes</h5>
                        </div>
                    </div>
                </div>
                
                
                <div class="col-md-3">
                    <div class="card">
                        <img src="IMAGENES/Binestar.png" class="card-img-top" alt="Cerrar Sesión"
                             onclick="window.location.href='index.jsp'">
                        <div class="card-body">
                            <h5 class="card-title">Cerrar Sesión</h5>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>

<!-- Librerías y scripts de Bootstrap y otros -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- Pie de página -->
<div class="footer fixed-bottom bg-light">
    Propiedad Intelectual de Jefferson Cartagena
</div>

</body>
</html>
