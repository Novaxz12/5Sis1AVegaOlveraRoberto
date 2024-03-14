<%-- 
    Document   : web
    Created on : 13 mar 2024, 21:05:01
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
         <servlet>
        <servlet-name>guardarAlumno</servlet-name>
        <servlet-class>Servlet.guardarAlumno</servlet-class>
    </servlet>
    <servlet>
        <servlet-name>eliminaralumno</servlet-name>
        <servlet-class>Servlet.eliminaralumno</servlet-class>
    </servlet>
    <servlet>
        <servlet-name>actualizarAlumno</servlet-name>
        <servlet-class>Servlet.actualizarAlumno</servlet-class>
    </servlet>
    <servlet-mapping>
        <servlet-name>guardarAlumno</servlet-name>
        <url-pattern>/guardarAlumno</url-pattern>
    </servlet-mapping>
    <servlet-mapping>
        <servlet-name>eliminaralumno</servlet-name>
        <url-pattern>/eliminaralumno</url-pattern>
    </servlet-mapping>
    <servlet-mapping>
        <servlet-name>actualizarAlumno</servlet-name>
        <url-pattern>/actualizarAlumno</url-pattern>
    </servlet-mapping>
    <session-config>
        <session-timeout>
            30
        </session-timeout>
    </session-config>
    </body>
</html>
