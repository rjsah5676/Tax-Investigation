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
String boardNum=null;
if (request.getParameter("boardNum") != null) {
	boardNum = (String) request.getParameter("boardNum"); 
}
ArrayList<String> ret = new ArrayList<String>(); 
ret = noticeDAO.loadBoard(boardNum);
request.setAttribute("ret", ret.get(0));
request.setAttribute("ret2", ret.get(1));
request.setAttribute("ret3", ret.get(2));
request.setAttribute("ret4", ret.get(3));
request.setAttribute("ret5", ret.get(4));
request.setAttribute("ret_bef_num", ret.get(5));
request.setAttribute("ret_bef_title", ret.get(6));
request.setAttribute("ret_aft_num", ret.get(7));
request.setAttribute("ret_aft_title", ret.get(8));
request.setAttribute("ret_n", ret.get(9));
request.setAttribute("ret_cnt", ret.get(10));
RequestDispatcher rd=request.getRequestDispatcher("../views/sc_notice_detail.jsp");
rd.forward(request, response); 
//response.sendRedirect("work.jsp?pageName=views/fr_localtax_special.jsp");
%>
</body>
</html>