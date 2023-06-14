<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <div class="container">
            <div class="row border border-1">   
                <div class="col-md-7">
                    <input type="text" class="form-control mt-2 mb-2" placeholder="제목을 입력하세요">
                </div> <!--글 내용 연결-->
                <div class="col-md-7">
                    <input type="file" class="form-control mb-3">
                </div>
                <textarea type="text" class="form-control" rows="18" placeholder="내용을 입력해주세요."></textarea>
                <div class="row">
                   <form action="/web02/Page/List.jsp">
                    <button class="btn btn-primary col-md-12">완료</button>
                </form>
                </div>
            </div>
        </div>
    </body>
</html>