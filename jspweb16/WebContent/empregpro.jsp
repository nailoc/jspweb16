<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.hk.jsp.dao.EmpDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원관리</title>
<link rel="stylesheet" href="css/style.css"></link>
<style></style>
</head>
<body>
	<%
		String id = request.getParameter("empid");
		String name = request.getParameter("empname");
		String passwd = request.getParameter("emppw");
		String designation = request.getParameter("empjob");
		String phn = request.getParameter("empphn");
		
		//out.println("id="+id +"<br>");
		//out.println("name="+name +"<br>");
		//out.println("pw=" +passwd +"<br>");
		EmpDao dao = EmpDao.getInstance();
		int result = dao.regEmp(id, name, passwd, designation, phn);
		
		//out.println("등록성공여부="+result);
		if(result==1) {
			response.sendRedirect("emplist.jsp");
		}else{
			response.sendRedirect("empreg.jsp");
		}
		
		
	%>
</body>
<script></script>
</html>