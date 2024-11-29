<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 정보 확인</title>
</head>
<body>
	<%
		// 쿠키 가져오기 
		Cookie[] cookies = request.getCookies();  // 쿠키 객체의 배열 타입으로 반환 
		
		//System.out.println(cookies[0].getName());
		//System.out.println(cookies[0].getValue());
		
		//out.println(cookies[0].getValue()+"님 로그인 중입니다.");
		
		for(int i=0;i<cookies.length;i++) {
			out.println("쿠키의 이름:"+cookies[i].getName()+"<br>"); // 쿠키의 이름
			out.println("쿠키의 값:"+cookies[i].getValue()+"<br>"); // 쿠키의 값		
			
			if(cookies[i].getName().equals("cookieID")) {
				out.println(cookies[i].getValue()+"님 로그인 중입니다."+"<br>"); // 쿠키의 이름				
			}
		}
	%>
	<br><br>
	<a href="logout.jst">로그아웃</a>
</body>
</html>