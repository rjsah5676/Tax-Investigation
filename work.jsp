<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%  request.setCharacterEncoding("EUC-KR");
        String name = request.getParameter("pageName");
        pageContext.forward(name);
    %>	
</body>
</html>