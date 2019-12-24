
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign-up</title>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.2/cerulean/bootstrap.min.css" rel="stylesheet" integrity="sha384-EmRcsPP774S9MOi4ywB+JXUWjYnBdyInMzG2XsC5siZEUpexqxOMJW358dCYEjPu" crossorigin="anonymous">
<!-- <link rel="stylesheet" href="css/cssindex.css">  --> 

<link href="css/firstpage/style.css" rel="stylesheet">
<style type="text/css">
	body{
		 postion:relative;
		  min-height:100%;
		 }
        #body{
        	
            margin: 0 20px 20px 20px;
             border: 1px solid rgb(198, 194, 194);
            padding: 30px;
        }
        .nav{
           padding: 10px;
            background-color: cadetblue;
        }
	 #footer{
       position:absolute;
       bottom:0;
         left:0;
           right:0;
        } 

</style> 
</head>
<body>
<div >

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" >
        <a href="index.jsp" class="btn btn-success btn-lg" type="button">&nbsp;&nbsp;Home&nbsp;&nbsp;</a>
       
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <ul class="navbar-nav mr-auto">

                <li class="nav-item" style=" padding-left: 4em; padding-right: 2em;">
                    <span style="color:yellow; padding-left: 2em; padding-right: 1em; font-size:1.5em">Posting a New Ride Page!</span>
                </li>
            </ul>
             <form class="form-inline my-2 my-lg-0">


                <a href="about.jsp" class="btn btn-success btn-lg" type="button">&nbsp;&nbsp;About Us&nbsp;&nbsp;</a>
            </form>
        </div>
    </nav>

</div>
    <form id="body" action = "newpost" method = "post">
        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="origin">From</label>
            <input type="text" class="form-control" name="origin" id="origin" placeholder="Departing place" required>
          </div>
          <div class="form-group col-md-6">
            <label for="destination">To</label>
            <input type="text" class="form-control" name="destination" id="destination" placeholder="Destination place" required>
          </div>
        <div class="form-group col-md-6">
          <label for="date">Date of Travel</label>
          <input type="date" class="form-control" name="date" id="date" placeholder="mm/dd/yyyy " required>
        </div>
        <div class="form-group col-md-6">
          <label for="time">Departing Time</label>
          <input type="time" class="form-control" name="time" id="time" placeholder="hh:mm" required>
        </div>
        <div class="form-group col-md-6">
          <label for="fare">Fare(in USD)</label>
          <input type="text" class="form-control" name="fare" id="fare" placeholder="0.0" required>
        </div>
        <div class="form-group col-md-6">
          <label for="fare">Maximum Seat Capacity</label>
          <input type="text" class="form-control" name="seats" id="seat" placeholder="0" required>
        </div>
        <div class="form-group col-md-6">
            <label for="message">Message :</label>
            <textarea  class="form-control" name="message" id="message" placeholder="your short information if required" ></textarea>
        </div>
        </div>
        <button type="submit" class="btn btn-primary">Post Ride</button>
       
      </form>
      <footer id="footer">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 text-lg-left text-center">
          <div class="copyright">
            &copy; Copyright <strong>Public-Ride</strong>. All Rights Reserved
          </div>
        </div>
        <div class="col-lg-6">
          <nav class="footer-links text-lg-right text-center pt-2 pt-lg-0">
            <a href="index.jsp" class="scrollto">Home</a>
            <a href="about.jsp" class="scrollto">About</a>
          </nav>
        </div>
      </div>
    </div>
  </footer><!-- #footer -->
</body>
</html>