<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width",initial-scale="1">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/onlymine.css">
<title>Insert title here</title>
</head>
<body>
	<!-- <img src="image/imimim.png"/> -->
	<!-- <a href="test1">test1</a> -->
	<!-- <button onclick="location='test1'">버튼 클릭시 이동</button> -->
	<%
		session.invalidate();//세션할당을 해지하는것 즉 로그인상태를 해제시키는 법
	%>
	<script>
		location.href="mainpage";
	</script>
	
</body>
</html>