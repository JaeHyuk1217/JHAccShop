<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
 <head>
	<meta name='viewport' content="width=device-width", initial-scale="1"> 
  <meta charset="UTF-8">
  
  <title>JH ACC Shop</title>
  <link rel="stylesheet" href="css/style2.css">
  <link rel="stylesheet" href="css/main.css">
 <jsp:include page="nav.jsp" />
 </head>
 <header>
	<br>
	<br>
	<br>
	<br>
	<center><a href="JH ACC Shop.jsp"><img src = "image/배너.png" width="250" height="70"></a></center>
 </header>
 <body>  
 	
    <div class="slidebox">
        <input type="radio" name="slide" id="slide01" checked>
        <input type="radio" name="slide" id="slide02">
        <input type="radio" name="slide" id="slide03">
        <input type="radio" name="slide" id="slide04">
        
        <ul class="slidelist">
            <li class="slideitem">
                <a><img src="./image/홈 사진.jpg" border="0" width="500" height="625"></a>
            </li>
            <li class="slideitem">
                <a><img src="./image/홈 사진2.jpg" border="0" width="500" height="625"></a>
            </li>
            <li class="slideitem">
                <a><img src="./image/홈 사진3.jpg" border="0" width="500" height="625"></a>
            </li>
            <li class="slideitem">
                <a><img src="./image/홈 사진4.jpg" border="0" width="500" height="625""></a>
            </li>
            
        </ul>
        <div class="slide-control">
            <div class="control01">
                <label for="slide04" class="prev"></label>
                <label for="slide02" class="next"></label>
            </div>
            <div class="control02">
                <label for="slide01" class="prev"></label>
                <label for="slide03" class="next"></label>
            </div>
            <div class="control03">
                <label for="slide02" class="prev"></label>
                <label for="slide04" class="next"></label>
            </div>
            <div class="control04">
                <label for="slide03" class="prev"></label>
                <label for="slide01" class="next"></label>
            </div>
        </div>
    </div>
    
        <center><h4>JH ACC Shop 에 오신걸 환영합니다.</h4></center>  
    
      <jsp:include page="navf.jsp" />
    
 </body>
</html>
