<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SearchResult</title>
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
                    <span style="color:yellow; padding-left: 2em; padding-right: 1em;">Search Results!</span>
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




<!--class="container"-->
<div style="size: auto;padding-top: 5px;padding-left: 20px;padding-right: 20px;background: rgba(0, 0, 0, 0.5);color:white;"  >

<!--    <div class="search_result_list">-->

        <div>
            <span style="font-size: 1.5em">Search Results</span>
        </div>
        <p>&nbsp;</p>


        <table class="table table-hover">
            <thead>
            <tr>
                <th scope="col">Date</th>
                <th scope="col">Time</th>
                <th scope="col">origin</th>
                <th scope="col">&nbsp;</th>
                <th scope="col">Destination</th>
                <th scope="col">Fare</th>
                <th scope="col">&nbsp;</th>
            </tr>
            </thead>
            <tbody>
            
            
            
            <c:forEach items="${results}" var="result">
    		<tr >
     			 <td style="vertical-align: middle; color: white;font-size: large;font-weight: bolder"  height="100px"><c:out value="${result.date}" /></td>
      			 <td style="vertical-align: middle; color: white;font-size: large;font-weight: bolder"  height="100px"><c:out value="${result.time}" /></td>
      			 <td style="vertical-align: middle; color: white;font-size: large;font-weight: bolder"  height="100px"><c:out value="${result.origin}" /></td>
      			 <td style="vertical-align: middle; color: white;font-size: large;font-weight: bolder"  height="100px">----></td>
      			 <td style="vertical-align: middle; color: white;font-size: large;font-weight: bolder"  height="100px"><c:out value="${result.destination}" /></td>
      			 <td style="vertical-align: middle; color: white;font-size: large;font-weight: bolder"  height="100px"><c:out value="${result.fare}" /></td>
      			 <td style="vertical-align: middle;color:black;font-size: large;font-weight: bolder"  height="100px" ><a  style="padding-left: 20px;padding-right: 20px;padding-top: 10px;padding-bottom: 10px" class="btn btn-primary btn-lg" href = "detail?id=${result.id}">Select Ride</a></td>
    		</tr>
  			</c:forEach>
  			
  			</tbody>


        </table>
</div>





</body>
</html>