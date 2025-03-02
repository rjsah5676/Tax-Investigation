<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="archives.form_archives_DAO"%>
<%@ page import="archives.archivesVO"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.Date"%>
<%@ page import="java.text.SimpleDateFormat"%> 
<%@ page import="java.text.DateFormat"%> 
<%@ page import="java.util.ArrayList" %>
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
request.setCharacterEncoding("UTF-8");

form_archives_DAO archivesDAO = new form_archives_DAO();
String boardNum=null;
if (request.getParameter("boardNum") != null) {
	boardNum = (String) request.getParameter("boardNum"); 
} 
archivesVO ret = archivesDAO.loadBoard(boardNum);
request.setAttribute("ret_title", ret.getForm_title());
request.setAttribute("ret_file", ret.getForm_file());
request.setAttribute("ret_regisdate", ret.getForm_regisdate());
request.setAttribute("ret_content", ret.getForm_content());
request.setAttribute("ret_n", ret.getForm_id());
RequestDispatcher rd=request.getRequestDispatcher("../views/iv_archives_detail.jsp");
rd.forward(request, response); 
//response.sendRedirect("work.jsp?pageName=views/fr_localtax_special.jsp");
%>
</body>
</html>