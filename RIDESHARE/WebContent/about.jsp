<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.2/cerulean/bootstrap.min.css" rel="stylesheet" integrity="sha384-EmRcsPP774S9MOi4ywB+JXUWjYnBdyInMzG2XsC5siZEUpexqxOMJW358dCYEjPu" crossorigin="anonymous">

<link href="css/firstpage/style.css" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.2/cerulean/bootstrap.min.css" rel="stylesheet" integrity="sha384-EmRcsPP774S9MOi4ywB+JXUWjYnBdyInMzG2XsC5siZEUpexqxOMJW358dCYEjPu" crossorigin="anonymous">
<!-- <link rel="stylesheet" href="css/cssdetail.css">   --> 
 <style>
       #about{
          
            border: 1px solid rgb(198, 194, 194);
            padding: 30px;
        }
        <!-- .nav{
           
            background-color: cadetblue;
        }
       -->
      </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" >
        <a href="index.jsp" class="btn btn-success btn-lg" type="button">&nbsp;&nbsp;Home&nbsp;&nbsp;</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <ul class="navbar-nav mr-auto">

                <li class="nav-item" style=" padding-left: 4em; padding-right: 2em;">
                    <span style="color:yellow; padding-left: 2em; padding-right: 1em;">Brief Information about this Project</span>
                </li>
            </ul>

            <form class="form-inline my-2 my-lg-0">
				<a href="sign-in-driver.jsp" class="btn btn-success btn-lg" type="button">SignIn As Driver</a>
                <a href="sign-up.jsp" class="btn btn-success btn-lg" type="button">SignUp</a>
            </form>


        </div>
    </nav>
    <div id="about">
    	<h5 style="text-align:center;"><u><strong >Ride Share</strong></u></h5><br>
    	<p style="text-align:center;">Ride share is a platform where people looking for a ride for a cheap amount of money and people going to places and looking for accompany or some extra cash meet!
		Using Ride-share people can search for a ride with their preferred origin and destination with the day and time of travel and get ride offers from our huge collection of registered users willing togive them ride for a small amount of money depending on the agreement with the driver.
		And Looking from the driver`s perspective Ride share is a place where they make an extra cash by giving people ride alongside their travel.
		<br><br><p style="text-align:center;"><strong >What makes us Different?</strong></p><br> Our platform is based on the agreement between the ride seeker and the ride giver, long distance travel and ride for free are available. These services are harder to realize in the famous applications like uber or lyft. Since most people work for these companies within a city (Short distance travel) and the price is set by the application.
		<br><strong>Thank You!</strong></p>
   </div>
     <!--==========================
      Our Team Section
    ============================-->
    <section id="team" class="section-bg">
      <div class="container">
        <div class="section-header">
          <h3 class="section-title">Team Members</h3>
          <span class="section-divider"></span>
          <p class="section-description">WAP Students November 2019</p>
        </div>
        <div class="row wow fadeInUp">
          <div class="col-lg-3 col-md-6">
            <div class="member">
              <div class="pic"><img src="images/team/tesfai.jpg" alt=""></div>
              <h4>Tesfai Gebrekidan</h4>
              <span>Student @MUM 2019</span>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <div class="member">
              <div class="pic"><img src="images/team/team-2.jpg" alt=""></div>
              <h4>Mulusew Kassa</h4>
              <span>Student @MUM 2019</span>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="member">
              <div class="pic"><img src="images/team/team-3.jpg" alt=""></div>
              <h4>Dawit Anbessie</h4>
              <span>Student @MUM 2019</span>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <div class="member">
              <div class="pic"><img src="images/team/team-4.jpg" alt=""></div>
              <h4>Yared Beyene</h4>
              <span>Student @MUM 2019</span>
            </div>
          </div>
        </div>

      </div>
    </section><!-- #team -->
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