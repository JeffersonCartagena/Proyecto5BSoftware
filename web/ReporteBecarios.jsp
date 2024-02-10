<%-- 
    Document   : Reportes
    Created on : 03/12/2023, 19:42:05
    Author     : User
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Reporte Becarios</title>

    <!-- Agrega las librerías de Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="STYLES/reporte.css">
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
                <a href="PanelBecas.jsp">Menu</a>
                  <a href="RegistroBecarios.jsp">Registro de Becarios</a>
                <a href="GestionBecas.jsp">Gestión de Becas</a>
                <a href="#"class="reportes-link">Gestión de Reportes</a>
                <a href="Roles.jsp">Configuracion</a>
                <a href="index.jsp">Cerrar Sesión</a>
            </div>
        </nav>

        <!-- Contenido principal -->
       <!-- Contenido principal -->
<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4 main">
    <h3 class="mt-4">¡Reportes!</h3>

    <!-- Barra de navegación Bootstrap -->
    <ul class="nav nav-tabs" id="myTabs">
        <li class="nav-item">
            <a class="nav-link active" id="tus-comprobantes-tab" data-toggle="tab" href="#tus-comprobantes" onclick="mostrarContenido('tus-comprobantes')">Comprobantes Aprobados</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="otros-comprobantes-tab" data-toggle="tab" href="#otros-comprobantes" onclick="mostrarContenido('otros-comprobantes')">Listado de tus Comprobantes</a>
        </li>
    </ul>

    <!-- Contenido de la barra de navegación -->
    <div class="tab-content">
        <!-- Contenido de Tus Comprobantes -->
        <div class="tab-pane fade show active" id="tus-comprobantes">
            <!-- Contenedor principal de cada apartado -->
            <div class="contenido-apartado">
                <!-- Barra de búsqueda -->
                <form class="form-inline">
                    <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
                </form>

                <!-- Lista de comprobantes -->
                <ul class="list-group">
                    <!-- Comprobante 1 -->
                    <li class="list-group-item">
                        <h5>Comprobante 1</h5>
                        <p>Código: ABC123</p>
                        <button class="btn btn-primary">Ver PDF</button>
                        <button class="btn btn-success">Imprimir Comprobante</button>
                    </li>
                    <!-- Repite este bloque para otros comprobantes -->
                </ul>
            </div>
        </div>

        <!-- Contenido de Otros Comprobantes -->
        <div class="tab-pane fade" id="otros-comprobantes">
            <!-- Contenedor principal de cada apartado -->
            <div class="contenido-apartado">
                <!-- Barra de búsqueda -->
                <form class="form-inline">
                    <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
                </form>

                <!-- Lista de comprobantes -->
                <ul class="list-group">
                    <!-- Comprobante 1 -->
                    <li class="list-group-item">
                        <h5>Comprobante 1</h5>
                        <p>Código: XYZ789</p>
                        <button class="btn btn-primary">Ver PDF</button>
                        <button class="btn btn-success">Imprimir Comprobante</button>
                    </li>
                    <!-- Repite este bloque para otros comprobantes -->
                </ul>
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
