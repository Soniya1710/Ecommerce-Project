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
 <script src ="<spring:url value="/resources/js/angular.min.js"/>"></script>
 </head>
  <style>
  body{
  
	.multi-item-carousel{
  .carousel-inner{
    > .item{
      transition: 500ms ease-in-out left;
    }
    .active{
      &.left{
        left:-33%;
      }
      &.right{
        left:33%;
      }
    }
    .next{
      left: 33%;
    }
    .prev{
      left: -33%;
    }
    @media all and (transform-3d), (-webkit-transform-3d) {
      > .item{
        // use your favourite prefixer here
        transition: 500ms ease-in-out all;
        backface-visibility: visible;
        transform: none!important;
      }
    }
  }
  .carouse-control{
    &.left, &.right{
      background-image: none;
    }
  }
}}

// non-related styling:
body{
  background: #333;
  color: #ddd;
}
h1{
  color: white;
  font-size: 2.25em;
  text-align: center;
  margin-top: 1em;
  margin-bottom: 2em;
  text-shadow: 0px 2px 0px rgba(0, 0, 0, 1);
}
  body 
	{
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
  /*
      -webkit-filter: grayscale(90%);*/
     /* filter: grayscale(90%);*/ /* make all photos black and white */
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

  .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #2d2d30;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.9;
  }
  
 
  </style>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
 <img src="<spring:url value="resources/images/logo.png"/>">
 
    <ul class="nav nav-pills">
   <li class="active"><a href="<spring:url value="/"/>">HOME</a></li>
  <li><a href="<spring:url value="/weddingproduct"/>">WEDDING COLLECTION</a></li>
  <li><a href="<spring:url value="/aboutus"/>">ABOUT US</a></li>
  <li><a href="<spring:url value="/productinfo"/>">ALL PRODUCT</a></li>
  <li><a href="<spring:url value="/login1"/>">LOGIN</a></li>
   
    <li><a href="<spring:url value="/signup"/>">NEW USER</a></li>
    <li><a href="<spring:url value="/aindex"/>">ADMIN</a></li>
     <li><a href="<spring:url value="/cart"/>"><span class="glyphicon glyphicon-shopping-cart"></span></a></li> 
    </ul>  
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>
   
    <div class="carousel-inner" role="listbox">
      <div class="item active">
      
        <img src="<spring:url value="resources/images/index.jpg"/>" alt="New York" width="1200" height="700">
        <div class="carousel-caption">
         
        </div>
      </div>

      <div class="item">
        <img src="<spring:url value="resources/images/index11.jpg"/>" alt="Chicago" width="1200" height="700">
        <div class="carousel-caption">
          
        </div>
      </div>
    
      <div class="item">
        <img src="<spring:url value="resources/images/index22.jpg"/>" alt="Los Angeles" width="1200" height="700">
        <div class="carousel-caption">
          
        </div>
      </div>
      <div class="item">
        <img src="<spring:url value="resources/images/index3.jpg"/>" alt="Los Angeles" width="1200" height="700">
        <div class="carousel-caption">
          
        </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div> 
 <div align="center"><br>
 <br>
<img src="<spring:url value="resources/images/welcome.png"/>"></div>
    <div class="container">
    <div class="jumbotron">
    <marquee direction="right">
      <img src="<spring:url value="resources/images/je1.jpg"/>" alt="New York" width="250" height="300">
       <img src="<spring:url value="resources/images/bridal2.jpg"/>" alt="New York" width="250" height="300">
        <img src="<spring:url value="resources/images/bridal1.jpg"/>" alt="New York" width="250" height="300">
         <img src="<spring:url value="resources/images/bridal.jpg"/>" alt="New York" width="250" height="300">
          <img src="<spring:url value="resources/images/mens.jpg"/>" alt="New York" width="250" height="300">
           <img src="<spring:url value="resources/images/je9.jpg"/>" alt="New York" width="250" height="300">
            <img src="<spring:url value="resources/images/lehe.jpg"/>" alt="New York" width="250" height="300">
             <img src="<spring:url value="resources/images/chudi.jpg"/>" alt="New York" width="250" height="300">
              <img src="<spring:url value="resources/images/halfsaree.jpg"/>" alt="New York" width="250" height="300">
              <img src="<spring:url value="resources/images/je2.jpg"/>" alt="New York" width="250" height="300">
             <img src="<spring:url value="resources/images/je3.jpg"/>" alt="New York" width="250" height="300">
              <img src="<spring:url value="resources/images/je4.jpg"/>" alt="New York" width="250" height="300">
              </marquee> 
  </div>
  </div>
</body>
</html>

    
