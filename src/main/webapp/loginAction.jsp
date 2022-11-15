<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	// 1. 요정분석 : 로그인 사용할 아이디와 비밀번호 입력받아 사용
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	// 2. 요청처리 : 1에서 받아온 내용과 db와 같은지 확인
	String dbUserId = "goodee";
	String dbUserPw = "1234";
	
	String result = null;
	if(id.equals(dbUserId) && pw.equals(dbUserPw)){
		result = "success";
		// 로그인 성공 정보를 세션 공간에 저장
		session.setAttribute("x","y");
		// ("x","y") -> 동일 x = "y";
	} else {
		result = "fail";
	}
	System.out.println(result);
	
	// 3. 출력
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<div>로그인 성공 여부 : <span><%=result %></span></div>
		<div><a href="<%=request.getContextPath()%>/loginTest.jsp">로그인 확인 페이지</a></div>
		<!-- 1.로그인 성공일 때, 2.로그인 실패일 때 -->
	</body>
</html>