<%-- 
    Document   : Principal
    Created on : Nov 1, 2017, 11:12:07 AM
    Author     : Ale Gomez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=no , user-scalable=no">
        <!-- complementos de javascrip-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="../bootstrap-3.3.6-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/tables.css" />
        <link rel="stylesheet"  type=" text/css" href="../css/MeStyle.css" >
    </head>
    <body >
        <nav class="navbar navbar-inverse navbar-fixed-top">
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
                    <a class="navbar-brand" href="index.jsp"><font color="white">SIVAR LIGA</font></a>

                    <li><a href="./Admin/Arbitro.jsp">Arbitro</a>
                    </li>
                    <li><a href="./Admin/Detalle.jsp">Detalle de Partido</a>
                    </li>
                    <li><a href="./Admin/Entrenador.jsp">Entrenador</a>
                    </li>
                    <li><a href="./Admin/Equipo.jsp">Equipo</a>
                    </li>
                    <li><a href="./Admin/Incidencias.jsp">Incidencias</a>
                    </li>

                    <li><a href="./Admin/usuarios.jsp">Usuarios</a>
                    </li>
                    <ul class="nav navbar-nav navbar-right" >
                        <li><a href="login.jsp"><font>Iniciar Sesion</font></a></li>
                    </ul>
                </ul>
            </div>     
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
            <article class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                <p>
                    holas
                </p>
            </article>
            <aside class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                <p>
                    hola
                </p>   
            </aside>
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
            <ul>
                <li>Innovación.</li>
                <li>Responsabilidad.</li>
                <li>Compromiso.</li>
                <li>Calidad.</li>
            </ul>
        </div>
        <div class="color2 col-xs-12 col-sm-6 col-md-3">
            <center><font face="Arial black" size="5" col > Objetivos</font></center>
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
