<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Categorias</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="Styles/style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.9/angular.min.js"></script>
</head>
<body ng-app="myeventsApp">
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
  <p><input type="text" style="margin-left:120px; margin-top:45px;">Buscar</p>
</div>
<div ng-controller="EventsController" class="container">
    <h1>Categorias</h1>
  <div class="row">  
    <div class="container" ng-repeat="event in events | filter:test">
      <div class="col-md-4">
      <div class="thumbnail">
        <a href="productosEditor.jsp" ng-click="verProductos(event.nombre)">
          <img src={{event.url}} style="width:100%; height: 120px;">
          <div class="caption">
            <p>{{event.nombre}}</p>
          </div>
        </a>
      </div>
    </div>
  </div>
  </div>
</div>

<footer class="container-fluid text-center navbar-fixed-bottom">
  <p>Â© 2018 Giovanni Villalobos Herrera Copyright</p>
</footer>
</body>
<script>
var myevents = angular.module('myeventsApp', []);

myevents.controller("EventsController", function ($scope, $http) {
    $http.get('http://localhost:3000/getCategorias/')
        .success(function (data) {
            $scope.events = data;
        });

  $scope.verProductos  = function(data) {
      console.log(data);
      localStorage.setItem('product',data);
    };
});


</script>
</html>
