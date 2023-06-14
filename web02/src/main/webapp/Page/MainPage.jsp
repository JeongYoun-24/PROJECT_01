<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


     <% String name = request.getParameter("user_id"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

<style>
span{
            letter-spacing:0px;
            margin:-4px;
            font-weight: 600;
        }
        #gg{
        font-weight: 553;
        }

</style>
</head>
<body>

<div class="container">
    <div class="d-flex justify-content-end mt-3">
        <c:choose>
		<c:when test="${not empty user_id}">
            <form action="/web02/main/logout.do">
                <small>Gmail</small>
               <small><a href="/web02/main/golist.do" style="color:rgb(80, 79, 79); margin: 20px; text-decoration: none;">게시판</a></small>
                <button class="btn btn-primary"> 로그아웃</button>
            </form>
            <!-- ${user_id}님 <br><hr> -->
		</c:when>

		<c:otherwise>
            <form action="/web02/main/loginpage.do">
                <small>Gmail</small>
               <small><a href="/web02/main/golist.do" style="color:rgb(80, 79, 79); margin: 20px; text-decoration: none;">게시판</a></small>
                <button class="btn btn-primary"> 로그인</button>
            </form>
		</c:otherwise>
	</c:choose>
    </div>
    <div class="">
	     <div class="text-center ">
		    <span id="gg" class="text-center" style="color:#0081FF; font-size:80px">G</span>
			<span class="text-center" style="color:#FF3606; font-size:70px">o</span>
			<span class="text-center" style="color:#FFBE00; font-size:70px;">o</span>
			<span class="text-center" style="color:#0081FF; font-size:70px">g</span>
			<span class="text-center" style="color:#00B323; font-size:80px">l</span>
			<span class="text-center" style="color:#FF3606; font-size:70px; transform: rotateY(180deg);">e</span>
		</div>
        <div class="row d-flex justify-content-center mt-5">
           <div class="col-md-6">
                <input type="text" class="form-control" placeholder="Search Google or type a URL">
           </div>
        </div>
        <div class="row d-flex justify-content-center mt-3">
            <div class="col-md-2">
                <button class="btn btn-light">google store</button>
            </div>
            <div class="col-md-2">
                <button class="btn btn-light">I'm Feeling Lucky</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>