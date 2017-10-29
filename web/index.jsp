<%-- 
    Document   : index
    Created on : Oct 28, 2017, 11:04:29 AM
    Author     : fam Gomez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <thead>
                <tr>
                    <th colspan="2">Iniciar Sesion</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Usuario</td>
                    <td>
                        <input type="text" name="usuario"/>
                    </td>
                </tr>
                <tr>
                    <td>Contraseña</td>
                    <td>
                        <input type="password" name="clave"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" name="btnEnviar" value="Iniciar Sesion"/>
                    </td>
                </tr>
            </tbody>
        </table>
            <%
        HttpSession sesion = request.getSession();
        int nivel=0;
        if (request.getAttribute("nivel")!=null) 
        {
            nivel= (Integer)(request.getAttribute("nivel"));
            if (nivel==1) 
            {
                sesion.setAttribute("username",request.getAttribute("username"));
                sesion.setAttribute("nivel", nivel);
                response.sendRedirect("Admin/Arbitro.jsp");
            }else if (nivel==2) 
            {
                sesion.setAttribute("username",request.getAttribute("username"));
                sesion.setAttribute("nivel", nivel);
                response.sendRedirect("Entrenador/prueba.jsp");   
            }
        }//para ver si biene un atribueto
        if (request.getParameter("cerrar")!=null) 
        {
            session.invalidate();
            
        }
    %>

    </body>
</html>
