<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<html>
<head>
<title>JSTL</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
	%>
	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3306/WebMarketDB"
		driver="com.mysql.jdbc.Driver" user="root" password="k404" />

	<!-- excuteUpdate 와 비슷한 역할을 하는 속성입니다 --> 
	<sql:update dataSource="${dataSource}" var="resultSet">
		INSERT INTO member2(id, name, passwd) VALUES (?,?,?)
		<sql:param value="<%=id%>" />
		<sql:param value="<%=name%>" />
		<sql:param value="<%=passwd%>" />
	</sql:update>
	<!-- 해당 url 주소로 이동하는 속성 -->
	<c:import var="url" url="sql01.jsp"  />
	${url}
</body>
</html>