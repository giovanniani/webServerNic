<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<jsp lang="en">
<head>
  <title>NIC CR</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="Styles/style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="home.jsp">Inicio</a></li>
      </ul>
      <form class="navbar-form navbar-right" action="/action_page.php">
      <ul class="nav navbar-nav">
          <li><a href="productos.jsp">Productos</a></li>
          <li><a href="galeria.jsp">Galeria</a></li>
          <li><a href="nosotros.jsp">Nosotros</a></li>
          <li><a href="contacto.jsp">Contacto</a></li>
        </ul>
    </form>
    </div>
</nav>
<a href="index.jsp">
  <img src="./images/nicLogo.png" class="img-circle" alt="Cinque Terre" width="304" height="236">
</a>

<div class="container-fluid text-center">    
  <div class="row content">
    <div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <a href="index.jsp">
          <img src="./images/cisco1.png" alt="Cisco1" style="width:75%; margin: 0 10% 0 10%">
        </a>
      </div>

      <div class="item">
        <a href="index.jsp">
          <img src="./images/cisco2.png" alt="Cisco2" style="width:75%; margin: 0 10% 0 10%">
        </a>
      </div>
    
      <div class="item">
        <a href="index.jsp">
          <img src="./images/cisco3.png" alt="Cisco3" style="width:75%; margin: 0 10% 0 10%">
        </a>
      </div>

      <div class="item">
        <a href="index.jsp">
          <img src="./images/cisco4.png" alt="Cisco4" style="width:75%; margin: 0 10% 0 10%">
        </a>
      </div>
    </div>

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
</div>
<div class="container">
  <h2>Heading 1</h2>
  <p>Cisco Systems, Inc. is an American multinational technology conglomerate headquartered in San Jose, California, in the center of Silicon Valley, that develops, manufactures and sells networking hardware, telecommunications equipment and other high-technology services and products. Through its numerous acquired subsidiaries, such as OpenDNS, WebEx, Jabber and Jasper, Cisco specializes into specific tech markets, such as Internet of Things (IoT), domain security and energy management.</p>
    <br>

  <p>Cisco is the largest networking company in the world. The stock was added to the Dow Jones Industrial Average on June 8, 2009, and is also included in the  500 Index, the Russell 1000 Index, NASDAQ-100 Index and the Russell 1000 Growth Stock Index.</p>      

  <h2>Productos</h2>
  <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="./images/cisco1.png" target="_blank">
          <img src="./images/cisco1.png" alt="cisco1" style="width:100%; height: 120px;">
          <div class="caption">
            <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="./images/cisco2.png" target="_blank">
          <img src="./images/cisco2.png" alt="cisco2" style="width:100%; height: 120px;">
          <div class="caption">
            <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="./images/cisco3.png" target="_blank">
          <img src="./images/cisco3.png" alt="cisco3" style="width:100%; height: 120px;">
          <div class="caption">
            <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
          </div>
        </a>
      </div>
    </div>
  </div>
</div>


<footer class="container-fluid text-center navbar-fixed-bottom">
  <p>© 2018 Giovanni Villalobos Herrera Copyright</p>
</footer>

</body>
</jsp>
