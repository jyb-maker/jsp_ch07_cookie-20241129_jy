<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
			
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		if(mid.equals("tiger") && mpw.equals("12345")) { // 참 -> 로그인 과정 진행
			session.setAttribute("sessionID", mid);  // 세션 속성 생성 
			session.setAttribute("validMem", "yes");  // 세션 속성 생성 			
			session.setAttribute("sessionPW", mpw);  // 세션 속성 생성 
			
			Cookie cookie1 = new Cookie("cookieID", mid); //쿠키1 생성 
			Cookie cookie2 = new Cookie("log_in","yes"); //쿠키2 생성 		
			
			//쿠키 유효 시간 설정
			cookie1.setMaxAge(60*60*24); // 60초*60분*24시간동안 유효한 지속 쿠키로 전환 
			
			response.addCookie(cookie1); // ***생성된 쿠키를 클라이언트 웹브라우저로 보내기*** response!!! 
			response.addCookie(cookie2); // ***생성된 쿠키를 클라이언트 웹브라우저로 보내기*** response!!!	
			
			out.println("로그인 성공하셨습니다.");
		} else {
			response.sendRedirect("loginFail.jsp"); // 로그인 실패시 강제로 login 페이지로 이동
		}
		
	%>
	<br><br>
	<a href="myinfo.jsp">내 정보 보기</a>

</body>
</html>