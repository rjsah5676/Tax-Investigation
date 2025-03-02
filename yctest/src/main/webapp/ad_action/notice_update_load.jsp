<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ page import="notice.cuscenter_notice_DAO"%>
<%@ page import="notice.noticeVO"%>
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
cuscenter_notice_DAO noticeDAO = new cuscenter_notice_DAO();
String updateNum=null;
if (request.getParameter("updateNum") != null) {
	updateNum = (String) request.getParameter("updateNum"); 
}
ArrayList<String> ret = new ArrayList<String>(); 
ret = noticeDAO.loadBoard(updateNum);
request.setAttribute("boardNum", ret.get(9));
request.setAttribute("title", ret.get(0));
request.setAttribute("date", ret.get(1));
request.setAttribute("content", ret.get(4));
request.setAttribute("file", ret.get(3));
RequestDispatcher rd=request.getRequestDispatcher("../admin/ad_admin_notice_update.jsp");
rd.forward(request, response); 
//response.sendRedirect("work.jsp?pageName=views/fr_localtax_special.jsp");
%>
</body>
</html>