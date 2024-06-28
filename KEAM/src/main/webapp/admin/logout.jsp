<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // 세션을 가져와서 invalidate()를 호출하여 세션을 무효화합니다.
    session.invalidate();
%>
<script>
    window.location.replace("../index.jsp"); // 예시: 메인 페이지로 리다이렉션
</script>
