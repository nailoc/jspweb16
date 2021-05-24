<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.hk.jsp.vo.UserScoreVo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jspweb13</title>
<link rel="stylesheet" href="css/style.css"></link>
<%@ page import="com.hk.jsp.util.UserScoreBean" %>
<style></style>
</head>
<body>
	<h3>사용자정의 클래스 연습</h3>
	<%
		//성적에 대한 사용자 정의 클래스
		UserScoreVo john = new UserScoreVo();
		//john 에 대한 정보 대입하고
		john.setName("john");
		john.setEng(90);
		john.setMat(80);
		john.setSci(70);
		
		//john의 성적합계와 평균을 출력하시오
		int sum = john.getEng()+john.getMat()+john.getSci();
		double avg = sum / 3.0;
		out.println("john의 성적합계:"+sum+"<br>");
		out.println("john의 성적평균:"+avg+"<br>");
		
		//UserScoreBean 호출해서 결과출력하시오
		UserScoreBean usb = new UserScoreBean();
		int sum2 = usb.CalculateSum(john);
		double avg2 = usb.CalculateAvg();
		out.println("john의 성적합계:"+sum2+"<br>");
		out.println("john의 성적평균:"+avg2+"<br>");
	%>
</body>
<script></script>
</html>