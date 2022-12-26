<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
<!-- 스프링 컨테이너 객체에 있음 -->
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request" />
	<p>	아이디 : <%=person.getId()%>
	<p>	이 름 : <%=person.getName()%>
</body>
</html>