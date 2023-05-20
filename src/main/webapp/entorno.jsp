<%-- 
    Document   : entorno.jsp
    Created on : 29/04/2023, 07:20:08 PM
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

 <%--validacion de sesion--%>
<%
HttpSession misession= (HttpSession) request.getSession();
String usuario= (String) misession.getAttribute("usuario");  
if(misession == null || misession.getAttribute("usuario") == null){
      out.print("<link rel=\"stylesheet\" \n"
                + "              href=\"webjars/bootstrap/5.1.3/css/bootstrap.min.css\" type=\"text/css\" />");
      out.println("<center>");           
      out.println("<h3>No tiene permisos para acceder a esta seccion</h3>");
      out.println("<a class='btn btn-primary' href='/WebSistema/login.jsp'>Ir a pagina de acceso</a>");
      out.println("</center>");
      return;
  }    
%>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>SistemaWeb</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <frameset rows="80,*" border="0" frameborder="0" y framespacing="40">
          <frame src=titulo.html name=titulo>
          <frameset cols="250,*">
              <frame src=opciones.jsp name=izquierda>
              <frame src=contenido.html name=derecha>
          </frameset>
       </frameset> 
    </head>
</html>