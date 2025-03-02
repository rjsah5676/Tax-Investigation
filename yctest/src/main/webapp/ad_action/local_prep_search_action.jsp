<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ page import="local_prep.local_prep_DAO"%>
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
local_prep_DAO local_prepDAO = new local_prep_DAO();
ArrayList<String> ret = local_prepDAO.search(Cor_Reg_Number);
if(ret.size() == 2) {
request.setAttribute("Prv_cor_repre", ret.get(0));
request.setAttribute("Prv_company_reg_num", ret.get(1));
request.setAttribute("Cor_Reg_Number", Cor_Reg_Number);
RequestDispatcher rd=request.getRequestDispatcher("../admin/ad_admin3_write.jsp");
rd.forward(request, response);
}
else {
	request.getSession().setAttribute("type", "fail3");
	response.sendRedirect("work.jsp");
}
//System.out.print("성공");
return;
%>