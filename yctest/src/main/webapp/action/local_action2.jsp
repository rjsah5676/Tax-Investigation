<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="local.localtax_special_DAO"%>
<%@ page import="local.localtax_special_VO"%>
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
String Cor_Reg_Number=null;

if (request.getParameter("Cor_Reg_Number") != null) {
	Cor_Reg_Number = (String) request.getParameter("Cor_Reg_Number"); 
}

localtax_special_DAO localDAO = new localtax_special_DAO();
ArrayList ret = new ArrayList();
ret = localDAO.init(Cor_Reg_Number);
//System.out.println(ret.get(0));
request.setAttribute("ret", ret.get(0));
RequestDispatcher rd=request.getRequestDispatcher("../views/fr_localtax_special.jsp");
rd.forward(request, response);
//response.sendRedirect("work.jsp?pageName=views/fr_localtax_special.jsp");
%>
</body>
</html>