<%-- 
    Document   : holaz
    Created on : 10 mar 2024, 13:16:21
    Author     : ROG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>

<%
    List<Map<String, String>> registros = (List<Map<String, String>>) application.getAttribute("registros");

    if (registros == null) {
        registros = new ArrayList<>();
        application.setAttribute("registros", registros);
    }

    String nombre = request.getParameter("nombre");
    String edad = request.getParameter("edad");
    String id = request.getParameter("id");

    // Verifica si se está editando un registro existente
    String editarId = request.getParameter("editarId");
    if (editarId != null) {
        // Busca el registro por ID y prellena el formulario
        Map<String, String> alumnoAEditar = null;
        for (Map<String, String> registro : registros) {
            if (editarId.equals(registro.get("ID"))) {
                alumnoAEditar = registro;
                break;
            }
        }
        if (alumnoAEditar != null) {
            nombre = alumnoAEditar.get("Nombre");
            edad = alumnoAEditar.get("Edad");
            id = alumnoAEditar.get("ID");
        }
    }

    if (nombre != null && edad != null && id != null) {
        // Verifica si es una edición o un nuevo registro
        boolean esEdicion = false;
        for (Map<String, String> registro : registros) {
            if (id.equals(registro.get("ID"))) {
                // Edición
                registro.put("Nombre", nombre);
                registro.put("Edad", edad);
                esEdicion = true;
                break;
            }
        }

        // Si no es una edición, agrega un nuevo registro
        if (!esEdicion) {
            Map<String, String> nuevoAlumno = new HashMap<>();
            nuevoAlumno.put("Nombre", nombre);
            nuevoAlumno.put("Edad", edad);
            nuevoAlumno.put("ID", id);
            registros.add(nuevoAlumno);
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro de Alumnos</title>
</head>
<body>
    <form action="index.jsp" method="post">
        Nombre: <input type="text" name="nombre" value="<%= nombre %>" required><br>
        Edad: <input type="text" name="edad" value="<%= edad %>" required><br>
        ID: <input type="text" name="id" value="<%= id %>" required><br>
        <%
    String buttonText = (editarId != null) ? "Editar Alumno" : "Agregar Alumno";
%>
<input type="submit" value="<%= buttonText %>">
    </form>
    
    <h2>Registro exitoso</h2>
    <a href="mostrarALumnos.jsp">Ver Lista de Alumnos</a>
</body>
</html>
    </body>
</html>
