<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="prep.prep_DAO"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.Date"%>
<%@ page import="java.text.SimpleDateFormat"%> 
<%@ page import="java.text.DateFormat"%> 

<%
request.setCharacterEncoding("UTF-8");
String Cor_Reg_Number=null;
String Prep_addr=null;
String Prep_Tax_List=null;
String Prep_Taxable_Obj=null;
String Prep_Cause_Tax=null;
Date Prep_Regist_Date=null;
String Prep_Tax_Amount=null;
String Prep_Penalty_No_Report=null;
String Prep_Penalty_No_Pay=null;
String Prep_Sum=null;

if (request.getParameter("Cor_Reg_Number") != null) {	
Cor_Reg_Number = (String) request.getParameter("Cor_Reg_Number"); 
	}
if (request.getParameter("Prep_addr") != null) {
	Prep_addr = (String) request.getParameter("Prep_addr"); 
	} 
if (request.getParameter("Prep_Tax_List") != null) {
	Prep_Tax_List = (String) request.getParameter("Prep_Tax_List");
}
if (request.getParameter("Prep_Taxable_Obj") != null) {
	Prep_Taxable_Obj = (String) request.getParameter("Prep_Taxable_Obj");
}
if (request.getParameter("Prep_Cause_Tax") != null) {
	Prep_Cause_Tax = (String) request.getParameter("Prep_Cause_Tax");
}
if (request.getParameter("Prep_Regist_Date") != null) {
	String tmp = request.getParameter("Prep_Regist_Date");
	Prep_Regist_Date = Date.valueOf(tmp);
}
if (request.getParameter("Prep_Tax_Amount") != null) {
	Prep_Tax_Amount = (String) request.getParameter("Prep_Tax_Amount");
}
if (request.getParameter("Prep_Penalty_No_Report") != null) {
	Prep_Penalty_No_Report = (String) request.getParameter("Prep_Penalty_No_Report");
}
if (request.getParameter("Prep_Penalty_No_Pay") != null) {
	Prep_Penalty_No_Pay = (String) request.getParameter("Prep_Penalty_No_Pay");
}
if (request.getParameter("Prep_Sum") != null && request.getParameter("Prep_Sum")!="") {
	Prep_Sum = (String) request.getParameter("Prep_Sum");
}
prep_DAO prepDAO = new prep_DAO();
int ret = prep_DAO.join(Cor_Reg_Number, Prep_addr, Prep_Tax_List,
		Prep_Taxable_Obj, Prep_Cause_Tax,
		Prep_Regist_Date, Prep_Tax_Amount,
		Prep_Penalty_No_Report, Prep_Penalty_No_Pay,
		Prep_Sum);
if(ret==1){
	request.getSession().setAttribute("type", "main");
  	response.sendRedirect("work.jsp");
	return;
}  
%>
			