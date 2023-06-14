<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
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




<div class="text-center">
	    <span id="gg" class="text-center" style="color:#0081FF; font-size:80px">G</span>
		
		
		<span class="text-center" style="color:#FF3606; font-size:70px">o</span>
		<span class="text-center" style="color:#FFBE00; font-size:70px;">o</span>
		<span class="text-center" style="color:#0081FF; font-size:70px">g</span>
		<span class="text-center" style="color:#00B323; font-size:80px">l</span>
		<span class="text-center" style="color:#FF3606; font-size:70px; transform: rotateY(180deg);">e</span>
	</div>

<h4 class="text-center" style="color:red">${error}</h4>
	<div id="container">
		<div class= "w-50 border border-1 m-auto h-200">
		

			<form action="/web02/main/searchpw.do" class="form-control">
				<input type="text" name ="user_id" placeholder="아이디를 입력하세요" class="form-control"><br>
				<input type="text" name = "user_name" placeholder="이름을 입력하세요" class="form-control"><br>
				<input type="text" name ="user_age" placeholder="나이를 입력하세요" class="form-control"><br>
				<button class="btn btn-primary">비밀번호 찾기</button>
			</form>
			
			<c:if test="${not empty find_pw}">
				<p class="mt-4 mb-0" style="color :gray">회원님의 비밀번호 입니다</p>
				<input value ="${find_pw}" class="form-control mb-2" readonly>
				<a href="/web02/main/loginpage.do">로그인 페이지로 돌아가기</a>
				
				
		
				
				
			</c:if>

	</div>

</div>


</body>
</html>