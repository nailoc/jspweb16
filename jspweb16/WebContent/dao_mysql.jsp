<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.hk.jsp.dao.EmpDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		EmpDao emp = EmpDao.getInstance();
		emp.testConnect();
		out.println("콘솔의 로그를 확인하시오");
	%>
</body>
</html>