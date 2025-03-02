<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="agent.agentDAO"%>
<%@ page import="agent.agentVO"%>
<%@ page import="company.company_table_DAO"%>
<%@ page import="company.companyVO"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.Date"%>
<%@ page import="java.text.SimpleDateFormat"%> 
<%@ page import="java.text.DateFormat"%> 

<%
request.setCharacterEncoding("UTF-8");
String Cor_Reg_Number=null;
String Agent_Cor_Reg_Number=null;
Date end_date=null;

if (request.getParameter("Cor_Reg_Number") != null) {	
	Cor_Reg_Number = (String) session.getAttribute("Cor_Reg_Number"); 
	}
if (request.getParameter("Prv_company_reg_num1") != null) {
	Agent_Cor_Reg_Number = (String) request.getParameter("Prv_company_reg_num1"); 
	} 
if (request.getParameter("Prv_company_reg_num2") != null) {
	Agent_Cor_Reg_Number += (String) request.getParameter("Prv_company_reg_num2"); 
	} 
if (request.getParameter("Prv_company_reg_num3") != null) {
	Agent_Cor_Reg_Number += (String) request.getParameter("Prv_company_reg_num3"); 
	} 
if (request.getParameter("end_date") != null) {
	String tmp = request.getParameter("end_date");
	end_date = Date.valueOf(tmp);
}

agentDAO agentDAO = new agentDAO();
int ret = agentDAO.join(Cor_Reg_Number, Agent_Cor_Reg_Number, end_date);
if(ret==1){
	request.getSession().setAttribute("type", "main");
  	response.sendRedirect("work.jsp");
	return;
}  
%>
			