<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모든 세션 정보</title>
</head>
<body>
<%
 	
			
			// String a = session.getAttribute("member_id");
			Enumeration session_all = session.getAttributeNames();
			
			while(session_all.hasMoreElements())
			{
			   String s_name = session_all.nextElement().toString();
			   String s_value = session.getAttribute(s_name).toString();
			
			   
			   out.println("세션의 이름 : " + s_name + "<br>");
			   out.println("세션의 이름 : " + s_value + "<br>");
			}




%>

</body>
</html>