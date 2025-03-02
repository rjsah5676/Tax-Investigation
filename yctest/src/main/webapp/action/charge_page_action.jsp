<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ page import="charge.cuscenter_charge_DAO"%>
<%@ page import="charge.chargeVO"%>
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
int pageNumber=0;
String search_info="";
String select_option="";
if (request.getParameter("pageNumber") != null) {
	pageNumber =  Integer.parseInt(request.getParameter("pageNumber")); 
}
request.setAttribute("pageNumber", pageNumber);
if (request.getParameter("search_info") != null) {
	search_info =  request.getParameter("search_info");
}
request.setAttribute("search_info", search_info);
if (request.getParameter("select_option") != null) {
	select_option =  request.getParameter("select_option");
}
request.setAttribute("select_option", select_option);
RequestDispatcher rd=request.getRequestDispatcher("../views/sc_manager.jsp");
rd.forward(request, response); 
//response.sendRedirect("work.jsp?pageName=views/fr_localtax_special.jsp");
%>
</body>
</html>