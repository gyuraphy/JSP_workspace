<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<%	/* 페이지는 해당 객체를 삭제하는 코드 */
		Cookie[] cookies = request.getCookies();

		for (int i = 0; i < cookies.length; i++) {
			// 반복문으로 각각의 쿠키의 유효시간을 0으로 설정해서 삭제하는 설정
			cookies[i].setMaxAge(0);
			// 반드시, 응답 객체에 적용해야 합니다!
			response.addCookie(cookies[i]);
		}
		response.sendRedirect("cookie02.jsp");
	%>
</body>
</html>