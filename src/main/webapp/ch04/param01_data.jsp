<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<p>	아이디 : <%=request.getParameter("id")%>
	<%
		String name = request.getParameter("name");
	%>
	<p>	decode하지 않은 상태 출력 이 름 : <%=request.getParameter("name")%>
	<p>	이 름 : <%=java.net.URLDecoder.decode(name)%>
</body>
</html>