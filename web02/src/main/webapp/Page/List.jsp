<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
 <style>
    tbody a{
        color:rgb(10, 84, 243);
        text-decoration: none;
    }
    a:hover{
        text-decoration-line: underline;
    }
   .navi th{
    border: 1px solid black;
    background: white;
   }
	
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
		 <div class="text-center">
		    <span id="gg" class="text-center" style="color:#0081FF; font-size:80px">G</span>
			<span class="text-center" style="color:#FF3606; font-size:70px">o</span>
			<span class="text-center" style="color:#FFBE00; font-size:70px;">o</span>
			<span class="text-center" style="color:#0081FF; font-size:70px">g</span>
			<span class="text-center" style="color:#00B323; font-size:80px">l</span>
			<span class="text-center" style="color:#FF3606; font-size:70px; transform: rotateY(180deg);">e</span>
		</div>
        <br><br>
        <div>
        	<table class="table mb-0">
        	  	<tr  style="background-color: rgba(218, 215, 215, 0.548);">
        	  		<th scopr="col" class="border border-1 text-center"> 실시간 베스트</th>
                    <th scope="col" class="text-center"><a href="#">전세 사기 보증금 5억까지 구제</a></th>
                  </tr>
        	</table>
        </div>
	<hr>     
        <div>
            <ul class="list-group">
              </ul>
              <table class="table">
                <thead>
                  <tr style="background-color: rgba(218, 215, 215, 0.548);">
                    <th scope="col">#</th>  
                    <th scope="col">제목</th>
                    <th scope="col">작성자</th>
                    <th scope="col">날짜</th>
                    <th scope="col">조회수</th>
                    <th scope="col">추천수</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">4</th>
                    <td><a href="/web02/Page/ListView.jsp">누리호 3차 발사 D-2…내일 오전중 발사대 이송</a></td>
                    <td>bill</td>
                    <td>2021.03.21</td>
                    <td> 50</td>
                    <td> 3</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td><a href="#">전세 사기 보증금 5억까지 구제</a></td>
                    <td>admin</td>
                    <td>2021.03.21</td>
                    <td> 567</td>
                    <td> 32</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td><a href="#">"드론축구, 창의성 쑥…K팝처럼 히트할 것"</a></td>
                    <td>gray</td>
                    <td>2021.03.21</td>
                    <td> 21</td>
                    <td> 3</td>
                  </tr>
                  <tr>
                    <th scope="row">1</th>
                    <td><a href="#">韓경제 복합위기… 짙어지는 '상저하저'    </a></td>
                    <td>manaman</td>
                    <td>2021.03.21</td>
                    <td> 52</td>
                    <td> 6</td>
                  </tr>
                </tbody>
              </table>
        </div>
        <div class=" d-flex justify-content-end">
            <div class="mt-2">
                <form action="/web02/Page/Insert.jsp">
                    <button class=" btn btn-primary">글 쓰기</button>
                </form>
            
            </div>
        </div>
        <div class=" d-flex justify-content-center">
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                    <li class="page-item"><a class="page-link" href="#">페이지</a></li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><a class="page-link" href="#">다음</a></li>
                </ul>
            </nav>
        </div>
        <div class=" d-flex justify-content-center">
            <div class="col-md-4">
                <input type="text" class="form-control">    
            </div>
            <div >
                <button type="button" class="btn btn-primary" style="margin-left: 8px;"> 검색</button>
            </div>
        </div>
    </div>
</body>
</html>