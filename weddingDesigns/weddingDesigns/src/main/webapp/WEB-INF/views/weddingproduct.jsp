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
     /* -webkit-filter: grayscale(90%);*/
    /*  filter: grayscale(90%);*/ /* make all photos black and white */
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
  .glyphicon { margin-right:5px; }
.thumbnail
{
    margin-bottom: 20px;
    padding: 0px;
    -webkit-border-radius: 0px;
    -moz-border-radius: 0px;
    border-radius: 0px;
}

.item.list-group-item
{
    float: none;
    width: 100%;
    background-color: #fff;
    margin-bottom: 10px;
}
.item.list-group-item:nth-of-type(odd):hover,.item.list-group-item:hover
{
    background: #428bca;
}

.item.list-group-item .list-group-image
{
    margin-right: 10px;
}
.item.list-group-item .thumbnail
{
    margin-bottom: 0px;
}
.item.list-group-item .caption
{
    padding: 9px 9px 0px 9px;
}
.item.list-group-item:nth-of-type(odd)
{
    background: #eeeeee;
}

.item.list-group-item:before, .item.list-group-item:after
{
    display: table;
    content: " ";
}

.item.list-group-item img
{
    float: left;
}
.item.list-group-item:after
{
    clear: both;
}
.list-group-item-text
{
    margin: 0 0 11px;
}
  
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">


     
      <img src="<spring:url value="resources/images/logo3.png"/>">

    <ul class="nav nav-pills">
  <li><a href="<spring:url value="/"/>">HOME</a></li>
  <li class="active"><a href="<spring:url value="/weddingproduct"/>">WEDDING COLLECTION</a></li>
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
 <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="<spring:url value="resources/images/col.png"/>" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="<spring:url value="resources/images/col1.jpg"/>" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="<spring:url value="resources/images/col2.jpg"/>" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="<spring:url value="resources/images/col3.jpg"/>" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                        
                        <div class="container">
    <div class="well well-sm">
        <strong>CLOTHING AND ACCESSORIES</strong>
        <div class="btn-group">
           
        </div>
    </div>
   <div class="item  col-xs-4 col-lg-4"> 
            <div class="thumbnail">
           
                <img class="group list-group-image" src="<spring:url value="resources/images/bridal.jpg"/>" alt="" width="300" height="400">
                <div class="caption">
                    
                    <p class="group inner list-group-item-text">
                       Unique Collection Party Wear Suits exclusively for Summer-Spring wedding Collection for Womens and Girls
