<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃2</title>
</head>
<body>
	<h2>모든 쿠키 삭제</h2>
	<%
		Cookie[] cookies = request.getCookies();
		
	for(int i=0;i<cookies.length;i++) {			
			cookies[i].setMaxAge(0); // 쿠키의 유효시간을 0으로 세팅 -> 해당 쿠키 객체 삭제 
			response.addCookie(cookies[i]); // 유효시간을 0으로 세팅한 쿠키 객체를 클라이언트에게 재전송
		
	}
	
	%>
	<a href="myinfo.jsp">내정보 쿠기 확인 가기</a>

</body>
</html>