<%-- 
    Document   : index
    Created on : 03/12/2023, 2:47:23
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Binestar Estudiantil</title>
        <link rel="stylesheet" type="text/css" href="STYLES/styles.css">
    </head>
    
    <body>
            <!-- Sección derecha  del login -->
    
      <div class="container-fluid">
        <!-- Encabezado con barra de navegación -->
        <nav class="navbar navbar-expand-lg navbar-light bg-info"> <!-- Cambié el color de fondo a celeste -->
            <a class="navbar-brand" href="#">Bienestar Estudiantil</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                 <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="Info.jsp">Nosotros</a> <!-- Agregué el enlace a Info.jsp -->
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Info.jsp">Misión</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Info.jsp">Visión</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Info.jsp">Contacto</a>
                    </li>
                </ul>
            </div>
                   <%
    Integer failedAttempts = (Integer) request.getAttribute("failedAttempts");
    if (failedAttempts != null && failedAttempts > 0) {
%>
    <div class="alert alert-danger" role="alert">
        Intentos fallidos: <%= failedAttempts %>
    </div>
<%
    }
%>
        </nav>

        <!-- Cuerpo de la página con dos secciones (izquierda y derecha) -->
        <div class="row mt-4">
            <!-- Sección izquierda con el fondo naranja -->
            <div class="col-md-6 bg-warning">
                <div class="orange-box p-4"> <!-- Añadí un nuevo div con fondo naranja -->
                    
                    <h3>Consejos:</h3>
                    <p><strong>Inicio de Sesión:</strong></p>
                    <p>Ingresa tu nombre de usuario o correo electrónico asociado a tu cuenta.</p>
                    <p><strong>Contraseña Segura:</strong></p>
                    <p>Crea una contraseña segura y única. Debe contener al menos 10 caracteres, incluyendo números,
                        mayúsculas, minúsculas y caracteres especiales. ¡Tu seguridad es nuestra prioridad!</p>
                    <p><strong>Consejo de Seguridad:</strong></p>
                    <p><strong>Advertencia Importante:</strong> Nunca compartas tu contraseña con nadie. Mantén tu
                        información segura y protegida. Recuerda, un buen hábito es cambiar tu contraseña periódicamente
                        para garantizar la máxima seguridad. ¡Tu confianza es fundamental para nosotros!</p>
                </div>
            </div>
      
             <div class="col-md-6">
            <!-- Resto del contenido del formulario (como lo tenías) -->
            <div id="login-box">
                <div id="login-container">
                    <div id="login-box">
                        
                        
                        
                        <form action="Servlet" method="post">
                            <div class="form-group">
                                <label for="username">Usuario:</label>
                                <input type="text" class="form-control" id="username" name="username" required>
                            </div>
                            <div class="form-group">
                                <label for="password">Contraseña:</label>
                                <input type="password" class="form-control" id="password" name="password" required>
                            </div>
                            <button type="submit" class="btn btn-danger">Iniciar sesión</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="img-container">
                <img src="IMAGENES/Binestar Estudiantil Logo - Original - 5000x5000.png" alt="Logo"
                     id="logo" class="img-fluid mt-4 mb-4">
            </div>
        </div>

        <div id="footer" class="mt-4 bg-info"> <!-- Cambié el color de fondo a celeste -->
            Propiedad Intelectual de Jefferson Cartagena
        </div>
    </div>

    <!-- Agrega el enlace al archivo JavaScript de Bootstrap (opcional) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <%-- Agrega esto en la ubicación que desees mostrar los intentos fallidos --%>


</body>
</html>
