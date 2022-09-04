<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="necklace.Necklace" %>
<%@ page import="necklace.NecklaceDAO" %>
<%@ page import="java.util.ArrayList" %>
<jsp:useBean id="necklaceDAO" class="necklace.NecklaceDAO" scope="session" />
<!doctype html>
<html lang="ko">
 <head>
	<meta name='viewport' content="width=device-width", initial-scale="1">  
  <meta charset="UTF-8">
  
 <title>JH ACC SHop</title>
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
<%
NecklaceDAO necklace = NecklaceDAO.getInstance();
ArrayList<Necklace> listOfProducts = necklaceDAO.getProductsList();
%>
 <section id="content_box">
     <div class="box">
<h3>NecKlace</h3>
         <p><a href="판매자 추천순.jsp">판매자 추천순</a> | <a href="인기도순.jsp">인기도순</a> | <a href="v평점높은순.jsp">평점높은순</a> | <a href="최신등록순.jsp">최신등록순</a></p>
         <div class="clear"></div>
         
<%
	for (int i = 0; i < listOfProducts.size(); i++){
		Necklace necklace1 = listOfProducts.get(i);
%>

     <div class="box">
         <ul class="items">
         	<li><img src="image/<%=necklace1.getPnumber() %>" border="0" width="200" height="200"></li>
			<li class="a"><a href="product.jsp?<%=necklace1.getPnumber() %>"><%=necklace1.getName() %></a></li>
			<li class="b"><%=necklace1.getPrice() %></li>
			
  		 </ul>  
        
     </div>

<%
	}
%>
 </section>
 <jsp:include page="navf.jsp" />
</body>
</html>
