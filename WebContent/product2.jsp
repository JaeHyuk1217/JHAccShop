<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.PrintWriter" %>
  <%@ page import="bracelet.Bracelet" %>
<%@ page import="bracelet.BraceletDAO" %>
<%@ page import="java.util.ArrayList" %>
<jsp:useBean id="BraceletDAO" class="bracelet.BraceletDAO" scope="session" />
<!doctype html>
<html>
 <head>
	<meta name='viewport' content="width=device-width", initial-scale="1"> 
  <meta charset="UTF-8">
  
  <title>JH ACC Shop</title>
  <link rel="stylesheet" href="css/style2.css">
  <link rel="stylesheet" href="css/main.css">
  <link rel="stylesheet" href="css/style3.css">
  <link rel="stylesheet" href="css/default.css">
 <%-- <jsp:include page="nav.jsp" /> --%>
 <%@ include file="nav.jsp" %>
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
if(session.getAttribute("userID") != null){
	userID = (String) session.getAttribute("userID");
}

%>
<%
	request.setCharacterEncoding("UTF-8"); // euc-kr		// UTF-8로 설정
	
	// 세션에서 username가 없으면 새로 셋팅, 한번만 실행됨.
	// 상품리스트 정보값이 들어있는 자바클래스 객체 생성
	
	Bracelet BraceletDao = new Bracelet();
	ArrayList<Bracelet> productlist = BraceletDAO.getProductsList();
	String url = request.getRequestURL().toString(); 
	url = request.getQueryString();
	Bracelet product = BraceletDAO.getProductById(url);
	
%>



 <section id="content_box">  
 	<div class="product_view">
		<h2><%=product.getName() %></h2>
		<table>
			<caption>
				<details class="hide">
					<summary>상품정보 </summary>
					판매가, 상품코드, 옵션 및 결제금액 안내
				</details>
			</caption>
			<colgroup>
			<col style="width:173px;">
			<col>
			</colgroup>
			<tbody>
			<tr>
				<th>판매가</th>
				<td class="price"><%=product.getPrice() %></td>
			</tr>
			<tr>
				<th>상품코드</th>
				
			</tr>
			
			<tr>
				<th>구매수량</th>
				<td>
					<div class="length">
						<input type="number" min="1" value="1">
						<a href="#a">증가</a>
						<a href="#a">감소</a>
					</div>
				</td>
			</tr>
			
			<tr>
				<th>옵션선택</th>
				<td>
					<select>
					<option>기본(+0)</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>배송비</th>
				<td>무료배송</td>
			</tr>
			<tr>
				<th>결제금액</th>
				<td class="total"><b><%=product.getPrice() %></b>원</td>
			</tr>
			</tbody>
		</table>
		<div class="img">
			<img src="image/<%=product.getPnumber() %>" alt="">
			
		</div>
		<div class="btns">
			<a href="#a" class="btn1">장바구니</a>
			<a href="#a" class="btn2">구매하기</a>
		</div>
	</div>

	
</section>
<b>
<center>	
	INFO
<br>
<br>
체인 (써지컬스틸)
<br>
<br>
팬던트 (써지컬스틸)
<br>
<br>
<br>
*실버 체인과 크로스 팬던트의 조화
<br>
<br>
*은은한 빈티지한 컬러감
<br>
<br>
*심플하면서 볼드한 느낌으로 다양한 연출가능
<br>
<br>


<br>
<br>
<br>
<br>
</b>
</center>
  
    
      <jsp:include page="navf.jsp" />
    
 </body>
</html>
