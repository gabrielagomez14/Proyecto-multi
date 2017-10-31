<%-- 
    Document   : Entrenador
    Created on : Oct 18, 2017, 10:07:30 AM
    Author     :  Ale Gomez
--%>

<%@page import="org.modelo.Jugador"%>
<%@page import="org.modelo.CrudJugador"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
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
        
        <title>Mantenimiento de Jugador</title>
        <script Language='JavaScript'>
            function cargar(id,nom,dui,posi,pais,tel,correo)
            {
                document.frmJugador.id.value=id;
                document.frmJugador.nombre.value=nom;
                document.frmJugador.dui.value=dui;
                document.frmJugador.posicion.value=posi;
                document.frmJugador.pais.value=pais;
                document.frmJugador.telefono.value=tel;
                document.frmJugador.correo.value=correo;
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
    <nav class="navbar navbar-inverse navbar-fixed-top">
                
                <div class="conteiner-fluid">
                    <div class="navabr-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-1">
                        <span class="sr-only">Menu</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"> </span>
                        </button>
                      
                       
                    </div>
                    <div class="collapse navbar-collapse" id="navbar-1">
                         <ul class="nav navbar-nav">
                            
                    <a class="navbar-brand" href="../index.jsp"><font color="white">SIVAR LIGA</font></a>
                    <li><a href="Arbitro.jsp">Arbitro</a>
                    </li>
                    <li><a href="Detalle.jsp">Detalle de Partido</a>
                    </li>
                    <li><a href="Entrenador.jsp">Entrenador</a>
                    </li>
                    <li><a href="Equipo.jsp">Equipo</a>
                    </li>
                    <li><a href="Incidencias.jsp">Incidencias</a>
                    </li>
                    <li><a href="Jornada.jsp">Jornada</a>
                    </li>
                    <li><a href="Partido.jsp">Partido</a>
                    </li>
                    <li><a href="Torneo.jsp">Torneo</a>
                    </li>
                    <li><a href="#">Jugador</a>
                    </li>
                    <li><a href="usuarios.jsp">Usuarios</a>
                    </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right" >
                             <li><a href="../index.jsp?cerrar=true"><span class="glyphicon glyphicon-log-in"></span><font> Cerrar Sesion</font></a></li>
                        </ul>
                    </div>     
                </div>    
            </nav>             
        </header>
        <script src="js/jquery-latest.js"></script> 
    <script src="../bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
    </head>
    <%
    
        CrudJugador cju=new CrudJugador();

    %>
    <body >
    <br><br><br><center>
        <br><div class="container"><br>
            <form action="operacionesJugador" name="frmJugador" method="post" class="form-horizontal">
            <div class="well well-lg">
              <div class="form-group">
                  <label class="control-label col-xs-3" ><font face="arial-black" size="4">ID Entrenador:</font></label>
                    <div class="col-xs-7">
                        <% 
                            CrudJugador obj= new CrudJugador();
                            Object n= obj.contarJu(obj);
                        %>
                    <input type="text" class="form-control" name="id" value="<%= n%>" placeholder="Ingrese Id de Entrenador" required>
                    </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-xs-3" ><font face="arial-black" size="4">Nombre de Jugador</font></label>
                    <div class="col-xs-7">
                    <input type="text" class="form-control" name="nombre" value="" placeholder="Ingrese Nombre de Entrenador" required>
                    </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-xs-3" ><font face="arial-black" size="4">DUI de Jugador:</font></label>
                    <div class="col-xs-7">
                    <input type="number" class="form-control" name="dui" value="" placeholder="Ingrese Apellido de Entrenador" required>
                    </div>
                </div>
                 <div class="form-group">
                <label for="sel1" class="control-label col-xs-3"><font face="arial-black" size="4">Posicion de Jugador</font></label>
                  <div class="col-xs-6"> 
                      <select class="form-control" id="sel1" name="posicion">
                      <option value="">Seleccione</option>
                      <option value="Delantero">Delantero</option>
                      <option value="Portero">Portero</option>
                      <option value="Defensa">Defensa</option>
                  </select>
                    </div>
                </div>
                <div class="form-group">
                <label for="sel1" class="control-label col-xs-3"><font face="arial-black" size="4">Pais de Jugador</font></label>
                  <div class="col-xs-6"> 
                      <select class="form-control" id="sel1" name="pais">
                      <option value="">Seleccione</option>
                      <option value="El Salvador">El Salvador</option>
                      <option value="Costa Rica">Costa Rica</option>
                      <option value="Japon">Japon</option>
                      <option value="China">China</option>
                      <option value="EE:UU">EE:UU</option>
                      <option value="Peru">Peru</option>
                          
                  </select>
                    </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-xs-3" ><font face="arial-black" size="4">Telefono de Jugador:</font></label>
                    <div class="col-xs-7">
                    <input type="text" class="form-control" name="telefono" value="" placeholder="Ingrese Apellido de Entrenador" required>
                    </div>
                </div>
                <div class="form-group">
                <label for="sel1" class="control-label col-xs-3"><font face="arial-black" size="4">Correo:</font></label>
                 <div class="col-xs-7">
                    <input type="text" class="form-control" name="correo" value="" placeholder="Ingrese Correo Electronico" required>
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
                      <th class="danger">Codigo de Jugador</th>
                      <th class="danger">Nombre</th>
                      <th class="danger">DUI</th>
                      <th class="danger">Posicion</th>
                      <th class="danger">Pais</th>
                      <th class="danger">Telefono</th>
                      <th class="danger">Correo</th>
                      <th class="danger" >Seleccionar</th>
                  </tr>
                  
                  <%
                 List<Jugador> lst2=cju.view();
                  for(Jugador ju:lst2){
                  %>
                  <tr>
                      <td class="success"><%= ju.getIdJugador() %></td>
                      <td class="success"><%= ju.getNombre() %></td>
                      <td class="success"><%= ju.getDui()  %></td>
                      <td class="success"><%= ju.getPosicion() %></td>
                      <td class="success"><%= ju.getPais() %></td>
                      <td class="success"><%= ju.getTelefono() %></td>
                      <td class="success"><%=ju.getEmail() %></td>
                      <td><a href="javascript:cargar(<%= ju.getIdJugador() %>,
                             '<%= ju.getNombre() %>',
                             '<%= ju.getDui()%>',
                             '<%= ju.getPosicion()%>',
                             '<%= ju.getPais()%>',
                             '<%=ju.getTelefono()%>',
                             '<%= ju.getEmail()%>')">Seleccionar</a></td>
                      </tr>
                   <%
                  }
                  %>
              </tbody>
        </table>
    </center>
                 
              
             
    </body>
</html>
