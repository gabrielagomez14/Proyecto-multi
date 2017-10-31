<%-- 
    Document   : Index1
    Created on : Oct 28, 2017, 11:05:14 PM
    Author     : Ale Gomez, Alexander Lue, Carlos Paniagua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Index</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="../bootstrap-3.3.6-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/tables.css" />

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
                    <li><a href="./Admin/Jornada.jsp">Jornada</a>
                    </li>
                    <li><a href="./Admin/Partido.jsp">Partido</a>
                    </li>
                    <li><a href="./Admin/Torneo.jsp">Torneo</a>
                    </li>
                    <li><a href="./Admin/jugador.jsp">Jugador</a>
                    </li>
                    <li><a href="./Admin/usuarios.jsp">Usuarios</a>
                    </li>
                </ul>
            </div>     
        </div>    
    </nav>      
</head>
<body>
    <br><br><br>
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
</body>
<footer >

</footer>
</html>

