<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ page import="aud.aud_DAO"%>
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
aud_DAO audDAO = new aud_DAO();
ArrayList<String> ret = audDAO.search(Cor_Reg_Number);
if(ret.size() == 3) {
request.setAttribute("Prv_detail_addr", ret.get(0));
request.setAttribute("Cor_Reg_Number", Cor_Reg_Number);
request.setAttribute("Prv_cor_repre", ret.get(1));
request.setAttribute("Prv_phonenum", ret.get(2));
RequestDispatcher rd=request.getRequestDispatcher("../admin/ad_admin2_write.jsp");
rd.forward(request, response);
}
else {
	request.getSession().setAttribute("type", "fail2");
	response.sendRedirect("work.jsp");
}
//System.out.print("성공");
return;
%>