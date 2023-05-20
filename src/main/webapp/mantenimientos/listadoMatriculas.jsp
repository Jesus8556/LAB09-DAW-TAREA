
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" type="text/css" />
    </head>
    <body>
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
    </body>
</html>