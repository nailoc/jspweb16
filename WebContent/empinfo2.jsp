<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.hk.jsp.dao.EmpDao" %>    
<%@ page import="com.hk.jsp.vo.EmpVo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>emp 직원정보 출력</h3>
	<%
		EmpDao empdao = EmpDao.getInstance();
		EmpVo result = empdao.getEmpById("admin");
	%>
	<p>아이디: <%=result.getId() %></p>
	<p>이름: <%=result.getName() %></p>
	<p>비밀번호: <%=result.getPasswd() %></p>
	<p>직무: <%=result.getDesignation() %></p>
	<p>폰번호: <%=result.getPhone() %></p>
</body>
</html>