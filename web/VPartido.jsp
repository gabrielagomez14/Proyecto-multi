<%-- 
    Document   : VPartido
    Created on : 11-02-2017, 04:49:58 PM
    Author     : carlos paniagua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        
        <title>Jornadas</title>
        <link href="css/bootstrap-responsive.css" rel="stylesheet">
	<link href="css/style3.css" rel="stylesheet"> 
        <link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap.min.css">
        
    </head>
    
    <body style="background-color:#026593;">
    
      <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">
                    <font color="white" size="5" face="Arial black">Liga Sivar</font>
                </a>
            </div>
            <ul class="nav navbar-nav">
                <li><a href="jugador.jsp"> Jugador</a></li>
                <li><a href="Arbitro.jsp"> Arbitro</a></li>
                <li><a href="Partidos.jsp">Partidos</a></li>
                <li><a href="Jornada.jsp">Jornada</a></li>
                <li><a href="Torneo.jsp">Torneo</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right" >
                <li><a href="login.jsp"><font color="white"><span class="glyphicon glyphicon-log-in"></span>
                        Iniciar Sesi&oacute;n</font>
                    </a>
                </li>
            </ul>
        </div>
    </nav>
 
    <div class="background">
        
        
        <div class="page">

            <div class="body home">
                <div>
                    <div class="featured">
                        <div>
                            <h2>Sivar <br> Liga</h2>
                            <p>
                                Disfruta de cada partido y vive la emocion del futbol desde nuestra plataforma, La informacion mas actualizada la tienes Aca.
                            </p>
                        </div>
                    </div>
                    <div>
                        <div>
                            <h3>Partidos:</h3>
                            <span><a href="#">Ver Mas+++</a></span>
                            <ul>
                                <li>
                                    <a href="#"><img src="Imagenes/video1.jpg" alt=""></a>
                                <center><h4>Santa Tecla<br> Vs<br> Alianza.</h4></center>
                                <p>
                                    Mira todo lo que paso durante el partido Amistoso que se jugo ayer en el estadio Magico Gonzales.
                                </p>
                                </li>
                                <li>
                                    <a href="#"><img src="Imagenes/video2.jpg" alt=""></a>
                                <center><h4>San Vicente<br> Vs<br> Santa Ana.</h4></center>
                                <p>
                                    Revive de nuevo las emociones que se vivieron en el partido del Lunes de cuartos de final.
                                </p>
                                </li>
                                <li>
                                    <a href="#"><img src="Imagenes/video3.jpg" alt=""></a>
                                <center><h4>Fas<br> Vs<br> Aguilas.</h4></center>
                                <p>
                                    El equipo de Las Aguilas  se coronan Campeonas del Torneo durante la jornada 23 que se jugo ayer.
                                </p>
                                </li>
                            </ul>
                        </div>
                        <div>
                            <h3>Información</h3>
                            <span><a href="#">Mas+++</a></span>
                            <ul>
                                <li>
                                    <a href="#"><img src="Imagenes/featured1.jpg" alt=""></a>
                                    <h4>Los Aguilas ya tienen nuevo Portero</h4>
                                    <p>
                                        Manuel Santos es el nuevo portero de la seleccion de los Aguilas, luego de la renuncia de Jose Perla...
                                    </p>
                                </li>
                                <li>
                                    <a href="#"><img src="Imagenes/featured2.jpg" alt=""></a>
                                    <h4>La seleccion Salvadoreña se prepara.</h4>
                                    <p>
                                        La Seleccion de nuestro pais se prepara con mucho entrenamiento para participar y dar lo mejor en el torneo de Liga Mayor
                                    </p>
                                </li>
                                <li>
                                    <a href="#"><img src="Imagenes/featured3.jpg" alt=""></a>
                                    <h4>Marcos Stiff Visita las escuelas de futbol de Nuestro Pais</h4>
                                    <p>
                                        Tras su gira por el mundo Marco Stiff visita nuestro pais con el proposito de insentivar a los jovenes.
                                    </p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="sidebar">
                    <div class="news">
                        <span>Jornadas</span>
                        <ul>
                            <li>
                                <a href="#">Liga Mayor</a> <span>Proximo 23 de Noviembre/2017</span>
                            </li>
                            <li>
                                <a href="#">Liga Nacional</a> <span>Proximo 03 de Diciembre/2017</span>
                            </li>
                            <li>
                                <a href="#">Liga Departamental</a> <span>Proximo 25 de Diciembre/2017</span>
                            </li>
                            <li>
                                <a href="#">Liga Local</a> <span>Proximo 15 de Enero/2018</span>
                            </li>
                            <li>
                                <a href="#">Liga Amistosa</a> <span>Proximo 27 de Enero/2018</span>
                            </li>
                            <li>
                                <a href="#">Liga Por Zona</a> <span>Proximo 12 de Febrero/2018</span>
                            </li>
                            <li>
                                <a href="#">Liga Final</a> <span>Proximo 07 de Marzo/2018</span>
                            </li>
                        </ul>
                        <a href="#">Mas...</a>
                    </div>
                    <div class="section">
                        <span>Partidos</span>
                        <ul>
                            <li>
                                <a href="#">ZZTigres VS Alianza</a> <span>07 Noviembre/2017 @ 3PM</span>
                            </li>
                            <li>
                                <a href="#">Azules VS Aguilas</a> <span>01 Diciembre/2017 @ 4PM</span>
                            </li>
                            <li>
                                <a href="#">Fas VS Dragones</a> <span>13 Diciembre/2017 @ 9AM</span>
                            </li>
                            <li>
                                <a href="#">Santa Tecla VS Sub20</a> <span>23 Diciembre/2017 @ 1PM</span>
                            </li>
                            <li>
                                <a href="#">Sonsonate VS UES</a> <span>30 Diciembre/2017 @ 2:30PM</span>
                            </li>
                        </ul>
                        <a href="#">Mas...</a>
                    </div>
                    <div>
                        <span>Tweets Del Dia</span>
                        <ul>
                            <li>
                                <p>
                                    <a href="#">Alan Stiff: Lo Mejor de La vida es el futbol.</a>
                                </p>
                            </li>
                            <li>
                                <p>
                                    <a href="#">UEFA:Los partidos de cada jornada ya estan en nuestra pagina oficial.</a>
                                </p>
                            </li>
                            <li>
                                <p>
                                    <a href="#">Jose Cardenas: Sin duda el mejor partido de la historia Alianza se corona campeon con 7 Goles</a>
                                </p>
                            </li>
                        </ul>
                        <a href="#">Sivar Liga</a>
                    </div>
                </div>
            </div>
            <div class="footer">
                <div>
                    <ul>
                        <li class="selected">
                            <a href="#">Inicio</a>|
                        </li>
                        <li>
                            <a href="#">Noticias</a>|
                        </li>
                        <li>
                            <a href="#">Eventos</a>|
                        </li>
                        <li>
                            <a href="#">Jornadas</a>|
                        </li>
                        <li>
                            <a href="#">Partidos</a>|
                        </li>
                        <li>
                            <a href="#">Mas</a>
                        </li>
                    </ul>
                    <p>
                        &#169; SivarLiga 2017. 
                    </p>
                </div>
                <div class="connect">
                    <span>Redes Sociales</span> <a href="#" id="fb">fb</a> <a href="#" id="twitter">twitter</a> <a href="#" id="googleplus">google+</a> <a href="#" id="contact">contact</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>