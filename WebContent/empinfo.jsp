<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.hk.jsp.vo.EmpVo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jspweb16</title>
<link rel="stylesheet" href="css/style.css"></link>
<style></style>
</head>
<body>
	<h3>emp 테이블에 특정 직원정보를 출력</h3>
	<%
		//접속정보를 정의 + 추가변수
		String driveName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/jspweb"; //디비정보
		String user = "jsp";
		String password = "1234";
		Connection conn = null;
		Statement stmt = null;      // 쿼리에 변수가 일반적 쿼리
		// 만약에 쿼리 변수가 있다면  preparedStatement pstmt = null
		ResultSet rs = null;
		String sql = "select * from emp where id='admin'"; // 결과 1
		EmpVo emp = new EmpVo(); // 
		// 여러명인 경우에는 emp 데이트를 ArrayList에 담아서 출력가능
		try{
			Class.forName(driveName);
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				emp.setId(rs.getString("id"));
				emp.setName(rs.getString("name"));
				emp.setPasswd(rs.getString("passwd"));
				emp.setDesignation(rs.getString("designation"));
				emp.setPhone(rs.getString("phone"));
			}
		}catch(ClassNotFoundException e) {
			
		}catch(SQLException e2) {
			out.println("mysql 쿼리 에러<br>");
		}catch(Exception e3){
			out.println("mysql디비 접속 실패<br>");
		}
	%>
	
	<p>검색된 아이디: <%=emp.getId() %></p>
	<p>검색된 이름: <%=emp.getName() %></p>
	<p>검색된 비밀번호: <%=emp.getPasswd() %></p>
	<p>검색된 직무내용: <%=emp.getDesignation() %></p>
	<p>검색된 전화번호: <%=emp.getPhone() %></p>
</body>
<script></script>
</html>