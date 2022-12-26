<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
<!-- 전역 static, 공유자원 -->
	<%!String makeItLower(String data) {
		return data.toLowerCase();
	}%>
	<!-- 내장객체 out에서 println 메서드를 이용해서 문자열로 해당 브라우저에 출력 중. -->
	<!--  -->
	<%
		out.println(makeItLower("Hello World"));
	%>
</body>
</html>