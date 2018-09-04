<html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<head>
 <title>Wedding Designs</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<spring:url value="resources/css/bootstrap.min.css"/>">
  <script src="<spring:url value="resources/js/jquery.min.js"/>"></script>
  <script src="<spring:url value="resources/js/bootstrap.min.js"/>"></script>
  <script src="<spring:url value="resources/js/angular.min.js"/>"></script>
  <!-- Bootstrap Core CSS -->
    <link href="<spring:url value="resources/css/bootstrap.min.css"/>" rel="stylesheet">
<!-- Custom CSS -->
   
</head>
  <style>
  
	body {
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
  }
  h3, h4 {
      margin: 10px 0 30px 0;
      letter-spacing: 10px;
      font-size: 20px;
      color: #111;
  }
  .container {
      padding: 80px 120px;
  }
  .person {
      border: 10px solid transparent;
      margin-bottom: 25px;
      width: 80%;
      height: 80%;
      opacity: 0.7;
  }
  .person:hover {
      border-color: #f1f1f1;
  }
  .carousel-inner img {
   /*   -webkit-filter: grayscale(90%);*/
   /*   filter: grayscale(90%);*/ /* make all photos black and white */
      width: 100%; /* Set width to 100% */
      margin: auto;
  }
  .carousel-caption h3 {
      color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
      background: #2d2d30;
      color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
      border-top-right-radius: 0;
      border-top-left-radius: 0;
  }
  .list-group-item:last-child {
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  }
  .thumbnail p {
      margin-top: 15px;
      color: #555;
  }
  .btn {
      padding: 10px 20px;
      background-color: #333;
      color: #f1f1f1;
      border-radius: 0;
      transition: .2s;
  }
  .btn:hover, .btn:focus {
      border: 1px solid #333;
      background-color: #fff;
      color: #000;
  }
  .modal-header, h4, .close {
      background-color: #333;
      color: #fff !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-header, .modal-body {
      padding: 40px 50px;
  }
  .nav-tabs li a {
      color: #777;
  }
  #googleMap {
      width: 100%;
      height: 400px;
      -webkit-filter: grayscale(100%);
      filter: grayscale(100%);
  }
  .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #2d2d30;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand {
      color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
      color: #fff !important;
  }
  .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
  .open .dropdown-toggle {
      color: #fff;
      background-color: #555 !important;
  }
  .dropdown-menu li a {
      color: #000 !important;
  }
  .dropdown-menu li a:hover {
      background-color: red !important;
  }
  footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 32px;
  }
  footer a {
      color: #f5f5f5;
  }
  footer a:hover {
      color: #777;
      text-decoration: none;
  }
  .form-control {
      border-radius: 0;
  }
  textarea {
      resize: none;
  }
  </style>
</head>
<body ng-app = "appSearch" id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">


     
   

    <ul class="nav nav-pills">
  <li><a href="<spring:url value="/"/>">HOME</a></li>
  <li><a href="<spring:url value="/weddingproduct"/>">WEDDING COLLECTION</a></li>
  <li><a href="<spring:url value="/aboutus"/>">ABOUT US</a></li>
  <li class="active"><a href="<spring:url value="/productinfo"/>">ALL PRODUCT</a></li>
  <li><a href="<spring:url value="/login1"/>">LOGIN</a></li>
   
    <li><a href="<spring:url value="/signup"/>">NEW USER</a></li>
     <li><a href="<spring:url value="/aindex"/>">ADMIN</a></li>
    <li><a href="<spring:url value="/cart"/>"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>   
   </ul>
  
    <style>
    table {
  border: 1px solid #666;   
    width: 100%;
}
th {
  background: #f8f8f8; 
  font-weight: bold;    
    padding: 2px;
}
    </style>
    
    <form:form>
   <div class  = "divSearch">
	<input type = "text" placeholder = "Search" id = "serachBar" ng-model = "search" size = "22">
</div>
<br>
<div  ng-controller = "ctrlSearch" class="table-responsive">
	<table class = "table">
	<thead>
		<tr>
			<th>product</th>
			<th>Description</th>
			<th>Price</th>
			<th>Image</th>
			<th>Action</th>
		</tr>
	</thead>
	<tbody>	
		<tr ng-repeat = "product in products | filter:search"  ng-init = "">
			<td>{{product.productn}}</td>
			<td>{{product.description}}</td>
			<td>{{product.price}}</td>
			<td><img src = {{product.image[1]}} align="left" width=100 height=150></td>

			<td><input type = "button" data-toggle = "modal" data-target = "#myModal" class = "btn-primary" ng-click = "viewFun(product.id)" value = "View"></td>
	
		</tr>
	</tbody>
	</table>
	<div class = "modal fade" id = "myModal" role = "dialog">
		<div class = "modal-dialog">
			<div class = "modal-content">
				<div class = "modal-header">
					<button type = "button" class = "close" data-dismiss = "modal">&times;</button>
					<h4 class = "modal-title">{{products[num].productn}}</h4>
				</div>
				<div class = "modal-body">
					<p>{{products[num].description}}</p>
					<img src = {{products[num].image[0]}} align="left" width=100 height=150>
				</div>
				<div class = "modal-footer">
					<button type = "button" class = "btn btn-danger" data-dismiss = "modal">Close</button>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	var app = angular.module('appSearch',[]);
	app.controller('ctrlSearch',function($scope){
		$scope.products = [{productn:'SAREE',description:'Unique Collection',price:'Rs. 5,000',image:['resources/images/saree.jpg','resources/images/saree.jpg'],id:0},
		                   {productn:'BRIDAL',description:'White Silky',price:'Rs. 7,000',image:['resources/images/bridal.jpg','resources/images/bridal.jpg'],id:1},
		                   {productn:'LEHENGA',description:'Party wear',price:'Rs. 4,900',image:['resources/images/lehe.jpg','resources/images/lehe.jpg'],id:2},
		                   {productn:'PARTY WEAR',description:'White Cotton',price:'Rs. 6,000',image:['resources/images/bridal2.jpg','resources/images/bridal2.jpg'],id:3}];	
	$scope.viewFun = function(temp){
		$scope.num = temp;
		};
	});
</script>
   </form:form>
</body>
</html>