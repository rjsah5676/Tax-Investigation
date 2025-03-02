<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %> --%>
<%@ page import="java.io.File" %>
<%@ page import = "java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<title>영천시 법인세무조사 관리자</title>
</head>
<body>
    <%
	    String type = (String) request.getSession().getAttribute("type");
		session.removeAttribute("type");
		request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("pageName");
        String action = request.getParameter("actionName");
        if(type != null) {
        	if(type == "main") pageContext.forward("");
        	if(type == "qna_submit") pageContext.forward("ad_admin_qna.jsp");
        	if(type == "ques_submit") pageContext.forward("ad_admin_ques.jsp");
        	if(type == "notice_submit") pageContext.forward("ad_admin_notice.jsp");
        	if(type == "charge_submit") pageContext.forward("ad_admin_charge.jsp");
        	if(type == "fail1") {
        		request.setAttribute("fail", "fail");
        		RequestDispatcher rd=request.getRequestDispatcher("ad_admin1_write.jsp");
        		rd.forward(request, response);
        	}
        	if(type == "fail2") {
        		request.setAttribute("fail", "fail");
        		RequestDispatcher rd=request.getRequestDispatcher("ad_admin2_write.jsp");
        		rd.forward(request, response);
        	}
        	if(type == "fail3") {
        		request.setAttribute("fail", "fail");
        		RequestDispatcher rd=request.getRequestDispatcher("ad_admin3_write.jsp");
        		rd.forward(request, response);
        	}
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