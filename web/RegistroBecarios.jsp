

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Registro Becarios</title>

    <!-- Agrega las librerías de Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="STYLES/registro.css">
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
               <a href="#" class="reportes-link">Registro de Bacarios</a>
                <a href="GestionBecas.jsp">Gestión de Becas</a>
                <a href="ReporteBecarios.jsp">Gestión de Reportes</a>
                <a href="Roles.jsp">Configuracion</a>
                <a href="index.jsp">Cerrar</a>
            </div>
        </nav>

        <!-- Contenido principal -->
       <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4 main">
    <h3 class="mt-4">¡Gestión!</h3>
     <!-- Barra de búsqueda y botones -->
    <div class="d-flex justify-content-between align-items-center">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="Buscar por cédula o nombre" aria-label="Buscar" aria-describedby="boton-buscar">
            <div class="input-group-append">
                <button class="btn btn-outline-secondary" type="button" id="boton-buscar">Buscar</button>
            </div>
        </div>

        <div>
            <button class="btn btn-primary" onclick="imprimirFicha()">Imprimir Ficha</button>
            <button class="btn btn-success" onclick="guardar()">Guardar</button>
        </div>
    </div>

    <!-- Barra de navegación Bootstrap -->
    <ul class="nav nav-tabs" id="myTabs">
        <li class="nav-item">
            <a class="nav-link active" id="datosPersonales-tab" data-toggle="tab" href="#datosPersonales" onclick="mostrarContenido('datosPersonales')">Datos Personales</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="datosContacto-tab" data-toggle="tab" href="#datosContacto" onclick="mostrarContenido('datosContacto')">Datos de Contacto</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="datosAdicionales-tab" data-toggle="tab" href="#datosAdicionales" onclick="mostrarContenido('datosAdicionales')">Datos Adicionales</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="datosInstitucionales-tab" data-toggle="tab" href="#datosInstitucionales" onclick="mostrarContenido('datosInstitucionales')">Datos Institucionales</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="datosEmergencia-tab" data-toggle="tab" href="#datosEmergencia" onclick="mostrarContenido('datosEmergencia')">Datos Adicionales de Emergencia</a>
        </li>
    </ul>

    <!-- Contenedor de Datos Personales -->
    <!-- Contenedor de Datos Personales -->
    <div class="tab-content">
        <div class="tab-pane fade show active" id="datosPersonales">
            <h4>Datos Personales</h4>
            <div class="codigo-container">
                <div class="form-group row">
                    <label class="col-sm-6 col-form-label">1. Tipo de documento de identificación:</label>
                    <div class="col-sm-6">
                        <select class="form-control">
                            <option value="cedula">Cédula</option>
                            <option value="pasaporte">Pasaporte</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-6 col-form-label">2. Número de documento de identificación:</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control">
                    </div>
                </div>
                <!-- Repite la estructura para los demás pares -->
                <div class="form-group row">
                    <label class="col-sm-6 col-form-label">3. Primer apellido del estudiante:</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-6 col-form-label">4. Segundo apellido del estudiante:</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-6 col-form-label">5. Primer nombre del estudiante:</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-6 col-form-label">6. Segundo nombre del estudiante:</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-6 col-form-label">7. Sexo del estudiante:</label>
                    <div class="col-sm-6">
                        <select class="form-control">
                            <option value="hombre">Hombre</option>
                            <option value="mujer">Mujer</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-6 col-form-label">8. Género del estudiante:</label>
                    <div class="col-sm-6">
                        <select class="form-control">
                            <option value="masculino">Masculino</option>
                            <option value="femenino">Femenino</option>
                            <option value="otro">Otro</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-6 col-form-label">9. Estado Civil:</label>
                    <div class="col-sm-6">
                        <select class="form-control">
                            <option value="soltero">Soltero</option>
                            <option value="casado">Casado</option>
                            <option value="divorciado">Divorciado</option>
                            <option value="viudo">Viudo</option>
                            <option value="mantenido">Mantenidos</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-6 col-form-label">10. Etnia:</label>
                    <div class="col-sm-6">
                        <select class="form-control">
                            <option value="indigena">Indígena</option>
                            <option value="afroecuatoriano">Afroecuatoriano</option>
                            <option value="negro">Negro</option>
                            <option value="mulato">Mulato</option>
                            <option value="montubio">Montubio</option>
                            <option value="mestizo">Mestizo</option>
                            <option value="blanco">Blanco</option>
                            <option value="otro">Otro</option>
                            <option value="no-registra">No Registra</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-6 col-form-label">11. Pueblo/Nacionalidad:</label>
                    <div class="col-sm-6">
                        <select class="form-control">
                            <option value="cofan">Cofán</option>
                            <option value="epera">Épera</option>
                            <option value="huancavilca">Huancavilca</option>
                            <option value="kanari">Kañari</option>
                            <option value="karanki">Karanki</option>
                            <option value="kayampi">Kayampi</option>
                            <!-- Añade más opciones según necesites -->
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-6 col-form-label">12. Tipo de sangre del estudiante:</label>
                    <div class="col-sm-6">
                        <select class="form-control">
                            <option value="a-rh+">A RH ( + )</option>
                            <option value="a-rh-">A RH ( - )</option>
                            <option value="b-rh+">B RH ( + )</option>
                            <option value="b-rh-">B RH ( - )</option>
                            <option value="ab-rh+">AB RH ( + )</option>
                            <option value="ab-rh-">AB RH ( - )</option>
                            <option value="o-rh+">O RH ( + )</option>
                            <option value="o-rh-">O RH ( - )</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-6 col-form-label">13. Tiene Discapacidad:</label>
                    <div class="col-sm-6">
                        <select class="form-control">
                            <option value="si">Sí</option>
                            <option value="no">No</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-6 col-form-label">14. Porcentaje Discapacidad:</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" placeholder="%">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-6 col-form-label">15. Nro. Carnet:</label>
                    <div class="col-sm-6">
                        <select class="form-control">
                            <option value="si">Sí</option>
                            <option value="no">No</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-6 col-form-label">16. Tipo de Discapacidad:</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-6 col-form-label">17. Fecha de Nacimiento:</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-6 col-form-label">Al lado Tipo Enfermedad Catastrófica:</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control">
                    </div>
                </div>
            </div>
        </div>

    <!-- Contenedor de Datos de Contacto -->
