<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.PrintWriter" %>
    <%@ page import="necklace.Necklace" %>
<%@ page import="necklace.NecklaceDAO" %>
<%@ page import="java.util.ArrayList" %>
<jsp:useBean id="NecklaceDAO" class="necklace.NecklaceDAO" scope="session" />
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
	
	Necklace NecklaceDao = new Necklace();
	ArrayList<Necklace> productlist = NecklaceDAO.getProductsList();
	String url = request.getRequestURL().toString(); 
	url = request.getQueryString();
	Necklace product = NecklaceDAO.getProductById(url);
	
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
팬던트 (신주)
<br>
팬던트 SIZE (가로 0.8 cm, 세로 1.5 cm)
<br>
<br>
<br>
*두개로 레이어드 된 입체적인 달러 디자인 팬던트
<br>
*은은한 빈티지한 컬러감
<br>
*미니한 사이즈로 편한활용도
<br>
<br>
<br>
BASIC SIZE (60cm)
<br>
<br>
*팬던트에 가장 잘 어울리는 기장감을 기본으로 추천드립니다
<br>
GIRL (60cm)
<br>
BOY (60cm)
<br>
<br>
<br>
<br>
</b>
</center>
  
    
      <jsp:include page="navf.jsp" />
    
 </body>
</html>
