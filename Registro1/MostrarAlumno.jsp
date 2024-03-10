<%-- 
    Document   : MostrarAlumno
    Created on : 10 mar 2024, 14:54:08
    Author     : ROG
--%>

<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <h1>Hello World!</h1>



<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Alumnos</title>
</head>
<body>
    <h2>Lista de Alumnos</h2>
    
        <% for (Map<String, String> alumno : registros) { %>
            <li>
                Nombre: <%= alumno.get("Nombre") %>, 
                Edad: <%= alumno.get("Edad") %>, 
                ID: <%= alumno.get("ID") %>
                <a href="index.jsp?editarId=<%= alumno.get("ID") %>">Editar</a>
            </li>
        <% } %>
    
    <a href="index.jsp">Volver al Inicio</a>

</html>
    </body>

