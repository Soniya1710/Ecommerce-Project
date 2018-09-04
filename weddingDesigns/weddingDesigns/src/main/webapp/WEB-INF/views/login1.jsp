<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<head>

 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<spring:url value="/resources/css/bootstrap.min.css"/>">
  <script src="<spring:url value="/resources/js/jquery.min.js"/>"></script>
  <script src="<spring:url value="/resources/js/bootstrap.min.js"/>"></script>

 
 
 
 
<p> <h2 style="color:#3CGH42;"> Welcome to the shopping world of your Time!!!!!</h2> </p>
<div>
  <ul>
 <li><a  href= "<spring:url value="//"/>">HOME</a></li>
  <li><a href="<spring:url value="/aboutus"/>">ABOUT US</a></li>
      </ul>
               
   
  <br>
  </div>
 
   <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>


<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}
li {
    float: left;
}
li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}
li a:hover:not(.active) 
{
    background-color: #111;
}
.active {
    background-color: #4CAF50;
}
</style>



</head>

<body>




<div class="container"><div class="row">
<div class="col-md-4 col-md-offset-7">
<div class="panel panel-default">
<div class="panel-heading">

<div class="page-header">
    <h1>Login form </h1>
</div>
</div>
<div class="panel-body">
<form class="form-horizontal" role="form" id="780274440">
<div class="form-group">
<label for="inputEmail3" class="col-sm-3 control-label">Email</label>
<div class="col-sm-9">
<input type="email" class="form-control" id="inputEmail3" placeholder="Email" required="">
</div></div>
<div class="form-group">
<label for="inputPassword3" class="col-sm-3 control-label">Password</label>
<div class="col-sm-9">
<input type="password" class="form-control" id="inputPassword3" placeholder="Password" required="">
</div></div>
<div class="form-group">
<div class="col-sm-offset-3 col-sm-9">
<div class="checkbox"><label class="">
<input type="checkbox" class="">Remember me</label>
</div></div></div>
<div class="form-group last">
<div class="col-sm-offset-3 col-sm-9">
<button type="submit" class="btn btn-success btn-sm">Sign in <a href=login" class=""></a></button> 
<button type="reset" class="btn btn-default btn-sm">Reset</button>
</div></div></form></div>
<div class="panel-footer">Not Registered? <a href="signup" class="">Register here</a>
</div></div></div></div></div>
</body>
</html>