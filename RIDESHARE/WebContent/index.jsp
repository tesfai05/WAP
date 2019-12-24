<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RideShare</title>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.2/cerulean/bootstrap.min.css" rel="stylesheet" integrity="sha384-EmRcsPP774S9MOi4ywB+JXUWjYnBdyInMzG2XsC5siZEUpexqxOMJW358dCYEjPu" crossorigin="anonymous">
<link rel="stylesheet" href="css/cssindex.css">    
</head>
<body>



<div >

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" >

<!--        <a class="navbar-brand" th:href="@{/flightbooking/home}">Home</a>-->
        <a href="index.jsp" class="btn btn-success btn-lg" type="button">&nbsp;&nbsp;Home&nbsp;&nbsp;</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>



        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <ul class="navbar-nav mr-auto">

<!--                border-left: white 3px solid;-->

                <li class="nav-item" style=" padding-left: 4em; padding-right: 2em;">
                    <span style="color:yellow; padding-left: 2em; padding-right: 1em;">Welcome To RideShare!</span>
                </li>
            </ul>

            <form class="form-inline my-2 my-lg-0">

                <a href="sign-up.jsp" class="btn btn-success btn-lg" type="button">SignUp</a>
                <a href="sign-in-driver.jsp" class="btn btn-success btn-lg" type="button">LogIn As Driver</a>
                 <a href="about.jsp" class="btn btn-success btn-lg" type="button">About Us</a>
            </form>

        </div>
    </nav>

</div>





		<div class="container">

        <div class="search-form">

            <h1 style="color: white;">Welcome To RideShare ! </h1>
            <h1 style="color: white;">Search our vast System for Rides :) </h1>
            <h1>&nbsp;</h1>
        
        <form  id="searchform" method="get" action="search">
        
        
        
        <div class="row"  >
            <div class="col-md-6">
                <div class="form-group">
                    <span class="form-label" style="color: white;">Ride from</span>
                    <input class="form-control" name="origin"  required type="text" placeholder="City of Origin"  pattern=".*\S+.*" style="background: rgba(0, 0, 0, 0.6);color: white; border-radius: 25px; height: 50px">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <span class="form-label" style="color: white;">Ride to</span>
                    <input class="form-control" name="destination"  required type="text" placeholder="City of Destination" pattern=".*\S+.*"  style="background: rgba(0, 0, 0, 0.6);color: white; border-radius: 25px; height: 50px">
                </div>
            </div>
        </div>
        
        

        <div class="row" >
        <div class="col-md-12">
                <div class="form-group" style="padding-left: 200px;padding-right: 200px;">
                    <span class="form-label" style="color: white;">Date of Travel</span>
                    <input class="form-control" name="date"  type="date" required style="background: rgba(0, 0, 0, 0.6);color: white; border-radius: 25px; height: 50px">
                </div>
            </div>
        </div>
        
        

        <div style="text-align: center;padding-top: 50px;">
                    <button type="submit" class="btn btn-success btn-lg" style="color: black;font-weight: bolder">Search Rides</button>
        </div>
        <br/><br/>

        
        </form>
        
        

        </div>
        
        </div>



</body>
</html>