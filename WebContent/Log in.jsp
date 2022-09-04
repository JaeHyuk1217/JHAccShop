<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
 <head>
 <meta name='viewport' content="width=device-width", initial-scale="1">  
  <meta charset="UTF-8">
  
  <title>JH ACC SHop</title>
  <link rel="stylesheet" href="css/style2.css">
  <link rel="stylesheet" href="css/main.css">
  <link rel="stylesheet" href="css/bootstrap.css" >
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
    <center>

        <h3> RETURNING CUSTOMERS </h3>
       <br>
          
               <form method="post" action="loginAction.jsp">
               <input type="text" name="userID" id="id" placeholder="ID" maxlength="6" />
               <br>
               <br>
               
               <input type="password" name="userPassword" id="password" placeholder="PASSWORD" />
               <br>
               <br>
               <input type="submit"  value="Log in" />
               <a href="Join us.jsp"><input type="button"  value="Join us"></a>
               </form>
      <br>
   </center>
    
        <center><h4>JH ACC Shop 에 오신걸 환영합니다.</h4></center> 
<jsp:include page="navf.jsp" />
    </body>
</html>
    