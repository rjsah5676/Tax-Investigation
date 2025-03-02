<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ page import="archives.form_archives_DAO"%>
<%@ page import="archives.archivesVO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@ page import="java.sql.Date"%>
<%@page import="util.DatabaseUtil"%>
<%@page import="java.util.ArrayList" %>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>YC_login test</title>
    <link rel="stylesheet" type="text/css" href="css/public.css">
    <link rel="stylesheet" type="text/css" href="css/ac_findaccount.css">
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="js/public.js"></script>
</head>
<body>
<%
form_archives_DAO archivesDAO = new form_archives_DAO();
String updateNum=null;
if (request.getParameter("updateNum") != null) {
	updateNum = (String) request.getParameter("updateNum"); 
}
archivesVO ret = archivesDAO.loadBoard(updateNum);
request.setAttribute("ret_n", ret.getForm_id());
request.setAttribute("ret_title", ret.getForm_title());
request.setAttribute("ret_regisdate", ret.getForm_regisdate());
request.setAttribute("ret_content", ret.getForm_content());
request.setAttribute("ret_file", ret.getForm_file());
RequestDispatcher rd=request.getRequestDispatcher("../admin/ad_admin_archives_update.jsp");
rd.forward(request, response); 
//response.sendRedirect("work.jsp?pageName=views/fr_localtax_special.jsp");
%>
</body>
</html>