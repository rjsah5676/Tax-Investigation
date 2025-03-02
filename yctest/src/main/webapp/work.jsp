<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>법인세무조사 인터넷신고시스템</title>
</head>
<body>
	<%
		String type = (String) request.getSession().getAttribute("type");
		session.removeAttribute("type");
		request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("pageName");
        String action = request.getParameter("actionName");
        if(type != null) {
        	if(type == "qna_submit") pageContext.forward("views/sc_qna.jsp");
        	if(type == "main") pageContext.forward("");
        	if(type == "delete") {
        		request.setAttribute("fail", "fail");
        		RequestDispatcher rd=request.getRequestDispatcher("views/delete_member.jsp");
        		rd.forward(request, response);
        	}
        	if(type == "comp_write") pageContext.forward("views/fr_compstat_write.jsp");
        }
        else if(action != null) {
        	pageContext.forward(action);
        }
        else {
	        if(name == null) pageContext.forward("");
	        else pageContext.forward(name);
        }
    %>	
</body>
</html>