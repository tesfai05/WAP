<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Rides Posted </title>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.2/cerulean/bootstrap.min.css" rel="stylesheet" integrity="sha384-EmRcsPP774S9MOi4ywB+JXUWjYnBdyInMzG2XsC5siZEUpexqxOMJW358dCYEjPu" crossorigin="anonymous">
<link rel="stylesheet" href="css/cssdetail.css">  

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
                    <span style="color:yellow; padding-left: 2em; padding-right: 1em;">Individual Driver`s Posted Rides !</span>
                </li>
            </ul>

            <form class="form-inline my-2 my-lg-0">
				<a href="newpost.jsp" class="btn btn-success btn-lg" type="button" style="float:right">Add Ride</a>
    
            </form> 

        </div>
    </nav>

</div>
<!--class="container"-->
<div style="size: auto;padding-top: 5px;padding-left: 20px;padding-right: 20px;background: rgba(0, 0, 0, 0.5);color:white;"  >

        <table class="table table-hover">
            <thead>
            <tr>
                <th scope="col">Date</th>
                <th scope="col">Time</th>
                <th scope="col">origin</th>
                <th scope="col">&nbsp;</th>
                <th scope="col">Destination</th>
                <th scope="col">Fare</th>
                 <th scope="col">Message</th>
                <th scope="col">&nbsp;</th>
                <th scope="col">&nbsp;</th>
            </tr>
            </thead>
            <tbody>
             <c:if test="${posts.size()==0}">
            	<p>Sorry ! You do not have posted rides </p> 
            </c:if>
	            <c:forEach items="${posts}" var="post">
	    		<tr >
	     			 <td style="vertical-align: middle; color: white;font-size: large;font-weight: bolder"  height="100px"><c:out value="${post.date}" /></td>
	      			 <td style="vertical-align: middle; color: white;font-size: large;font-weight: bolder"  height="100px"><c:out value="${post.time}" /></td>
	      			 <td style="vertical-align: middle; color: white;font-size: large;font-weight: bolder"  height="100px"><c:out value="${post.origin}" /></td>
	      			 <td style="vertical-align: middle; color: white;font-size: large;font-weight: bolder"  height="100px">----></td>
	      			 <td style="vertical-align: middle; color: white;font-size: large;font-weight: bolder"  height="100px"><c:out value="${post.destination}" /></td>
	      			 <td style="vertical-align: middle; color: white;font-size: large;font-weight: bolder"  height="100px"><c:out value="${post.fare}" /></td>
	      			 <td style="vertical-align: middle; color: white;font-size: large;font-weight: bolder"  height="100px"><c:out value="${post.message}" /></td>
	      			 <td style="vertical-align: middle;color:black;font-size: large;font-weight: bolder"  height="100px" ><a  style="padding-left: 20px;padding-right: 20px;padding-top: 10px;padding-bottom: 10px" class="btn btn-primary btn-lg" href = "edit?id=${post.id}">Edit</a>
					<td style="vertical-align: middle;color:black;font-size: large;font-weight: bolder"  height="100px" ><a  style="padding-left: 20px;padding-right: 20px;padding-top: 10px;padding-bottom: 10px" class="btn btn-primary btn-lg" href = "delete?id=${post.id}">Delete</a>
	    		</tr>
	  			</c:forEach>
  			</tbody>
        </table>
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