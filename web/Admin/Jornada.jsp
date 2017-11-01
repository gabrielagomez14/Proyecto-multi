<%-- 
    Document   : Jornada
    Created on : Oct 20, 2017, 2:14:06 PM
    Author     :  Ale Gomez
--%>

<%@page import="java.util.*"%>
<%@page import="org.modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%
HttpSession sesion = request.getSession();
    if (sesion.getAttribute("tipo")==null) 
    {
        response.sendRedirect("login.jsp");
    }else
    {
        String nivel= sesion.getAttribute("nivel").toString();
        if (!nivel.equals("1")) 
        {
                response.sendRedirect("login.jsp");
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="shortcut icon" href="../Imagenes/2.jpg"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <link rel="stylesheet" href="../bootstrap-3.3.6-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/tables.css" />
        <%-- mensaje de confirmacion--%>
        <script src="/path/to/jquery.js" type="text/javascript"></script>
        <script src="/path/to/jquery.ui.draggable.js" type="text/javascript"></script>
        <script src="/path/to/jquery.alerts.js" type="text/javascript"></script>
        <link href="/path/to/jquery.alerts.css" rel="stylesheet" type="text/css" media="screen" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Mantenimiento de Jornada</title>
        <script Language='JavaScript'>
            function cargar(id,jor,ini,fin,dife,fd,np)
            {
                document.frmJornada.id.value=id;
                document.frmJornada.jornada.value=jor;
                document.frmJornada.inicio.value=ini;
                document.frmJornada.finalizacion.value=fin;
                document.frmJornada.pdiferido.value=dife;
                document.frmJornada.fpdiferido.value=fd;
                document.frmJornada.nomPar.value=np;
                
            }
        </script>
        <%
        if (request.getAttribute("valor")!=null) {%>
        <script>
               alert('<%= request.getAttribute("valor") %>');      
        </script>
                <%
                }
                %>
    <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">
                        <font color="white" size="5" face="Arial black">Liga Sivar</font>
                    </a>
                </div>
                <ul class="nav navbar-nav">
                   <li><a href="jugador.jsp">Gestionar Jugador</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Gestionar Partidos
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="Partido.jsp">Partido</a></li>
                            <li><a href="Equipo.jsp">Equipo</a></li>
                            <li><a href="Detalle.jsp">Detalle de Partido</a></li>
                            <li><a href="Incidencias.jsp">Incidencias</a></li>
                            <li><a href="Entrenador.jsp">Entrenador</a></li>
                        </ul>
                    </li>
                    <li><a href="Arbitro.jsp">Gestionar Arbitro</a></li>
                    <li><a href="usuarios.jsp">Usuarios</a></li>
                    <li><a href="Jornada.jsp">Jornada</a></li>
                    <li><a href="Torneo.jsp">Torneo</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right" >
                    <li><a href="../login.jsp?cerrar=true"><span class="glyphicon glyphicon-log-in"></span><font> Cerrar Sesion</font></a></li>
                </ul>
            </div>
        </nav>             
        </header>
        <script src="js/jquery-latest.js"></script> 
    <script src="../bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
    </head>
    <%
    
        CrudJornada cen=new CrudJornada();

    %>
    <body >
    <br><br><br>
        <br><div class="container"><br>
            <form action="operacionesJornada" name="frmJornada" method="post" class="form-horizontal">
            <div class="well well-lg">
              <div class="form-group">
                  <label class="control-label col-xs-3" ><font face="arial-black" size="4">Codigo de Jornada:</font></label>
                    <div class="col-xs-7">
                        <% 
                            CrudJornada obj= new CrudJornada();
                            Object n= obj.ContarJor(obj);
                        %>
                    <input type="text" class="form-control" name="id" value="<%= n%>" placeholder="Ingrese Id de Entrenador" required>
                    </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-xs-3" ><font face="arial-black" size="4">Numero de Jornada:</font></label>
                    <div class="col-xs-7">
                    <input type="text" class="form-control" name="jornada" value="" placeholder="Ingrese Nombre de Entrenador" required>
                    </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-xs-3" ><font face="arial-black" size="4">Fecha de Inicio:</font></label>
                    <div class="col-xs-7">
                    <input type="date" class="form-control" name="inicio" value="" placeholder="Ingrese Apellido de Entrenador" required>
                    </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-xs-3" ><font face="arial-black" size="4">Fecha de Finalizacion:</font></label>
                    <div class="col-xs-7">
                    <input type="date" class="form-control" name="finalizacion" value="" placeholder="Ingrese Apellido de Entrenador" required>
                    </div>
                </div>
                 <div class="form-group">
                  <label class="control-label col-xs-3" ><font face="arial-black" size="4">Numero de Partidos Diferidos:</font></label>
                    <div class="col-xs-7">
                    <input type="text" class="form-control" name="pdiferido" value="" placeholder="Ingrese Nombre de Entrenador" required>
                    </div>
                </div>
               <div class="form-group">
                  <label class="control-label col-xs-3" ><font face="arial-black" size="4">Fecha de Partidos Diferidos:</font></label>
                    <div class="col-xs-7">
                    <input type="date" class="form-control" name="fpdiferido" value="" placeholder="Ingrese Apellido de Entrenador" required>
                    </div>
                </div>
               <div class="form-group">
                <label for="sel1" class="control-label col-xs-3">Nombre de Partido</label>
                  <div class="col-xs-6"> 
                      <select class="form-control" id="sel1" name="partido">
                          <% List<Partido>leq=cen.viewPar();
                           for(Partido par:leq){       %>
                      <option value="<%=par.getIdPartido()%>"><%=par.getNombre() %></option>
                      <%}%>
                  </select>
                    </div>
                </div>
            </div><hr>
                    <div class="row">
                        <div class="col-md-100">
                            <center><button class="btn btn-lg btn-primary" type="submit" name="insertar" value="insertar">Insertar</button>
                            <button class="btn btn-lg btn-success" type="submit" name="modificar" value="modificar" onclick="return confirm('Esta Seguro que Desea Modificar?');">Modificar</button>
                            <button class="btn btn-lg btn-danger" type="submit" name="eliminar" value="eliminar" onclick="return confirm('Esta Seguro que Desea Eliminar');">Eliminar</button>
                            <button class="btn btn-lg btn-info" type="reset" value="Limpiar">Limpiar</button></center>
                       </div>      
                    </div>
            </div>          
        </form>
    <hr>
    <center>
    <table  border="1" class="table table-striped table-bordered table-hover table-condensed">
                
                  <tr>
                      <th class="danger">Codigo de Jornada</th>
                      <th class="danger">Numero de Jornada</th>
                      <th class="danger">Fecha de Inicio</th>
                      <th class="danger">Fecha de Finalizacion</th>
                      <th class="danger">Numero de Partido Diferido</th>
                      <th class="danger">Fecha de Partido Diferido</th>
                      <th class="danger">Nombre de Partido</th>
                      <th class="danger" >Seleccionar</th>
                  </tr>
                  
                  <%
                 List<Jornada> lst2=cen.view();
                  for(Jornada jor:lst2){
                  %>
                  <tr>
                      <td class="success"><%= jor.getIdJornada() %></td>
                      <td class="success"><%= jor.getNumJornada() %></td>
                      <td class="success"><%= jor.getFechaInicio()%></td>
                      <td class="success"><%= jor.getFechaFin()%></td>
                      <td class="success"><%= jor.getNumPartidoDif()%></td>
                      <td class="success"><%= jor.getFechaParDif()%></td>
                      <td class="success"><%=jor.getIdPartido()%></td>
                      <td><a href="javascript:cargar(<%=jor.getIdJornada()%>,
                             '<%=jor.getNumJornada()%>',
                             '<%=jor.getFechaInicio()%>',
                             '<%=jor.getFechaFin()%>',
                             '<%=jor.getNumPartidoDif()%>',
                             '<%=jor.getFechaParDif()%>',
                             '<%=jor.getIdPartido()%>')">Seleccionar</a></td>
                      </tr>
                   <%
                  }
                  %>
              </tbody>
        </table>
    </center>
                 
              
             
    </body>
</html>
