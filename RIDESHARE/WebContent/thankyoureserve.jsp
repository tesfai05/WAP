
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Thank You</title>
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
                    <span style="color:yellow; padding-left: 2em; padding-right: 1em; font-size:1.5em">Thank You! For making someone smile Today.</span>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0" >

                <a href="about.jsp" class="btn btn-success btn-lg" type="button">About Us</a>

            </form>

        </div>
    </nav>
    <div id="thankyou">
    	<h2 style="text-align:center">THANK YOU !</h2>
		<p>Thank you for making your reservation with us at RideShare.You can contact your driver through the following information. </p>
    	<ul>
    		<li>Telephone : ${phone}</li>
    		<li>email : ${email}</li>
    	
    	</ul>
    	<br>
    	<p>Wishing you a safe trip !</p>
    	<p style=" padding-left:10%;color:blue;"> manager@raideshare.com</p>
    </div>

	</div>
	   <footer id="footer">
	    <div class="container">
	      <div class="row">
	        <div class="col-lg-6 text-lg-left text-center">
	          <div class="copyright">
	            &copy; Copyright <strong>RideShare</strong>. All Rights Reserved
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