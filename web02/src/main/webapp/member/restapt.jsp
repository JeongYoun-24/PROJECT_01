<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<body>

<div class="container">
		<h1 class="text-center">회원 목록</h1>
		<hr>
		<input type="button" value ="회원 정보 가져오기" id="post" class="btn btn-primary" ><br>
		<div id="message">
		</div>
		<br>
		<input type="button" value ="회원 정보 보내기" id="get" class="btn btn-primary" ><br>
		<div id="message2">
		</div>
	</div>
<script type="text/javascript">
	
$(function(){
	$('#get').click(function(){
		var Arrays = '{"name" : "oals", "age" : 15 , "email" : "oal65@naver.com"}'
		$.ajax({
			type: "get",
			async : false,
			url : "/web02/RestApt",
			data : {
				user_info : Arrays,
			},
			success: function(data,textStatus){
				alert('성공')
			},
			error: function(data,textStatus){
				alert('에러')
			}
		})
	})
	
	$('#post').click(function(){
			$.ajax({
				type: "post",
				async : false,
				url : "/web02/RestApt", 
				success: function(data){
					var jsonInfo = JSON.parse(data)
					var memberInfo = ""
					
					for(var i in jsonInfo.user){
						memberInfo += "<ul class=list-group>" + "<li class=list-group-item>"
						memberInfo +=  "아이디 : " + jsonInfo.user[i].user_id +" "
						memberInfo += "| 비밀번호 : "+ jsonInfo.user[i].user_pw +" "
						memberInfo += "| 이름 : "+jsonInfo.user[i].user_name +" "
						memberInfo += "| 나이 : " +jsonInfo.user[i].user_age +""
						memberInfo += "</li>"
						memberInfo += "</ul>"
					}
					$('#message').append(memberInfo)
				},
				error: function(data,textStatus){
					alert('에러')
				}
			})
	})
});

</script>

</body>
</html>