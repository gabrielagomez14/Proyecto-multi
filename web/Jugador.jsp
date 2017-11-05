<%-- 
    Document   : Principal
    Created on : Nov 1, 2017, 11:12:07 AM
    Author     : Ale Gomez
--%>

<%@page import="org.modelo.CrudJugador"%>
<%@page import="org.modelo.Jugador"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Principal</title>
        <meta charset="utf-8">s
        <link rel="shortcut icon" href="../Imagenes/2.jpg"/>
        <meta name="viewport" content="width=device-width, initial-scale=no , user-scalable=no">
        <!-- complementos de javascrip-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <meta http-equiv="REFRESH" content="5; URL=http://localhost:26039/Futboll/faces/Jugador.jsp">
        <link rel="stylesheet" href="../bootstrap-3.3.6-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/tables.css" />
        <link rel="stylesheet"  type=" text/css" href="../css/MeStyle.css" >
    </head>
    <body >
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
                    <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span><font> Cerrar Sesion</font></a></li>
                </ul>
            </div>
        </nav>
    <br><br><br>
    <header>
        <div class="container">
            <div class="col-md-12">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>

                    <!-- Contenedor de slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="../Imagenes/caro1.1.jpg" alt="">
                        </div>

                        <div class="item">
                            <img src="../Imagenes/caro1.2.jpg" alt="">
                        </div>

                        <div class="item">
                            <img src="../Imagenes/caro5.jpg" alt="">
                        </div>
                    </div>

                    <!-- Controles -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </header>
    <div class="container">
        <section class="main row ">
            <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <font face="Arial black" size="5">Los mejores jugadores de nuestros Equipo !!QUE LO DIFRUTES!!</font>
                <table class="table table-striped table-hover table-condensed">
                    <tr>
                        <th class="danger" hidden="true">Codigo de Jugador</th>
                        <th class="danger">Nombre</th>
                        <th class="danger" hidden="true">DUI</th>
                        <th class="danger">Posicion</th>
                        <th class="danger">Pais</th>
                        <th class="danger" hidden="true">Telefono</th>
                        <th class="danger">Correo</th>
                    </tr>

                    <%
                        CrudJugador cju = new CrudJugador();
                        List<Jugador> lst2 = cju.view();
                        for (Jugador ju : lst2) {
                    %>
                    <tr>
                        <td hidden="true"><%= ju.getIdJugador()%></td>
                        <td ><%= ju.getNombre()%></td>
                        <td hidden="true"><%= ju.getDui()%></td>
                        <td ><%= ju.getPosicion()%></td>
                        <td ><%= ju.getPais()%></td>
                        <td hidden="true"><%= ju.getTelefono()%></td>
                        <td ><%=ju.getEmail()%></td>

                    </tr>
                    <%
                        }
                    %>
                    </tbody>
                </table>
            </article>

        </section>
        <div class="row">
            <div class="color1 col-xs-12 col-sm-6  col-md-3">
                <center><font face="Arial black" size="5" col >Misi&oacute;n</font></center>
                <font size="3">
                <center><img src="Imagenes/wowo.png" width="75" height="75"></center>
                <p>
                    Proveer a nuestros clientes la informacion actualizada del deporte con alta calidad
                    que les permitan disfrutar al maximo los mejores momentos de su equipo
                </p>
                </font>
            </div>
            <div class="color2 col-xs-12 col-sm-6 col-md-3">
                <center><font face="Arial black" size="5" col >Visi&oacute;n</font></center>
                <center><img src="Imagenes/wowo.png" width="75" height="75"></center>
                <p>
                    Ser 
                </p>
            </div>
            <div class="color1 col-xs-12 col-sm-6 col-md-3">
                <center><font face="Arial black" size="5" col > Valores</font></center>
                <center><img src="Imagenes/wowo.png" width="75" height="75"></center>
                <ul>
                    <li>Innovación.</li>
                    <li>Responsabilidad.</li>
                    <li>Compromiso.</li>
                    <li>Calidad.</li>
                </ul>
            </div>
            <div class="color2 col-xs-12 col-sm-6 col-md-3">
                <center><font face="Arial black" size="5" col > Objetivos</font></center>
                <center><img src="Imagenes/wowo.png" width="75" height="75"></center>
                <font size="3">
                <ul>
                    <li> Presentarle lo ultimo en la informacion de futbol</li>
                    <li> </li>
                    <li> Presentarle lo ultimo en la informacion de futbol</li>
                </ul>
                </font>
            </div>
        </div>
    </div>
    <footer>
        <div class="container">
            <h3>Sivar league</h3>
        </div>
    </footer>

    <script src="http://code.jquery.com/jquery-latest.js" ></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