<div class="tab-pane fade" id="datosContacto">
    <h4>Datos de Contacto</h4>
    <div class="codigo-container">
        <!-- Código para Datos de Contacto -->

        <!-- 18. País de Nacionalidad -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">18. País de Nacionalidad:</label>
            <div class="col-sm-6">
                <select class="form-control">
                    <option value="ecuador">Ecuador</option>
                    <option value="colombia">Colombia</option>
                    <option value="peru">Perú</option>
                    <!-- Agrega más opciones según sea necesario -->
                </select>
            </div>
        </div>

        <!-- 19. País de Nacimiento -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">19. País de Nacimiento:</label>
            <div class="col-sm-6">
                <select class="form-control">
                    <option value="ecuador">Ecuador</option>
                    <option value="colombia">Colombia</option>
                    <option value="peru">Perú</option>
                    <!-- Agrega más opciones según sea necesario -->
                </select>
            </div>
        </div>

        <!-- 20. Provincia de Nacimiento -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">20. Provincia de Nacimiento:</label>
            <div class="col-sm-6">
                <select class="form-control">
                    <option value="pichincha">Pichincha</option>
                    <option value="imbabura">Imbabura</option>
                    <!-- Agrega más opciones según sea necesario -->
                </select>
            </div>
        </div>

        <!-- 21. Cantón de Nacimiento -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">21. Cantón de Nacimiento:</label>
            <div class="col-sm-6">
                <input type="text" class="form-control">
            </div>
        </div>

        <!-- 22. País de Residencia -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">22. País de Residencia:</label>
            <div class="col-sm-6">
                <select class="form-control">
                    <option value="ecuador">Ecuador</option>
                    <option value="peru">Perú</option>
                    <!-- Agrega más opciones según sea necesario -->
                </select>
            </div>
        </div>

        <!-- 23. Provincia de Residencia -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">23. Provincia de Residencia:</label>
            <div class="col-sm-6">
                <select class="form-control">
                      <option value="pichincha">Pichincha</option>
                    <option value="imbabura">Imbabura</option>
                    <!-- Agrega opciones según sea necesario -->
                </select>
            </div>
        </div>

        <!-- 24. Cantón de Residencia -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">24. Cantón de Residencia:</label>
            <div class="col-sm-6">
                <select class="form-control">
                      <option value="pichincha">Cayambe</option>
                    <option value="imbabura">Imbarra</option>
                    <!-- Agrega opciones según sea necesario -->
                </select>
            </div>
        </div>

        <!-- 25. Correo electrónico del estudiante -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">25. Correo electrónico del estudiante:</label>
            <div class="col-sm-6">
                <input type="text" class="form-control">
            </div>
        </div>

        <!-- 26. Teléfono de Domicilio -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">26. Teléfono de Domicilio:</label>
            <div class="col-sm-6">
                <input type="text" class="form-control">
            </div>
        </div>

        <!-- 27. Ingreso Total en el Hogar -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">27. Ingreso Total en el Hogar:</label>
            <div class="col-sm-6">
                <input type="text" class="form-control">
            </div>
        </div>

        <!-- 28. Cantidad de Miembros en el Hogar -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">28. Cantidad de Miembros en el Hogar:</label>
            <div class="col-sm-6">
                <input type="text" class="form-control">
            </div>
        </div>
    </div>
</div>

