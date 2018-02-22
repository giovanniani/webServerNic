<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Contacto</title>
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
  
<div class="container">
  <h2>ContÃ¡ctenos</h2>
  <form class="form-horizontal" >
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Numero de telÃ©fono:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="pwd" placeholder="Enter phone" name="pwd">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Duda o sugerencia</label>
      <div class="col-sm-10">          
        <textarea class="form-control" rows="5" id="comment"></textarea>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Enviar</button>
      </div>
    </div>
  </form>
</div>

<footer class="container-fluid text-center navbar-fixed-bottom">
  <p>Â© 2018 Giovanni Villalobos Herrera Copyright</p>
</footer>

</body>
</html>
