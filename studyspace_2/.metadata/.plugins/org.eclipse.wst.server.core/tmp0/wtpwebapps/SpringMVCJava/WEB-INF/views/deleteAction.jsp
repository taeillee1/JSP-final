<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="bbs.BbsDAO" %>
    <%@ page import="bbs.Bbs" %>
    <%@ page import="java.io.PrintWriter" %>
    <% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String userID=null;
		if(session.getAttribute("userID")!=null){
			userID=(String)session.getAttribute("userID");
		}
		if(userID==null){
			PrintWriter script = response.getWriter();
			script.println("<script>"); //jsp파일에서 html처럼 페이지를 이동시킬때 사용하는 방법
			script.println("alert('로그인을 하세요')");
			script.println("location.href='login'");
			script.println("</script>"); 
		}
		int bbsID=0;
		if(request.getParameter("bbsID")!=null){
			bbsID=Integer.parseInt(request.getParameter("bbsID"));
		}
		if(bbsID==0){
			PrintWriter script = response.getWriter();
			script.println("<script>"); //jsp파일에서 html처럼 페이지를 이동시킬때 사용하는 방법
			script.println("alert('유효하지 않은 글입니다')");
			script.println("location.href='Mymenu'");
			script.println("</script>"); 
		}
		Bbs bbs = new BbsDAO().getBbs(bbsID);
		if(!userID.equals(bbs.getUserID())){
			PrintWriter script = response.getWriter();
			script.println("<script>"); //jsp파일에서 html처럼 페이지를 이동시킬때 사용하는 방법
			script.println("alert('권한이 없습니다.')");
			script.println("location.href='Mymenu'");
			script.println("</script>"); 
		} else{
						BbsDAO bbsDAO = new BbsDAO();
						int result = bbsDAO.delete(bbsID);
						if(result ==-1){
							PrintWriter script = response.getWriter();
							script.println("<script>");
							script.println("글삭제에 실패했습니다.");
							script.println("history.back()");//이전 페이지로 돌려보내기 
							script.println("</script>"); 
						}
						else{
							PrintWriter script = response.getWriter();
							script.println("<script>"); 
							script.println("location.href='Mymenu'");
							script.println("</script>"); 
						}	
					
		}
		
		
	%>
</body>
</html>