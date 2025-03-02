<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ page import="prep.prep_DAO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@ page import="java.sql.Date"%>
<%@page import="util.DatabaseUtil"%>
<%@page import="java.util.ArrayList"%>

<% request.setCharacterEncoding("UTF-8"); 
String Cor_Reg_Number = null;

if (request.getParameter("Cor_Reg_Number") != null) {
	Cor_Reg_Number = (String) request.getParameter("Cor_Reg_Number"); 
	}
prep_DAO prepDAO = new prep_DAO();
ArrayList<String> ret = prepDAO.search(Cor_Reg_Number);
if(ret.size() == 1) {
request.setAttribute("Prv_detail_addr", ret.get(0));
request.setAttribute("Cor_Reg_Number", Cor_Reg_Number);
RequestDispatcher rd=request.getRequestDispatcher("../admin/ad_admin1_write.jsp");
rd.forward(request, response);
}
else {
	request.getSession().setAttribute("type", "fail1");
	response.sendRedirect("work.jsp");
}
//System.out.print("성공");
return;
%>