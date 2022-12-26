<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isELIgnored="false"%>
<!-- false 무시 안함. 설정 적용(EL 표기법을 적용함). -->
<!-- true 무시 했어요. 설정이 적용이 안됨(EL 표기법을 적용 안함). -->
<%-- ${} 왼쪽 형식이 EL 표기법. 해당 값을 불러올 때, 특정 문법을 간단히 표현시으로 나타내는 기법. --%>
<!-- 주석 단축키 ctrl + shift + c 와 ctrl + shift + / 의 차이! -->
<!-- 가독성이 좀 더 문법을 최소화해서 이용하려함 -->
<!-- 예) jQeery, if ~ else 문법 -> 삼항 다항식, 간단히 표현하기 위한 의도! -->
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<%
		request.setAttribute("RequestAttribute", "request 내장 객체");
	%>
	${requestScope.RequestAttribute}
</body>
</html>