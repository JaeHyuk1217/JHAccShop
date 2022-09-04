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
  
<body>
  <input type="checkbox" id="menuicon">
<ul>
	<li>
		<label for="menuicon">
			<span></span><span></span><span></span>
		</label>
	</li>

</ul>
	<%
      String userID = null;
   if (session.getAttribute("userID") != null) {
      userID = (String) session.getAttribute("userID");
   }
   %>
	
    <div class="sidebar">
	<ul class="sitemap-ul">
		<li><a href="#"></a>
			<ul>
                <br>
                <br>
				<li><a href="NecKlace.jsp">Necklace</a></li>
				<li><a href="Bracelet.jsp">Bracelet</a></li>
				
                <br>
                <li><a href="My Page.jsp">My Page</a></li>
				<li><a href="bbs.jsp">Q & A</a></li>
                <li><a href="Notics.jsp">Notics</a></li>
                <li><a href="About us.jsp">About us</a></li>
                <br>
                <br>
                <% if(userID==null){ %>
                <a href="Log in.jsp"> <input type="button"  value="Log in">
				<%} else{%>
				<h5><%= session.getAttribute("userID") %>님 <small>반갑습니다.</small></h5><a href="Log out.jsp"> <input type="button"  value="Log out">
				<%} %>
			</ul>
		</li>
		
		
    
</div>
 </body>
</html>
