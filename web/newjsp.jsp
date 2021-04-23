<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Send Email using JSP</title>
</head>
<body>

    <form name="form_solicitud" action="Controlador2">
        <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored"  type="submit" name="accion" value="Agregar">Agregar</button> 
        <input class="btn btn-primary" type="text"  type="email" name="txtcorreoalumno" value="pruebataller78@gmail.com">
       
    </form>
</body>
</html>