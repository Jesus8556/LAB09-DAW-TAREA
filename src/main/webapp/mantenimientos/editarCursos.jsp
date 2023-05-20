<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" type="text/css" />
    </head>
    <body>
        <div class="container">
            <h1 class="display-8"><c:out value='${titulo}'/></h1>
            <form action="/WebSistema/controladorPrincipal" method="POST">
                <input type="hidden" name="accion" value="GRABAR_CURSO">
                <input type="hidden" name="operacion" value='<c:out value='${operacion}'/>'>
                <input type="hidden" name="xcod" value="<c:out value='${curso.codigo}'/>">
                <div class="form-group">
                    <label for="codigo">Código:</label>
                    <input type="text" id="codigo" name="xcod" class="form-control" value="<c:out value='${curso.codigo}'/>" readonly>
                </div>

                <div class="form-group">
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="xnom" class="form-control" value="<c:out value='${curso.nombre}'/>">
                </div>

                <div class="form-group">
                    <label for="costo">Costo:</label>
                    <input type="number" id="costo" name="xcosto" step="0.01" class="form-control" value="<c:out value='${curso.costo}'/>" required>
                </div>

                <div class="form-group">
                    <label for="fec_ini">Fecha de Inicio:</label>
                    <input type="date" id="fec_ini" name="xfechaini" class="form-control" value="<c:out value='${curso.fec_ini}'/>" required>
                </div>

                <div class="form-group">
                    <label for="fec_fin">Fecha de Fin:</label>
                    <input type="date" id="fec_fin" name="xfechafin" class="form-control" value="<c:out value='${curso.fec_fin}'/>" required>
                </div>

                <div class="form-group">
                    <label for="duracion">Duración:</label>
                    <input type="number" id="duracion" name="xdur" class="form-control" value="<c:out value='${curso.duracion}'/>" required>
                </div>

                <div class="form-group">
                    <label for="sesiones">Sesiones:</label>
                    <input type="number" id="sesiones" name="xsesiones" class="form-control" value="<c:out value='${curso.sesiones}'/>" required>
                </div>

                <div class="form-group">
                    <label for="capacidad">Capacidad:</label>
                    <input type="number" id="capacidad" name="xcapacidad" class="form-control" value="<c:out value='${curso.capacidad}'/>" required>
                </div>

                <div class="form-group">
                    <label for="inscritos">Inscritos:</label>
                    <input type="number" id="inscritos" name="xsins" class="form-control" value="<c:out value='${curso.inscritos}'/>" required>
                </div>
                <div class="form-group">
                    <label for="estado">Estado:</label>
                    <select id="estado" name="xest" class="form-control" required>
                        <option value="A" <c:if test="${curso.estado eq 'A'}">selected</c:if>>Activo</option>
                        <option value="I" <c:if test="${curso.estado eq 'I'}">selected</c:if>>Inactivo</option>
                    </select>
                </div>

                <input type=submit name=boton class="btn btn-primary" value="GRABAR">
                <input type=submit name=boton class="btn btn-dark" value="CANCELAR">
            </form>
        </div>

        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>