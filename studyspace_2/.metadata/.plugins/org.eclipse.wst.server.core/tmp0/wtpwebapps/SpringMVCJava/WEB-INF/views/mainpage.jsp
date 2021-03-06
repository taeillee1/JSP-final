<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width",initial-scale="1">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/onlymine.css">
<title>Insert title here</title>
<style>
	.hi{
		background-color:yellow;
		font-size:30px;
	}
	.taeil{
		margin-top:20px;
		background-color:yellow;
		height : 1500px;
	}
</style>
</head>
<body>
	<% 
		String userID=null;
		if(session.getAttribute("userID") != null){
			userID=(String)session.getAttribute("userID");
		}
	%> 
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<a class="navbar-brand" href ="mainpage">JSP활용한 페이지 만들기</a>
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" 
			data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <!-- collapse는 숨기기 기능  -->
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				
			</button>
		</div>
		<div class="collapse navbar-collapse" id =bs-example-navbar-collapse-1>
			<ul class="nav navbar-nav">
				<li><a href="mainpage">메인</a></li>
				<li><a href="Mymenu">내가 만들 메뉴</a></li>
			</ul>
			
			<%
			if(userID==null){
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login">로그인</a></li>
						<li><a href="join">회원가입</a></li>
					</ul>
				</li>
			</ul>
			<%
				}else{
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="hi"><a href="#"><%= userID %></a></li>
						<li><a href="logoutAction">로그아웃</a></li>
						
					</ul>
				</li>
			</ul>
			<%
				}
			%>
			
		</div>
	</nav>
	<div class="jumbotron">
		<div class="container">
			<h1>웹 사이트 소개</h1>
			<p>이 웹사이트는 이태일이 만든 웹사이트입니다.<br>앞으로 잘 부탁드립니다.<br>즐겁게 만들어본 웹페이지 입니다.</p>
			<p><a class="btn btn-primary btn-lg" href="#" role="button" style = "background-color: red; border-color:black;">Learn more</a></p>
		</div>
	</div>
	
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="2" class="active"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="image/im4.png" style="width:3000px;">
				</div>
				<div class="item">
					<img src="image/im5.jpg" style="width:3000px;">
				</div>
				<div class="item">
					<img src="image/im6.png" style="width:3000px;">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev" style="width:70px;">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next" style="width:70px;">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
		
	
	
	
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>