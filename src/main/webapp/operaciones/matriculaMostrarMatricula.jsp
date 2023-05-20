<%-- 
    Document   : matriculaMostrarAlumnos
    Created on : 09-may-2023, 18:09:57
    Author     : jesus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" type="text/css" />
    </head>
    <body>
        <div class="card" style="width: 50rem; padding: 30px 0px 0px 30px;">
            <h4 class="display-8">Matriculas Registradas</h4>
            <form method=POST action="/WebSistema/controladorPrincipal">
                <input type=HIDDEN name=accion value="matriculaMostrarMatricula">
                <input type=HIDDEN name=modo value="busqueda">
                <table class="table table-striped table-hover">
                    <tbody>
                        <tr><td>
                                Buscar Matricula: <input name="xalu" value="<c:out value='${nroDoc}'/>"
                                                      size=60>
                            </td></tr>
                        <tr><td>
                                <div class="card" style="padding: 30px 0px 0px 30px;">
                                    <h4 class="display-8">Registro de Matriculas</h4>
                                    <form method=POST action="/WebSistema/controladorPrincipal">
                                        <input type=HIDDEN name=accion value="NuevoEliminarAlumno">
                                        <input type="hidden" name="accion" value="BuscarMatricula">

                                        <table class="table table-striped table-hover">
                                            <thead>
                                                <tr>
                                                    <th scope="col">#</th>
                                                    <th scope="col">Código</th>
                                                    <th scope="col">Fecha</th>
                                                    <th scope="col">Nro. Documento</th>
                                                    <th scope="col">Código Alumno</th>
                                                    <th scope="col">Total</th>
                                                    <th scope="col">Estado</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${arrMatriculas}" var="matricula">
                                                    <tr>
                                                        <td><input type="checkbox" name="xcod" value="<c:out value='${matricula.codigo}'/>"></td>
                                                        <td><c:out value="${matricula.codigo}"/></td>
                                                        <td><c:out value="${matricula.fecha}"/></td>
                                                        <td><c:out value="${matricula.nroDoc}"/></td>
                                                        <td><c:out value="${matricula.codigoAlumno}"/></td>
                                                        <td><c:out value="${matricula.total}"/></td>
                                                        <td><c:out value="${matricula.estado}"/></td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </form>
                                </div>

                            </td></tr>
                        <tr><td>
                                <input type=submit name=boton class="btn btn-primary" value="Buscar">
                            </td></tr>
                    </tbody>
                </table>
            </form>
        </div>
    </body>
</html>
