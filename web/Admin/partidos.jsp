<%-- 
    Document   : Partido
    Created on : Oct 20, 2017, 2:13:18 PM
    Author     : monterroso
--%>

<%@page import="java.util.List"%>
<%@page import="org.modelo.*"%>
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
        <title>Mantenimiento de Partido</title>
        <script Language='JavaScript'>
            function cargar(id, nom, parti, goles, fecha, cEqui, eqlocal, eqVisi,mVisi,mLoca,arbi,detalle)
            {
                document.frmPartido.id.value = id;
                document.frmPartido.nombre.value = nom;
                document.frmPartido.tPartido.value = parti;
                document.frmPartido.cGoles.value = goles;
                document.frmPartido.fecha.value = fecha;
                document.frmPartido.cEq.value = cEqui;
                document.frmPartido.eqLocal.value = eqlocal;
                document.frmPartido.eqVisi.value = eqVisi;
                document.frmPartido.mEqLo.value = mVisi;
                document.frmPartido.mEqVisi.value = mLoca;
                document.frmPartido.arbitro.value = arbi;
                document.frmPartido.detalle.value = detalle;
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

                        <li><a href="#">Cliente</a>
                        </li>
                        <li><a href="Entrenador.jsp">Producto</a>
                        </li>
                        <li><a href="Equipo.jsp">Venta</a>
                        </li>
                        <li><a href="Incidencias.jsp">Detalle de Venta</a>
                        </li>
                        <li><a href="detallePartido.jsp">Usuarios</a>
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
</head><br><br><br><br>
<%
    CrudPartido cpar = new CrudPartido();

%>
<body><div class="well">
        <div class="container"><br>
            <form action="operacionesPartido" name="frmPartido" method="post" class="form-horizontal">

                <div class="form-group">
                    <label class="control-label col-xs-3" >Codigo de Partido</label>
                    <div class="col-xs-7">
                        <%                            
                            CrudPartido obj = new CrudPartido();
                            Object n = obj.contar(obj);
                        %>
                        <input type="text" class="form-control" name="id" value="<%=n%>" placeholder="Ingrese su codigo de Arbitro" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-3" >Nombre de Partido</label>
                    <div class="col-xs-7">
                        <input type="text" class="form-control" name="nombre" value="" placeholder="Ingrese su nombre" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="sel1" class="control-label col-xs-3">Tipo de Partido</label>
                    <div class="col-xs-6"> 
                        <select class="form-control" id="sel1" name="tPartido">
                            <option value="">Seleccione</option>
                            <option value="Canchita">Futbol Sala</option>
                            <option value="Canchita">Futbol 11</option>
                            <option value="Canchita">Partido Amistosos</option>
                        </select>
                    </div>
                </div>
                <div class="form-group input-group" >
                    <label for="sel1" class="control-label col-xs-2">Cantida de Goles</label>
                    <div class="col-xs-3" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div class="col-xs-9">
                            <input type="number" class="form-control" name="cGoles" value="" placeholder="Ingrese su nombre" required>
                        </div> 
                    </div>
                    <label for="sel1" class="control-label col-xs-2">Fecha Partido</label>
                    <div class="col-xs-6"> 
                        <div class="col-xs-7">
                            <input type="date" class="form-control" name="fecha" value="" placeholder="Ingrese su nombre" required>
                        </div>
                    </div>
                </div>
                    <div class="form-group"  >
                    <label class="control-label col-xs-3" >Codigo de Equipo</label>
                    <div class="col-xs-7">
                        <%                            
                            CrudPartido obj2 = new CrudPartido();
                            Object m = obj2.contar(obj);
                        %>
                        <input type="text" class="form-control" name="cEq" value="<%=m%>" placeholder="Ingrese su codigo de Arbitro" required>
                    </div>
                </div>

                <div class="form-group input-group" >
                    <label for="sel1" class="control-label col-xs-2">Equipo Visitante</label>
                    <div class="col-xs-4" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <select class="form-control" id="sel1" name="eqLocal">
                            <%
                                List<Equipo> visi = cpar.Visitante();
                                for (Equipo p : visi) {
                            %>
                            <option value="<%=p.getIdEq()%>"><%=p.getTipoEq()%></option>
                            <%}%>
                        </select>
                    </div>
                    <label for="sel1" class="control-label col-xs-2">Equipo Local</label>
                    <div class="col-xs-4"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <select class="form-control" id="sel1" name="eqVisi">
                            <%
                                List<Partido> local = cpar.Local();
                                for (Partido pl : local) {
                            %>
                            <option value="<%=pl.getIdEquipo()%>"><%=pl.getEqLocal()%></option>
                            <%}%>
                        </select>
                    </div>
                </div>
                <div class="form-group input-group" >
                    <label for="sel1" class="control-label col-xs-2">Marcador Eq Local</label>
                    <div class="col-xs-4" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <select class="form-control" id="sel1" name="mEqLo">
                            <%
                                List<Partido> mVisi = cpar.mVisitante();
                                for (Partido p : mVisi) {
                            %>
                            <option value="<%=p.getIdPartido()%>"><%=p.getMarcadorVisi()%></option>
                            <%}%>
                        </select>
                    </div>
                    <label for="sel1" class="control-label col-xs-2">Marcador Equipo Visitante</label>
                    <div class="col-xs-4"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <select class="form-control" id="sel1" name="mEqVisi">
                            <%
                                List<Partido> par = cpar.mVisitante();
                                for (Partido part : par) {
                            %>
                            <option value="<%=part.getIdEquipo()%>"><%=part.getMarcadorVisi() %></option>
                            <%}%>
                        </select> 
                    </div>
                </div>
                <div class="form-group input-group" >
                    <label for="sel1" class="control-label col-xs-2">Arbitro</label>
                    <div class="col-xs-4" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <select class="form-control" id="sel1" name="arbitro">
                            <%
                                List<Arbitro> arb = cpar.viewarbi();
                                for (Arbitro arbc : arb) {
                            %>
                            <option value="<%=arbc.getIdArbitro()%>"><%=arbc.getNombre() %></option>
                            <%}%>
                        </select>        
                    </div>
                    <label for="sel1" class="control-label col-xs-2">Codigo de Detalle</label>
                    <div class="col-xs-4"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <select class="form-control" id="sel1" name="detalle">
                            <%
                                List<DetallePartido> deta = cpar.viewDet();
                                for (DetallePartido detal : deta) {
                            %>
                            <option value="<%=detal.getIdDetalle() %>"><%=detal.getIdDetalle()%></option>
                            <%}%>
                        </select>  
                    </div>
                </div>
        </div>
    </div>
        <div class="row">
                        <div class="col-md-100">
                            <center><button class="btn btn-lg btn-primary" type="submit" name="insertar" value="insertar">Insertar</button>
                            <button class="btn btn-lg btn-success" type="submit" name="modificar" value="modificar" onclick="return confirm('Esta Seguro que Desea Modificar?');">Modificar</button>
                            <button class="btn btn-lg btn-danger" type="submit" name="eliminar" value="eliminar" onclick="return confirm('Esta Seguro que Desea Eliminar');">Eliminar</button>
                            <button class="btn btn-lg btn-info" type="reset" value="Limpiar">Limpiar</button></center>
                       </div>      
        </div><br/>
    <table  border="1" class="table table-striped table-bordered table-hover table-condensed">
                
                  <tr>
                      <th class="danger">Codigo de Partido</th>
                      <th class="danger">Nombre de Partido</th>
                      <th class="danger">Tipo</th>
                      <th class="danger">N° Goles</th>
                      <th class="danger">Fecha</th>
                      <th class="danger" hidden="">id Equipo</th>
                      <th class="danger">Eq.Visitante</th>
                      <th class="danger">Eq.Local</th>
                      <th class="danger">Marc.Visitante</th>
                      <th class="danger">Marc.Local</th>
                      <th class="danger">Arbitro</th>
                      <th class="danger">Detalle</th>
                      <th class="danger">seleccionar</th>
                  </tr>
                  <%
                  List<Partido> lst2=cpar.view();
                  for(Partido parti:lst2){
                  %>
                  <tr>
                      <td class="success"><%= parti.getIdPartido() %></td>
                      <td class="success"><%= parti.getNombre() %></td>
                      <td class="success"><%= parti.getTipoPartido() %></td>
                      <td class="success"><%= parti.getNumGoles() %></td>
                      <td class="success"><%= parti.getFecha() %></td>
                      <td class="success" hidden=""><%= parti.getIdEquipo() %></td>
                      <td class="success"><%=parti.getEqVisitante() %></td>
                      <td class="success"><%=parti.getEqLocal() %></td>
                      <td class="success"><%=parti.getMarcadorVisi() %></td>
                      <td class="success"><%=parti.getMarcadorLocal() %></td>
                      <td class="success"><%=parti.getIdArb()%></td>
                      <td class="success"><%=parti.getIdDetalle() %></td>
                      <td class="success"><a href="javascript:cargar(<%= parti.getIdPartido() %>,
                             '<%= parti.getNombre() %>',
                             '<%= parti.getTipoPartido() %>',
                             '<%= parti.getNumGoles() %>',
                             '<%= parti.getNumGoles() %>',
                             '<%= parti.getFecha() %>',
                             '<%= parti.getIdEquipo() %>',
                             '<%=parti.getEqVisitante() %>',
                             '<%=parti.getEqLocal() %>',
                             '<%=parti.getMarcadorVisi() %>',
                             '<%=parti.getMarcadorLocal() %>',
                             '<%=parti.getIdArb()%>',
                             '<%=parti.getIdDetalle() %>'
                             )">Seleccionar</a></td>
                      </tr>
                   <%
                  }
                  %>
              </tbody>
    </table></center>
              
             
    </body>
</html>

