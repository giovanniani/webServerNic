<!-- Creado por: Giovanni Villalobos Herrera -->
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Agregar Producto</title>
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
      <form class="navbar-form navbar-right">
        <ul class="nav navbar-nav">
          <li><a href="productos.jsp">Productos</a></li>
          <li><a href="galeria.jsp">Galería</a></li>
          <li><a href="nosotros.jsp">Nosotros</a></li>
          <li><a href="contacto.jsp">Contacto</a></li>
        </ul>
    </form>
  </div>
</nav>
  
<div class="container" ng-controller="EventsController">
  <h2>Contáctenos</h2>
  <form class="form-horizontal">
    <div class="form-group">
      <label class="control-label col-sm-2" for="name">Nombre</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="email" placeholder="Ingrese nombre" name="name" ng-model="nameP">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Precio</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="pwd" placeholder="Ingrese precio" name="pwd" ng-model="priceP">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Categoria</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="pwd" placeholder="Ingrese categoria" name="pwd" ng-model="cateP">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Descripcion</label>
      <div class="col-sm-10">          
        <textarea class="form-control" rows="5" id="comment" ng-model="descP"></textarea>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button ng-click="agregarProducto()" class="btn btn-default">Enviar</button>
      </div>
    </div>
  </form>
</div>

<footer class="container-fluid text-center navbar-fixed-bottom">
  <p>© 2018 Giovanni Villalobos Herrera Copyright</p>
</footer>

</body>

<script>
var myevents = angular.module('myeventsApp', []);

myevents.controller("EventsController", function ($scope, $http) {

  $scope.agregarProducto  = function() {
       $http.get('http://localhost:3000/insertarProducto/'+$scope.nameP+'/'+$scope.priceP+'/'+$scope.cateP+'/'+$scope.descP)
        .success(function (data) {
        });
    };
});


</script>
</html>
