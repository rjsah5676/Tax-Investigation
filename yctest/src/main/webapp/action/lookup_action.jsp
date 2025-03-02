<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ page import="QnA.cuscenter_qna_DAO"%>
<%@ page import="QnA.qnaVO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@ page import="java.sql.Date"%>
<%@page import="util.DatabaseUtil"%>
<%@page import="java.util.ArrayList" %>
<%@ page import="corpstat.corpstat_DAO"%>
<%@ page import="corpstat.corpstat_VO"%>
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
String corpselect = null;
String year = null;
if (request.getParameter("corpselect") != null) {
	corpselect =  request.getParameter("corpselect"); 
}
if (request.getParameter("year") != null) {
	year =  request.getParameter("year"); 
}
corpstat_DAO corpDAO = new corpstat_DAO();
ArrayList<corpstat_VO> corpList = corpstat_DAO.getList(corpselect);
/* 일단 0번 인덱스만 가지고 오도록 구현함 */
corpstat_VO now = null;
String Jurisdic = null;
String Sur_year = null;
String Invest_pp = null;
String Cor_Reg_Number = null;
if(corpList.get(0).getSur_year().equals(year)){
	now = corpList.get(0);
	Jurisdic = now.getJurisdic();
	Sur_year = now.getSur_year();
	Invest_pp = now.getInvest_pp();
	Cor_Reg_Number = now.getCor_Reg_Number();
}
request.setAttribute("Jurisdic", Jurisdic);
request.setAttribute("Sur_year", Sur_year);
request.setAttribute("Invest_pp", Invest_pp);
request.setAttribute("Cor_Reg_Number", Cor_Reg_Number);
RequestDispatcher rd=request.getRequestDispatcher("../views/lr_lookup.jsp");
rd.forward(request, response); 
//response.sendRedirect("work.jsp?pageName=views/fr_localtax_special.jsp");
%>
</body>
</html>