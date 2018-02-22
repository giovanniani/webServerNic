<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp lang="en">
<head>
  <title>Productos</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="Styles/style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.9/angular.min.js"></script>
</head>
<body ng-app="myeventsApp2">
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
<p><input type="text" ng-model="test" style="margin-left:120px; margin-top:45px;">Buscar</p>
<div ng-controller="EventsController2" class="container">
    <h1>{{product}}</h1>
  <div class="row">  
    <div class="container" ng-repeat="p in products | filter:test">
      <div class="col-md-4">
      <div class="thumbnail">
        <a href={{p.url}}>
          <img src={{p.url}} style="width:100%; height: 120px;">
          <div class="caption">
            <p>{{p.nombre}}</p>
          </div>
        </a>
      </div>
    </div>
  </div>
  </div>
</div>
<a href="agregarProducto.jsp">
<button type="button" class="btn btn-primary btn-lg">Agregar</button>
</a>
<footer class="container-fluid text-center navbar-fixed-bottom">
  <p>Â© 2018 Giovanni Villalobos Herrera Copyright</p>
</footer>
</body>
<script>
var myevents = angular.module('myeventsApp2', []);

  myevents.controller("EventsController2", function ($scope, $http, $window) {
  $scope.product = localStorage.getItem('product');
  console.log($scope.product);
    $http.get('http://localhost:3000/getProductos/'+$scope.product)
        .success(function (data) {
            $scope.products = data;
            console.log($scope.products);
            console.log("hola");
        });
});


</script>
</jsp>
