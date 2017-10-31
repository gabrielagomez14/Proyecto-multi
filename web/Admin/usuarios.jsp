<%-- 
    Document   : usuarios
    Created on : Oct 28, 2017, 2:50:30 PM
    Author     :  Ale Gomez, Alexander Lue, Carlos Paniagua
--%>

<%@page import="org.modelo.Usuarios"%>
<%@page import="java.util.List"%>
<%@page import="org.modelo.CrudUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title>Mantenimiento de Usuarios</title>
        <script Language='JavaScript'>
            function cargar(id, nom, ape, sue, cate, rol, eq, inci)
            {
                document.frmUser.id.value = id;
                document.frmUser.nombre.value = nom;
                document.frmUser.apellido.value = ape;
                document.frmUser.usuario.value = sue;
                document.frmUser.clave.value = cate;
                document.frmUser.rol.value = rol;
            }
        </script>
        <%
            if (request.getAttribute("valor") != null) {%>
        <script>
            alert('<%= request.getAttribute("valor")%>');
        </script>
        <%
            }
        %>
    <header>
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
                        <div class="navbar-header">
                            <a class="navbar-brand" href="../index.jsp"><font color="white">SIVAR LIGA</font></a>
                        </div>
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
                    <li><a href="jugador.jsp">Jugador</a>
                    </li>
                    <li><a href="#">Usuarios</a>
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
    CrudUsuario cu= new CrudUsuario();
%>
<body><br><br><br>
    <h4><marquee>Mantenimiento de Usuarios</marquee></h4><br>
    <div class="well">
        <div class="container"><br>
            <form action="operacionesUsuarios" name="frmUser" method="post" class="form-horizontal">
                <div class="form-group">
                    <label class="control-label col-xs-3" >Codigo de Partido</label>
                    <div class="col-xs-7">
                        <%
                            CrudUsuario obj = new CrudUsuario();
                            Object n = obj.Contar(obj);
                        %>
                        <input type="text" class="form-control"  name="id" value="<%=n%>" placeholder="Ingrese su codigo de Arbitro" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-3" >Nombre de Usuario</label>
                    <div class="col-xs-7">
                        <input type="text" class="form-control" name="nombre" value="" placeholder="Ingrese su nombre" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-3" >Apellido de Usuario</label>
                    <div class="col-xs-7">
                        <input type="text" class="form-control" name="apellido" value="" placeholder="Ingrese su nombre" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-3" >Usuario</label>
                    <div class="col-xs-7">
                        <input type="text" class="form-control" name="usuario" value="" placeholder="Ingrese su nombre" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-3" >Clave</label>
                    <div class="col-xs-7">
                        <input type="password" class="form-control" name="clave" value="" placeholder="Ingrese su nombre" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-3" >Rol de Usuario</label>
                    <div class="col-xs-7">
                        <select class="form-control" id="sel1" name="rol">
                            <option value="">Seleccione</option>
                            <option value="1">Administrador</option>
                            <option value="2">Entrenado</option>
                            <option value="3">Jugador</option>
                        </select>
                    </div>
                </div>
        </div> 

    </div>
    <hr>
            <div class="row">
                <div class="col-md-100">
                    <center><button class="btn btn-lg btn-primary" type="submit" name="insertar" value="insertar">Insertar</button>
                        <button class="btn btn-lg btn-success" type="submit" name="modificar" value="modificar" onclick="return confirm('Esta Seguro que Desea Modificar?');">Modificar</button>
                        <button class="btn btn-lg btn-danger" type="submit" name="eliminar" value="eliminar" onclick="return confirm('Esta Seguro que Desea Eliminar');">Eliminar</button>
                        <button class="btn btn-lg btn-info" type="reset" value="Limpiar">Limpiar</button></center>
                </div>      
            </div>       
</form>
<hr>
       <table  border="1" class="table table-striped table-bordered table-hover table-condensed">
                
                  <tr>
                      <th class="danger">Codigo de Usuario</th>
                      <th class="danger">Nombre de Usuario</th>
                      <th class="danger">Apellido de Usuario</th>
                      <th class="danger">UserName</th>
                      <th class="danger">Clave</th>
                      <th class="danger">Rol de Usuario</th>
                      <th class="danger">seleccionar</th>
                  </tr>
                  <%
                  List<Usuarios> lus=cu.view();
                  for(Usuarios us:lus){
                  %>
                  <tr>
                      <td class="success"><%= us.getId() %></td>
                      <td class="success"><%= us.getNombre() %></td>
                      <td class="success"><%= us.getApellido() %></td>
                      <td class="success"><%= us.getUsername() %></td>
                      <td class="success"><%= us.getClave() %></td>
                      <td class="success"><%= us.getNivel()%></td>
                      <td class="success"><a href="javascript:cargar(<%= us.getId() %>,
                             '<%= us.getNombre() %>',
                             '<%= us.getApellido()%>',
                             '<%= us.getUsername() %>',
                             '<%= us.getClave() %>',
                             '<%= us.getNivel() %>')">Seleccionar</a></td>
                      </tr>
                   <%
                  }
                  %>
              </tbody>
    </table></center>
</body>
</html>
