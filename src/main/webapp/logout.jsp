<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	
	String s_id = (String)session.getAttribute("member_id");
	String s_pw = (String)session.getAttribute("member_pw");
		
	out.println("---세션 memer_id 삭제 전 -----<br>");
	 out.println("세션 id : "  + s_id + "<br>");
	 out.println("세션 pass : "  + s_pw + "<br>");

    //session.removeAttribute("member_id"); 세션에서 member_id 삭제
    //session.removeAttribute("member_pw"); 
    
    session.invalidate();
    
     //s_id = (String)session.getAttribute("member_id");
	 //s_pw = (String)session.getAttribute("member_pw");
	 
	 	 out.println("---세션 memer_id 삭제 후 -----<br>");
	 	 
	 if(request.isRequestedSessionIdValid() == false )
	 {
		 out.println("로그아웃 되었습니다.<br>");
	 }
	 else
	 {
		 

	 out.println("세션 id : "  + s_id + "<br>");
	 out.println("세션 pass : "  + s_pw + "<br>");
	 }

    
%>

</body>
</html>