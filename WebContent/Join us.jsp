<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta name='viewport' content="width=device-width" , initial-scale="1">
<meta charset="UTF-8">

<title>JH ACC Shop</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<link rel="stylesheet" href="css/style2.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
 <jsp:include page="nav.jsp" />
<input type="checkbox" id="menuicon">
</head>
<header>
<br>
<br>
<br>
<br>
	<center>
		<a href="JH ACC Shop.jsp">
			<img src="image/배너.png" width="250" height="70">
		</a>
	</center>
</header>
<body>
	<div class="container">
		<form method="post" action="./회원가입정보.jsp">
			<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3"><h4>회원 등록</h4></th>
					</tr>
				</thead>
				<tr>
					<td style="width: 110px;"><h5>아이디</h5></td>
					<td><input class="form-control" type="text" id="userID" name="userID" maxLength="20"></td>
					<td style="width: 110px;"><button class="btn btn-primary" onclick="registerCheckFunction();" type="button">중복체크</button></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>비밀번호</h5></td>
					<td colspan="2"><input class="form-control" type="password" id="userPassword" name="userPassword" maxLength="20"></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>이름</h5></td>
					<td colspan="2"><input class="form-control" type="text" id="userName" name="userName" maxLength="20"></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>성별</h5></td>
					<td colspan="2">
						<div class="form-group" style="text-align: center; margin: 0 auto;">
							<div class ="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active">
							 <input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
							</label>
							<label class="btn btn-primary">
							 <input type="radio" name="userGender" autocomplete="off" value="여자" >여자
								 </label>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>Email</h5></td>
					<td colspan="2"><input class="form-control" type="text" id="userEmail" name="userEmail" maxLength="20"></td>
				</tr>
				<tr>
				   <td style="text-align: left" colspan="3"><input class="btn btn-primary pull-right" type="submit" value="회원가입"></td>
				</tr>
				
			</table>
		</form>
	</div>
</body>
<jsp:include page="navf.jsp" />
</html>