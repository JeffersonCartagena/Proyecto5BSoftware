


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Gestion Becarios</title>

    <!-- Agrega las librerías de Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="STYLES/gestion.css">
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

    <div class="row">
        <!-- Barra lateral -->
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
            <div class="sidenav">
                <a href="PanelBecas.jsp">Menu</a>
                  <a href="RegistroBecarios.jsp">Registro de Becarios</a>
                <a href="#"class="reportes-link">Gestión de Becas</a>
                <a href="ReporteBecarios.jsp">Gestión de Reportes</a>
               <a href="Roles.jsp">Configuracion</a>
                <a href="index.jsp">Cerrar</a>
            </div>
        </nav>

        <!-- Contenido principal -->

<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4 main">
    <h3 class="mt-4">¡Gestión!</h3>

    <!-- Barra de navegación Bootstrap -->
    <ul class="nav nav-tabs" id="myTabs">
        <li class="nav-item">
            <a class="nav-link active" id="becas-tab" data-toggle="tab" href="#becas">Becas</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="requisitos-tab" data-toggle="tab" href="#requisitos">Requisitos</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="senescyt-tab" data-toggle="tab" href="#senescyt">Enviar a Senescyt</a>
        </li>
    </ul>

    <div class="tab-content">
        <!-- Contenido para la pestaña "Becas" -->
        <div class="tab-pane fade show active" id="becas">
            <h4>Programas de Becas Disponibles</h4>
            <table class="table table-bordered">
                <thead class="thead-dark">
                    <tr>
                        <th>N</th>
                        <th>Programa</th>
                        <th>Fecha Convocatoria</th>
                        <th>Fin Convocatoria</th>
                        <th>Opciones</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Fila 1 -->
                    <tr>
                        <td>1</td>
                        <td>Programa de Becas Educación Superior (Universidades e Institutos)</td>
                        <td>Fecha</td>
                        <td>Fin Fecha</td>
                        <td><button class="btn btn-primary">Solicitar Beca</button></td>
                    </tr>
                    <!-- Fila 2 -->
                    <tr>
                        <td>2</td>
                        <td>Programa de Becas para Educación Secundaria (Colegios)</td>
                        <td>Fecha</td>
                        <td>Fin Fecha</td>
                        <td><button class="btn btn-primary">Solicitar Beca</button></td>
                    </tr>
                    <!-- Fila 3 -->
                    <tr>
                        <td>3</td>
                        <td>Programa de Becas para Educación Primaria (Escuelas)</td>
                        <td>Fecha</td>
                        <td>Fin Fecha</td>
                        <td><button class="btn btn-primary">Solicitar Beca</button></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Contenido para la pestaña "Requisitos" -->
        <div class="tab-pane fade" id="requisitos">
           <table class="table table-custom table-bordered table-striped">
            <thead class="thead-dark">
            <tr>
                <th scope="col">#</th>
                <th scope="col">Requisitos</th>
                <th scope="col">Documentación de respaldo</th>
                <th scope="col">Verificación</th>
                <th scope="col">Acciones</th>
            </tr>
            </thead>
            <tbody>
            <!-- Fila 1 -->
            <tr>
                <th scope="row">1</th>
                <td>Persona natural en goce de derechos de participación ciudadana en el Ecuador.</td>
                <td>Se verificará que la persona se encuentre habilitada para trámite público.</td>
                <td>
                    <input type="checkbox" class="verification-checkbox color-checkbox" id="verificationCheckbox1">
                    <label class="verification-label" for="verificationCheckbox1"></label>
                </td>
                <td>
                    <input type="file" class="upload-input" id="uploadInput1" accept=".pdf">
                    <label class="btn btn-primary btn-custom" for="uploadInput1">Subir PDF</label>
                     <button class="btn btn-danger btn-custom delete-btn" onclick="eliminarDocumento(1)" disabled>Eliminar</button>
                    <button class="btn btn-success btn-custom register-btn">Registrar</button>
                </td>
            </tr>
            <!-- Fila 2 -->
            <tr>
                <th scope="row">2</th>
                <td>Quienes se encuentren en proceso de validación de trayectoria laboral a través del Ministerio de Deporte.</td>
                <td>Se verificará en el informe emitido por la SIES de la solicitud de validación de trayectoria laboral.</td>
                <td>
                    <input type="checkbox" class="verification-checkbox color-checkbox" id="verificationCheckbox2">
                    <label class="verification-label" for="verificationCheckbox2"></label>
                </td>
                <td>
                    <input type="file" class="upload-input" id="uploadInput2" accept=".pdf">
                    <label class="btn btn-primary btn-custom" for="uploadInput2">Subir PDF</label>
                     <button class="btn btn-danger btn-custom delete-btn" onclick="eliminarDocumento(1)" disabled>Eliminar</button>
                    <button class="btn btn-success btn-custom register-btn">Registrar</button>
                </td>
            </tr>
            <!-- Fila 3 -->
            <tr>
                <th scope="row">3</th>
                <td>Haber sido víctimas de violencia basada en género.</td>
                <td>Certificación del inicio de la investigación previa de la causa penal o sentencia condenatoria ejecutoriada.</td>
                <td>
                    <input type="checkbox" class="verification-checkbox color-checkbox" id="verificationCheckbox3">
                    <label class="verification-label" for="verificationCheckbox3"></label>
                </td>
                <td>
                    <input type="file" class="upload-input" id="uploadInput3" accept=".pdf">
                    <label class="btn btn-primary btn-custom" for="uploadInput3">Subir PDF</label>
                     <button class="btn btn-danger btn-custom delete-btn" onclick="eliminarDocumento(1)" disabled>Eliminar</button>
                    <button class="btn btn-success btn-custom register-btn">Registrar</button>
                </td>
            </tr>
            <!-- Fila 4 -->
            <tr>
                <th scope="row">4</th>
                <td>Presentar condición de discapacidad permanente calificada por la autoridad pública competente, de conformidad con la normativa vigente.</td>
                <td>Se verificará mediante la información oficial remitida por la entidad pública competente, que la persona postulante tenga discapacidad permanente igual o mayor al 30%, debidamente calificada.</td>
                <td>
                    <input type="checkbox" class="verification-checkbox color-checkbox" id="verificationCheckbox4">
                    <label class="verification-label" for="verificationCheckbox4"></label>
                </td>
                <td>
                    <input type="file" class="upload-input" id="uploadInput4" accept=".pdf">
                    <label class="btn btn-primary btn-custom" for="uploadInput4">Subir PDF</label>
                     <button class="btn btn-danger btn-custom delete-btn" onclick="eliminarDocumento(1)" disabled>Eliminar</button>
                    <button class="btn btn-success btn-custom register-btn">Registrar</button>
                </td>
            </tr>
            <!-- Fila 5 -->
            <tr>
                <th scope="row">5</th>
                <td>Condición de vulnerabilidad económica.</td>
                <td>Se verificará que la persona postulante pertenezca al grupo “pobreza” o “extrema pobreza”, según lo determinado en el Registro Social.</td>
                <td>
                    <input type="checkbox" class="verification-checkbox color-checkbox" id="verificationCheckbox5">
                    <label class="verification-label" for="verificationCheckbox5"></label>
                </td>
                <td>
                    <input type="file" class="upload-input" id="uploadInput5" accept=".pdf">
                    <label class="btn btn-primary btn-custom" for="uploadInput5">Subir PDF</label>
                     <button class="btn btn-danger btn-custom delete-btn" onclick="eliminarDocumento(1)" disabled>Eliminar</button>
                    <button class="btn btn-success btn-custom register-btn">Registrar</button>
                </td>
            </tr>
            <!-- Fila 6 -->
            <tr>
                <th scope="row">6</th>
                <td>Ser persona ecuatoriana retornada.</td>
                <td>Copia de la declaratoria de vulnerabilidad de conformidad al artículo 21 de la Ley Orgánica de Movilidad Humana. Copia de certificado de persona ecuatoriana retornada emitido por el Ministerio de Relaciones Exteriores y Movilidad Humana5, que se encuentre vigente.</td>
                <td>
                    <input type="checkbox" class="verification-checkbox color-checkbox" id="verificationCheckbox6">
                    <label class="verification-label" for="verificationCheckbox6"></label>
                </td>
                <td>
                    <input type="file" class="upload-input" id="uploadInput6" accept=".pdf">
                    <label class="btn btn-primary btn-custom" for="uploadInput6">Subir PDF</label>
                     <button class="btn btn-danger btn-custom delete-btn" onclick="eliminarDocumento(1)" disabled>Eliminar</button>
                    <button class="btn btn-success btn-custom register-btn">Registrar</button>
                </td>
            </tr>
            <!-- Fila 7 -->
            <tr>
                <th scope="row">7</th>
                <td>Pertenecer a un pueblo o nacionalidad ecuatoriana.</td>
                <td>Certificado de auto identificación para personas de pueblos y nacionalidades emitido por el Consejo Nacional para la Igualdad de Pueblos y Nacionalidades.</td>
                <td>
                    <input type="checkbox" class="verification-checkbox color-checkbox" id="verificationCheckbox7">
                    <label class="verification-label" for="verificationCheckbox7"></label>
                </td>
                <td>
                    <input type="file" class="upload-input" id="uploadInput7" accept=".pdf">
                    <label class="btn btn-primary btn-custom" for="uploadInput7">Subir PDF</label>
                     <button class="btn btn-danger btn-custom delete-btn" onclick="eliminarDocumento(1)" disabled>Eliminar</button>
                    
                    <button class="btn btn-success btn-custom register-btn">Registrar</button>
                </td>
            </tr>
            </tbody>
        </table>
        </div>

        <!-- Contenido para la pestaña "Enviar a Senescyt" -->
        <div class="tab-pane fade" id="senescyt">
            <h4>Envío de Documentos a Senescyt</h4>
            <p>Información sobre cómo enviar documentos a Senescyt.</p>

            <!-- Tabla de documentos -->
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Nombre del Documento</th>
                        <th>PDF Registrado</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Fila 1 -->
                    <tr>
                        <td>Documento 1</td>
                        <td>
                            <div class="progress">
                                <div class="progress-bar" role="progressbar" style="width: 75%;" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </td>
                        <td>
                            <button class="btn btn-primary">Enviar</button>
                            <button class="btn btn-danger">Eliminar</button>
                        </td>
                    </tr>
                    <!-- Fila 2 -->
                    <tr>
                        <td>Documento 2</td>
                        <td>
                            <div class="progress">
                                <div class="progress-bar" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </td>
                        <td>
                            <button class="btn btn-primary">Enviar</button>
                            <button class="btn btn-danger">Eliminar</button>
                        </td>
                    </tr>
                    <!-- Puedes agregar más filas según sea necesario -->
                </tbody>
            </table>
        </div>
    </div>
</main>

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
