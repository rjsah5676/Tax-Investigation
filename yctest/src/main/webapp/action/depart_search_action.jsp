<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ page import="compstat.compstat_DAO"%>
<%@ page import="compstat.compstat_VO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@ page import="java.sql.Date"%>
<%@page import="util.DatabaseUtil"%>
<%@page import="java.util.ArrayList"%>

<% request.setCharacterEncoding("UTF-8"); 
String compNum = null;

if (request.getParameter("comp_option") != null) {
	compNum = (String) request.getParameter("comp_option"); 
}

compstat_DAO compstatDAO = new compstat_DAO();
ArrayList<compstat_VO> ret = compstatDAO.getListByCompNum(compNum);
if(ret.size() == 1) {
request.setAttribute("isSearch", "ok");
request.setAttribute("comp_num", compNum);
RequestDispatcher rd=request.getRequestDispatcher("../views/fr_depart_resitax.jsp");
rd.forward(request, response);
}
else {
	response.sendRedirect("/");
}
//System.out.print("성공");
return;
%>