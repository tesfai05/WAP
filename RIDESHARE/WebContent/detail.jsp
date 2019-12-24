<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DetailPage</title>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.2/cerulean/bootstrap.min.css" rel="stylesheet" integrity="sha384-EmRcsPP774S9MOi4ywB+JXUWjYnBdyInMzG2XsC5siZEUpexqxOMJW358dCYEjPu" crossorigin="anonymous">
<link rel="stylesheet" href="css/cssdetail.css">   
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
                    <span style="color:yellow; padding-left: 2em; padding-right: 1em;">Detailed Information</span>
                </li>
            </ul>

            <form class="form-inline my-2 my-lg-0">

                <a href="#" class="btn btn-success btn-lg" type="button">LogIn</a>

                <a href="#" class="btn btn-success btn-lg" type="button">SignUp !</a>

                <a href="#" class="btn btn-success btn-lg" type="button">LogIn As Driver</a>
            </form>





        </div>
    </nav>

</div>





<div  style="size: auto;padding-top: 5px;padding-left: 20px;padding-right: 20px;background: rgba(0, 0, 0, 0.8);color:white;"  >


		<div>
            <span style="font-size: 1.5em">Ride Details</span>
        </div>
        <p>&nbsp;</p>
        
        
    <div class="row">
        <div class="col-md-6">
        
    	<div class="form-group">
        <label for="fi">Traveling From :&nbsp;</label>
        <span style="font-size: 1.5em;font-weight: bold; color: #32a5e7;" >${ride.origin}</span>
    	</div>
    	
        </div>

        <div class="col-md-6">
            <label for="cities">Traveling To :&nbsp;</label>
            <span style="font-size: 1.5em;font-weight: bold; color: #32a5e7;">${ride.destination}</span>        
        </div>

    </div>
    
    
    <div class="row">
        <div class="col-md-6">
        
    	<div class="form-group">
        <label for="fi">Travel Date :&nbsp;</label>
        <span style="font-size: 1.5em;font-weight: bold; color: #32a5e7;" >${ride.date}</span>
    	</div>
    	
        </div>

        <div class="col-md-6">
            <label for="cities">Travel Time :&nbsp;</label>
            <span style="font-size: 1.5em;font-weight: bold; color: #32a5e7;">${ride.time}</span>        
        </div>

    </div>
    
    
    
    <div class="row">
        <div class="col-md-6">
        
    	<div class="form-group">
        <label for="fi">Driver Asking :&nbsp;</label>
        <span style="font-size: 1.5em;font-weight: bold; color: #32a5e7;" >${ride.fare}</span>
    	</div>
    	
        </div>

        <div class="col-md-6">
            <label for="cities">Message From Driver :&nbsp;</label>
            <span style="font-size: 1.5em;font-weight: bold; color: #32a5e7;">${ride.message}</span>        
        </div>

    </div>
    
    
    
    <div>
    <span style="font-size: 1.5em">Driver Details</span>
    </div>
    <p>&nbsp;</p>
    
    
    
    <div class="row">
        <div class="col-md-6">
        
    	<div class="form-group">
        <label for="fi">Driver firstName :&nbsp;</label>
        <span style="font-size: 1.5em;font-weight: bold; color: #32a5e7;" >${user.firstname}</span>
    	</div>
    	
        </div>

        <div class="col-md-6">
            <label for="cities">Driver lastName :&nbsp;</label>
            <span style="font-size: 1.5em;font-weight: bold; color: #32a5e7;">${user.lastname}</span>        
        </div>

    </div>
    
    
    
    
    
    <span >&nbsp;&nbsp;&nbsp;&nbsp;</span>

	<form action = "reserve" method = "post">
	<input type ="hidden" value = "${ride.id}" name = "id"/>
	<input type ="hidden" value = "${user.phone}" name = "phone"/>
	<input type ="hidden" value = "${user.username}" name = "username"/>

    <div style="padding-left: 48%;padding-right: 50%">
        <button style="width: 150px;height: 60px;" id="btnSubmit" type="submit" class="btn btn-success btn-lg">Reserve Ride</button>
    </div>
    
    </form>
    
    <br/><br/><br/>
    
    
    
    
    
    
    


</div>















</body>
</html>