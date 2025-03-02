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
System.out.println(Cor_Reg_Number);
ArrayList<String> ret = audDAO.print(Cor_Reg_Number);
System.out.println(ret.size());
if(ret.size() == 15) {
request.setAttribute("Aud_Name", ret.get(0));
request.setAttribute("Aud_cor_repre", ret.get(1));
request.setAttribute("Aud_phonenum", ret.get(2));
request.setAttribute("Aud_addr", ret.get(3));
request.setAttribute("Aud_initial_period", ret.get(4));
request.setAttribute("Aud_real_period", ret.get(5));
request.setAttribute("Aud_Tax_List", ret.get(6));
request.setAttribute("Aud_Taxable_Obj", ret.get(7));
request.setAttribute("Aud_Cause_Tax", ret.get(8));
request.setAttribute("Aud_Acq_Date", ret.get(9));
request.setAttribute("Aud_Real_Tax", ret.get(10));
request.setAttribute("Aud_Penalty_No_Report", ret.get(11));
request.setAttribute("Aud_Penalty_No_Pay", ret.get(12));
request.setAttribute("Aud_Sum", ret.get(13));
request.setAttribute("Aud_Etc", ret.get(14));
request.setAttribute("Cor_Reg_Number", Cor_Reg_Number);
RequestDispatcher rd=request.getRequestDispatcher("../admin/ad_admin2.jsp");
rd.forward(request, response);
}
else {
	request.getSession().setAttribute("type", "fail2");
	response.sendRedirect("work.jsp");
}
//System.out.print("성공");
return;
%>