by unique collection </p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                RS:3200</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success">Add to cart</a>
                        
                    </div>
                </div>
            </div>
        </div>
        </div>
        <div class="item  col-xs-4 col-lg-4"> 
            <div class="thumbnail">
           
                <img class="group list-group-image" src="<spring:url value="resources/images/bridal1.jpg"/>" alt="" width="300" height="400">
                <div class="caption">
                   
                    <p class="group inner list-group-item-text">
                       Winza Women's Satin Chiffon Saree (Exclusive ethnic wedding design sarees - collection with discount deal offer... </p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                RS:4000</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success">Add to cart</a>
                      
                    </div>
                </div>
            </div>
        </div>
        </div>
        <div class="item  col-xs-4 col-lg-4"> 
            <div class="thumbnail">
           
                <img class="group list-group-image" src="<spring:url value="resources/images/bridal2.jpg"/>" alt="" width="300" height="400">
                <div class="caption">
                   
                    <p class="group inner list-group-item-text">
                       Gayatri Enterprise New Latest Collection Embroidry & Georgette in Color Exclusive ethnic wedding design sarees </p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                RS:3000</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
       
        <div class="item  col-xs-4 col-lg-4"> 
            <div class="thumbnail">
            
                <img class="group list-group-image" src="<spring:url value="resources/images/chudi.jpg"/>" alt="" width="300" height="400">
                <div class="caption">
                   
                    <p class="group inner list-group-item-text">
                     Unique Collection Party Wear Suits exclusively for Summer-Spring wedding Collection for Womens and Girls  </p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                RS:2500</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4"> 
            <div class="thumbnail">
           
                <img class="group list-group-image" src="<spring:url value="resources/images/halfsaree.jpg"/>" alt="" width="300" height="400">
                <div class="caption">
                   
                    <p class="group inner list-group-item-text">
                        Vasu Saree For Women Designer Partywear Maroon Beautiful Liva & Viscose Saree For Party or wedding with fashionable...</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                RS:4300</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4"> 
            <div class="thumbnail">
           
                <img class="group list-group-image" src="<spring:url value="resources/images/lehe.jpg"/>" alt="" width="300" height="400">
                <div class="caption">
                   
                    <p class="group inner list-group-item-text">
                       Winza Women Party wear Design collection - Georgette Saree with heavy embroidered work and unstitch Blouse </p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                RS:5000</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                      <a class="btn btn-success">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
    <div class="well well-sm">
        <strong>JEWELLERY</strong>
        <div class="btn-group">
           
        </div>
    </div>
   <div class="item  col-xs-4 col-lg-4"> 
            <div class="thumbnail">
           
                <img class="group list-group-image" src="<spring:url value="resources/images/je1.jpg"/>" alt="" width="200" height="300">
                <div class="caption">
                   
                    <p class="group inner list-group-item-text">
                        Jewels Galaxy Wedding Collection of 4 Mangalsutra Set - Combo Of 4</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                RS:3200</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success">Add to cart</a>
                        
                    </div>
                </div>
            </div>
        </div>
        </div>
        <div class="item  col-xs-4 col-lg-4"> 
            <div class="thumbnail">
           
                <img class="group list-group-image" src="<spring:url value="resources/images/je2.jpg"/>" alt="" width="200" height="300">
                <div class="caption">
                   
                    <p class="group inner list-group-item-text">
                       Jewels Galaxy Wedding Collection of 4 Mangalsutra Set - Combo Of 3 </p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                RS:4000</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success">Add to cart</a>
                      
                    </div>
                </div>
            </div>
        </div>
        </div>
        <div class="item  col-xs-4 col-lg-4"> 
            <div class="thumbnail">
           
                <img class="group list-group-image" src="<spring:url value="resources/images/je3.jpg"/>" alt="" width="200" height="300">
                <div class="caption">
                   
                    <p class="group inner list-group-item-text">
                        Jewels Galaxy Wedding Collection of 4 Mangalsutra Set - Combo Of 2</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                RS:3000</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
       
        <div class="item  col-xs-4 col-lg-4"> 
            <div class="thumbnail">
            
                <img class="group list-group-image" src="<spring:url value="resources/images/je4.jpg"/>" alt="" width="200" height="300">
                <div class="caption">
                   
                    <p class="group inner list-group-item-text">
                      Sukkhi Gold Plated Australian Diamond Choker Necklace With Drop Earrings And Mangtikka Set For Women </p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                RS:2500</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4"> 
            <div class="thumbnail">
           
                <img class="group list-group-image" src="<spring:url value="resources/images/je5.jpg"/>" alt="" width="200" height="300">
                <div class="caption">
                   
                    <p class="group inner list-group-item-text">
                      Sukkhi Gold Plated Australian Diamond Choker Necklace With Drop Earrings And Mangtikka Set For Womesn  </p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                RS:4300</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4"> 
            <div class="thumbnail">
           
                <img class="group list-group-image" src="<spring:url value="resources/images/je6.jpg"/>" alt="" width="200" height="300">
                <div class="caption">
                   
                    <p class="group inner list-group-item-text">
                       Sukkhi Gold Plated Australian Diamond Choker Necklace With Drop Earrings And Mangtikka Set For Womesn </p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                RS:5000</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                      <a class="btn btn-success">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

                        
  
</body>
</html>