<!-- Contenedor de Datos Adicionales -->
<div class="tab-pane fade" id="datosAdicionales">
    <h4>Datos Adicionales</h4>
    <div class="codigo-container">
        <!-- Código para Datos Adicionales -->

        <!-- 29. Calle Principal -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">29. Calle Principal:</label>
            <div class="col-sm-6">
                <input type="text" class="form-control">
            </div>
        </div>

        <!-- 30. Calle Secundaria -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">30. Calle Secundaria:</label>
            <div class="col-sm-6">
                <input type="text" class="form-control">
            </div>
        </div>

        <!-- 31. Número Casa/Edificio -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">31. Número Casa/Edificio:</label>
            <div class="col-sm-6">
                <input type="text" class="form-control">
            </div>
        </div>

        <!-- 32. Código Postal -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">32. Código Postal:</label>
            <div class="col-sm-6">
                <input type="text" class="form-control">
            </div>
        </div>

        <!-- 33. Ubicación Geográfica -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">33. Ubicación Geográfica:</label>
            <div class="col-sm-6">
                <!-- Agrega aquí el código necesario para el mapa de Google, por ejemplo, un enlace a Google Maps -->
                <a href="https://www.google.com/maps" target="_blank">Ver en Google Maps</a>
                 <input type="text" class="form-control">
            </div>
        </div>
    </div>
</div>

        
      <!-- Contenedor de Datos Institucionales -->
<div class="tab-pane fade" id="datosInstitucionales">
    <h4>Datos Institucionales</h4>
    <div class="codigo-container">
        <!-- Código para Datos Institucionales -->

        <!-- 34. Tipo de Colegio -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">34. Tipo de Colegio:</label>
            <div class="col-sm-6">
                <select class="form-control">
                    <option value="fiscal">Fiscal</option>
                    <option value="municipal">Municipal</option>
                    <option value="particular">Particular</option>
                    <!-- Agrega más opciones según sea necesario -->
                </select>
            </div>
        </div>

        <!-- 35. Recibe Pensión Diferenciada -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">35. Recibe Pensión Diferenciada:</label>
            <div class="col-sm-6">
                <select class="form-control">
                    <option value="si">Sí</option>
                    <option value="no">No</option>
                    <!-- Agrega más opciones según sea necesario -->
                </select>
            </div>
        </div>

        <!-- 36. El estudiante para qué emplea sus ingresos? -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">36. El estudiante para qué emplea sus ingresos?:</label>
            <div class="col-sm-6">
                <input type="text" class="form-control">
            </div>
        </div>

        <!-- 37. Ha perdido la gratuidad -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">37. Ha perdido la gratuidad:</label>
            <div class="col-sm-6">
                <select class="form-control">
                    <option value="si">Sí</option>
                    <option value="no">No</option>
                    <!-- Agrega más opciones según sea necesario -->
                </select>
            </div>
        </div>

        <!-- 38. El estudiante se encuentra dedicado a -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">38. El estudiante se encuentra dedicado a:</label>
            <div class="col-sm-6">
                <select class="form-control">
                    <option value="estudia">Estudia</option>
                    <option value="trabaja">Trabaja</option>
                    <option value="estudia_trabaja">Estudia y trabaja</option>
                    <!-- Agrega más opciones según sea necesario -->
                </select>
            </div>
        </div>

        <!-- 39. La familia del estudiante recibe el bono de desarrollo humano -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">39. La familia del estudiante recibe el bono de desarrollo humano:</label>
            <div class="col-sm-6">
                <select class="form-control">
                    <option value="si">Sí</option>
                    <option value="no">No</option>
                    <!-- Agrega más opciones según sea necesario -->
                </select>
            </div>
        </div>
    </div>
</div>

<!-- Contenedor de Datos Adicionales de Emergencia -->
<div class="tab-pane fade" id="datosEmergencia">
    <h4>Datos Adicionales de Emergencia</h4>
    <div class="codigo-container">
        <!-- Código para Datos Adicionales de Emergencia -->

        <!-- 40. Nombre del Contacto de Emergencia -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">40. Nombre del Contacto de Emergencia:</label>
            <div class="col-sm-6">
                <input type="text" class="form-control">
            </div>
        </div>

        <!-- 41. Parentesco -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">41. Parentesco:</label>
            <div class="col-sm-6">
                <select class="form-control">
                    <option value="madre">Madre</option>
                    <option value="padre">Padre</option>
                    <option value="hermano">Hermano</option>
                    <option value="hijo">Hijo</option>
                    <option value="mujer">Mujer</option>
                    <option value="otro">Otro</option>
                    <!-- Agrega más opciones según sea necesario -->
                </select>
            </div>
        </div>

        <!-- 42. Teléfono de Domicilio Emergencia -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">42. Teléfono de Domicilio Emergencia:</label>
            <div class="col-sm-6">
                <input type="text" class="form-control">
            </div>
        </div>

        <!-- 43. Teléfono Móvil Emergencia -->
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">43. Teléfono Móvil Emergencia:</label>
            <div class="col-sm-6">
                <input type="text" class="form-control">
            </div>
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
