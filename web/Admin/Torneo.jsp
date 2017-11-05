<%-- 
    Document   : Torneo
    Created on : Oct 20, 2017, 3:58:42 PM
    Author     :  Ale Gomez
--%>

<%@page import="org.modelo.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%
HttpSession sesion = request.getSession();
    if (sesion.getAttribute("nivel")==null) 
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Mantenimiento de Torneo</title>
        <script Language='JavaScript'>
            function cargar(id, nom, u, gol, cam, gole,seg, ter, cuar, fI, fF, des, ie, juga, jorna)
            {
                document.frmTorneo.id.value = id;
                document.frmTorneo.nombre.value = nom;
                document.frmTorneo.ubicacion.value = u;
                document.frmTorneo.goles.value = gol;
                document.frmTorneo.campeon.value = cam;
                document.frmTorneo.goleador.value = gole;
                document.frmTorneo.segundo.value = seg;
                document.frmTorneo.tercer.value = ter;
                document.frmTorneo.cuartos.value = cuar;
                document.frmTorneo.fechaI.value = fI;
                document.frmTorneo.fechaF.value = fF;
                document.frmTorneo.descenso.value = des;
                document.frmTorneo.idEq.value = ie;
                document.frmTorneo.jugador.value = juga;
                document.frmTorneo.jornada.value = jorna;

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
    CrudTorneo ct = new CrudTorneo();
%>
<body >
<div class="well ">
    <div class="container">
        <form action="operacionesTorneos" name="frmTorneo" method="post">
            <table >
                <thead>
                    <tr>
                        <td>
                            <label class="control-label col-xs-3" >Codigo de Torneo</label>
                        </td>
                        <td>
                            <%
                                CrudTorneo obj = new CrudTorneo();
                                Object n = obj.contar(obj);
                            %>
                            <input type="text" class="form-control" name="id" value="<%=n%>"  placeholder="Codigo Torneo" required>
                        </td>
                        <td>
                            <label class="control-label col-xs-3" >Nombre de Torneo</label>
                        </td>
                        <td>
                            <input type="text" class="form-control" name="nombre" value="" placeholder="Nombre de Torneo" required>
                        </td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><label class="control-label col-xs-3" >Ubicacion de Torneo</label></td>
                        <td>
                            <input type="text" class="form-control" name="ubicacion"  placeholder="Ubicacion de Torneo" required>
                        </td>
                        <td><label class="control-label col-xs-3" >Cantidad de Goles</label></td>
                        <td>
                            <input type="number" class="form-control" name="goles"  placeholder="Cant.Goles" min="0" required>
                        </td>
                    </tr>
                    <tr>
                        <td><label class="control-label col-xs-3" >Campeon</label></td>
                        <td>

                            <select class="form-control" id="sel1" name="campeon">
                                <option value="">Seleccione</option>
                                <%
                                    List<Equipo> leq = ct.viewEquipo();
                                    for (Equipo eq : leq) {
                                %>
                                <option value="<%=eq.getIdEq()%>"><%=eq.getNombre()%></option>
                                <% }%>
                            </select>
                            </div>
                        </td>
                        <td><label class="control-label col-xs-3" >Goleador</label></td>
                        <td>
                            <select class="form-control" id="sel1" name="goleador">
                                <option value="">Seleccione</option>
                                <%
                                    List<Equipo> leq1 = ct.viewEquipo();
                                    for (Equipo eq : leq1) {
                                %>
                                <option value="<%=eq.getIdEq()%>"><%=eq.getNombre()%></option>
                                <% }%>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label class="control-label col-xs-3" >Segundo Lugar</label></td>
                        <td>
                            <select class="form-control" id="sel1" name="segundo">
                                <option value="">Seleccione</option>
                                <%
                                    List<Equipo> leq3 = ct.viewEquipo();
                                    for (Equipo eq : leq3) {
                                %>
                                <option value="<%=eq.getIdEq()%>"><%=eq.getNombre()%></option>
                                <% }%>
                            </select>
                        </td>
                        <td><label class="control-label col-xs-3" >Tercer Lugar</label></td>
                        <td>
                            <select class="form-control" id="sel1" name="tercer">
                                <option value="">Seleccione</option>
                                <%
                                    List<Equipo> leq4 = ct.viewEquipo();
                                    for (Equipo eq : leq4) {
                                %>
                                <option value="<%=eq.getIdEq()%>"><%=eq.getNombre()%></option>
                                <% }%>
                            </select>
                        </td>
                        <td><label class="control-label col-xs-3" >Cuarto Lugar </label></td>
                        <td>
                            <select class="form-control" id="sel1" name="cuartos">
                                <option value="">Seleccione</option>
                                <%
                                    List<Equipo> leq5 = ct.viewEquipo();
                                    for (Equipo eq : leq5) {
                                %>
                                <option value="<%=eq.getIdEq()%>"><%=eq.getNombre()%></option>
                                <% }%>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label class="control-label col-xs-3" >Fecha de Inicio </label></td>
                        <td>
                            <input type="date" class="form-control" name="fechaI" value="" placeholder="Ingrese Apellido de Entrenador" required>
                        </td>
                        <td><label class="control-label col-xs-3" >Fecha de Finalizacion</label></td>
                        <td>
                            <input type="date" class="form-control" name="fechaF" value="" placeholder="Ingrese Apellido de Entrenador" required>
                        </td>
                    </tr>
                    <tr>
                        <td><label class="control-label col-xs-3" >Descenso</label></td>
                        <td>
                            <select class="form-control" id="sel1" name="descenso">
                                <option value="">Seleccione</option> 
                                <%
                                    List<Equipo> leq6 = ct.viewEquipo();
                                    for (Equipo eq : leq6) {
                                %>
                                <option value="<%=eq.getIdEq()%>"><%=eq.getNombre()%></option>
                                <% }%>
                            </select>
                        </td>
                        <td hidden=""><label class="control-label col-xs-3" >id Equipo</label></td>
                        <td hidden="">
                             <%
                                CrudTorneo obj1 = new CrudTorneo();
                                Object m = obj1.contar(obj1);
                            %>
                            <input type="text" class="form-control" name="idEq" value="<%=m %>"  placeholder="Codigo Torneo" required>
                        </td>
                        <td>
                            <label class="control-label col-xs-3" >Nombre de Jugador</label>
                        </td>
                        <td>
                            <select class="form-control" id="sel1" name="jugador">
                                <option value="">Seleccione</option>
                                <%
                                    List<Jugador> lju = ct.viewJugador();
                                    for (Jugador ju : lju) {
                                %>
                                <option value="<%=ju.getIdJugador()%>"><%=ju.getNombre()%></option>
                                <% }%>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label class="control-label col-xs-3" >Nombre de La Jornada</label></td>
                        <td>
                            <select class="form-control" id="sel1" name="jornada">
                                <option value="Seleccione">Seleccione</option>
                                <%
                                    List<Jornada> ljr = ct.viewJornada();
                                    for (Jornada jor : ljr) {
                                %>
                                <option value="<%=jor.getIdJornada()%>"><%=jor.getNombre()%></option>
                                <% }%>
                            </select>
                        </td>
                    </tr>
                </tbody>
            </table>

        
    </div>
</div>
<%-- bottones--%>
<hr>
<center><table>
                    <thead>
                        <tr>
                            <th>
                                <button class="btn btn-lg btn-primary" type="submit" name="insertar" value="insertar">Insertar</button> 
                            </th>
                            <th>
                                <button class="btn btn-lg btn-success" type="submit" name="modificar" value="modificar" onclick="return confirm('Esta Seguro que Desea Modificar?');">Modificar</button>
                            </th>
                            <th>
                                <button class="btn btn-lg btn-danger" type="submit" name="eliminar" value="eliminar" onclick="return confirm('Esta Seguro que Desea Eliminar');">Eliminar</button>
                            </th>
                            <th>
                                <button class="btn btn-lg btn-info" type="reset" value="Limpiar">Limpiar</button></form>
                            </th>
                            <td>
                                <form name="reporte" action="reporte1">&nbsp;
                                    <button class="btn btn-lg btn-toolbar" type="submit" value="Generar Reporte" name="btn">Generar Reporte</button>
                                </form> 
                            </td>
                        </tr>
                    </thead>
                </table></center>
<%--Tabla inferior --%>
<hr>
<center>
    <table  border="1" class="table table-striped table-bordered table-hover table-condensed">

        <tr>
            <th class="danger">Codigo Torneo</th>
            <th class="danger" >Nombre de Torneo</th>
            <th class="danger">Ubicacion</th>
            <th class="danger">Cant. Equipo</th>
            <th class="danger">Campeon</th>
            <th class="danger">Goleador</th>
            <th class="danger">Segundo Lugar</th>
            <th class="danger">Tercer Lugar</th>
            <th class="danger">Cuarto Lugar</th>
            <th class="danger">Fecha Inicio</th>
            <th class="danger">Fecha Final</th>
            <th class="danger">Descenso</th>
            <th class="danger">Codigo de Equipo</th>
            <th class="danger">Codigo de Jugador</th>
            <th class="danger">Codigo de Jornada</th>
            <th class="danger">Seleccionar</th>
        </tr>
        <%
            List<Torneo> ltr = ct.view();
            for (Torneo tor : ltr) {
        %>
        <tr>
            <th><%=tor.getIdTorneo()%></th>
            <th ><%=tor.getNombre()%></th>
            <th><%=tor.getUbicacion()%></th>
            <th><%=tor.getCatEq()%></th>
            <th><%=tor.getCampeon()%></th>
            <th><%=tor.getGoleador()%></th>
            <th><%=tor.getSegLugar()%></th>
            <th><%=tor.getTerLugar()%></th>
            <th><%=tor.getCuarLugar()%></th>
            <th><%=tor.getFechaIni()%></th>
            <th><%=tor.getFechaF()%></th>
            <th><%=tor.getDescenso()%></th>
            <th><%=tor.getIdEq()%></th>
            <th><%=tor.getIdJugador()%></th>
            <th><%=tor.getIdJornada()%></th>

            <td><a href="javascript:cargar(<%=tor.getIdTorneo()%>,
                   '<%=tor.getNombre()%>',
                   '<%=tor.getUbicacion()%>',
                   '<%=tor.getCatEq()%>',
                   '<%=tor.getCampeon()%>',
                   '<%=tor.getGoleador()%>',
                   '<%=tor.getSegLugar()%>',
                   '<%=tor.getTerLugar()%>',
                   '<%=tor.getCuarLugar()%>',
                   '<%=tor.getFechaIni()%>',
                   '<%=tor.getFechaF()%>',
                   '<%=tor.getDescenso()%>',
                   '<%=tor.getIdEq()%>',
                   '<%=tor.getIdJugador()%>',
                   '<%=tor.getIdJornada()%>')">Seleccionar</a></td>
        </tr>
        </tr>
        <%}%>
        </tbody>
    </table></center>

</body>
</html>
