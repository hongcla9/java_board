<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 뷰포트 -->
<meta name="viewport" content="width=device-width" initial-scale="1">
<!-- 스타일시트 참조  -->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>자취인생</title>
</head>
<body>
	<%
		//로긴한사람이라면	 userID라는 변수에 해당 아이디가 담기고 그렇지 않으면 null값
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>
	<!-- 네비게이션  -->
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="bs-example-navbar-collapse-1"
				aria-expaned="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">자 취 인 생</a>
		</div>
		<div class="collapse navbar-collapse"
			id="#bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a></li>
				<li><a href="local.jsp">매물</a></li>
				<li><a href="issue.jsp">오늘의 이슈</a></li>
				<li class="active"><a href="bbs.jsp">커뮤니티</a></li>
			</ul>
			<%
				//라긴안된경우
			if (userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul></li>
			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul></li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1>자취인생</h1>
				<p>이사갈때 꼭 들려야 하는 자취인생.</p>
				<p>저렴하고 새 것 같은 나만의 집을 직거래로!</p>
				<a class="btn btn-primary btn-pull" href="local.jsp" role="button">discover</a>
			</div>
		</div>
	</div>
	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-taget="#myCarousel" data-slide-to="0" class="active"><li>
				<li data-taget="#myCarousel" data-slide-to="1"><li>
				<li data-taget="#myCarousel" data-slide-to="2"><li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/1.JPG">
				</div>
					<div class="item">
						<img src="images/2.JPG">
					</div>
						<div class="item">
							<img src="images/3.JPG">
						
					</div>
				</div>
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span>
				</a> <a class="right carousel-control" href="#myCarousel"
					data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
		</div>
		<!-- 애니매이션 담당 JQUERY -->
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<!-- 부트스트랩 JS  -->
		<script src="js/bootstrap.js"></script>
</body>
</html>