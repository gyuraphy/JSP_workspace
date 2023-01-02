<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Enumeration"%>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
		String name;
		String value;
		
		// 여러객체를 담아 두는 그릇 : Enumeration
		// 보통 반복 패턴을 이용할 때, 주로 사용
		// Iterartor 인터페이스, 같은 이유로 사용
		Enumeration en = session.getAttributeNames();
		int i = 0;

		while (en.hasMoreElements()) {
			// hasMoreElements : 다음 원소가 있나요?
					// 있어요! > nextElement 각원소 값을 문자열로 출력 후, 재할당!
			i++;
			name = en.nextElement().toString();
			// name 이라는 키에 해당하는 값을 불러와서, 문자열로 출력 후, 재할당!
			value = session.getAttribute(name).toString();
			out.println("설정된 세션의 속성 이름 [ " + i + " ] : " + name + "<br>");
			out.println("설정된 세션의 속성 값 [ " + i + " ] : " + value + "<br>");
		}
	%>
</body>
</html>