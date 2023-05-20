<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" type="text/css" />
    </head>
    <body>
    <center>
        <div class="list-group jumbotron jumbotron-fluid mt-4">

            <h5 class="display-100 alert alert-success">OPCIONES DISPONIBLES</h5>
            <div class="alert alert-warning" role="alert">
                <h4>Mantenimientos</h4>
                <a href="/WebSistema/controladorPrincipal?accion=listadoAreas" class="list-group-item list-group-item-action list-group-item-secondary" 
                   target="derecha">Registro Areas</a>
                <a href="/WebSistema/controladorPrincipal?accion=listadoAlumnos" class="list-group-item list-group-item-action list-group-item-secondary" 
                   target="derecha">Registro Alumnos</a>
                <a href="/WebSistema/controladorPrincipal?accion=listadoCursos" class="list-group-item list-group-item-action list-group-item-secondary" 
                   target="derecha">Registro Cursos</a>
                
                
            </div >
            <div class="alert alert-primary" role="alert">
                <h4>Operaciones</h4>
                <a href="/WebSistema/controladorPrincipal?accion=matriculaMostrarAlumnos&modo=Lista" class="list-group-item list-group-item-action list-group-item-secondary" 
                   target="derecha">Crear Matricula </a>
                <a href="/WebSistema/controladorPrincipal?accion=matriculaMostrarMatricula&modo=Lista" class="list-group-item list-group-item-action list-group-item-secondary" 
                   target="derecha">Registro Matriculas</a>
                
                
                
            </div>
            <div class="alert alert-success" role="alert">
                <h4>Reportes</h4>
                <a href="/WebSistema/reportes/listadoAlumnos.jsp" class="list-group-item list-group-item-action list-group-item-secondary" 
                   target="derecha"> Listar Alumnos</a>
                <a href="/WebSistema/reportes/formularioListarAlumnosPorSexo.jsp" class="list-group-item list-group-item-action list-group-item-secondary" 
                   target="derecha"> Listar Alumnos por Sexo</a>
                <a href="/WebSistema/reportes/listadoCursos.jsp" class="list-group-item list-group-item-action list-group-item-secondary" 
                   target="derecha"> Listar Cursos</a>
                <a href="/WebSistema/reportes/formularioListarCursosPorDoc.jsp" class="list-group-item list-group-item-action list-group-item-secondary" 
                   target="derecha"> Listar Matricula por Doc</a>
                
            </div>
        </div>
    </center>
</body>
</html>