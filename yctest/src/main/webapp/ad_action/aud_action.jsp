<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="aud.aud_DAO"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.Date"%>
<%@ page import="java.text.SimpleDateFormat"%> 
<%@ page import="java.text.DateFormat"%> 

<%
request.setCharacterEncoding("UTF-8");
String Cor_Reg_Number=null;
String Aud_Name=null;
String Aud_cor_repre=null;
String Aud_phonenum=null;
String Aud_addr=null;
Date Aud_initial_period=null;
Date Aud_real_period=null;
String Aud_Tax_List=null;
String Aud_Taxable_Obj=null;
String Aud_Cause_Tax=null;
Date Aud_Acq_Date=null;
String Aud_Real_Tax=null;
String Aud_Penalty_No_Report=null;
String Aud_Penalty_No_Pay=null;
String Aud_Sum=null;
String Aud_Etc=null;
String Aud_File_Name=null;
String Aud_File_Path=null;

if (request.getParameter("Cor_Reg_Number") != null) {	
Cor_Reg_Number = (String) request.getParameter("Cor_Reg_Number"); 
	}
if (request.getParameter("Aud_Name") != null) {
	Aud_Name = (String) request.getParameter("Aud_Name"); 
	} 
if (request.getParameter("Aud_cor_repre") != null) {
	Aud_cor_repre = (String) request.getParameter("Aud_cor_repre");
}
if (request.getParameter("Aud_phonenum") != null) {
	Aud_phonenum = (String) request.getParameter("Aud_phonenum");
}
if (request.getParameter("Aud_addr") != null) {
	Aud_addr = (String) request.getParameter("Aud_addr");
}
if (request.getParameter("Aud_initial_period") != null) {
	String tmp = request.getParameter("Aud_initial_period");
	Aud_initial_period = Date.valueOf(tmp);
}
if (request.getParameter("Aud_real_period") != null) {
	String tmp = request.getParameter("Aud_real_period");
	Aud_real_period = Date.valueOf(tmp);
}
if (request.getParameter("Aud_Tax_List") != null) {
	Aud_Tax_List = (String) request.getParameter("Aud_Tax_List");
}
if (request.getParameter("Aud_Taxable_Obj") != null) {
	Aud_Taxable_Obj = (String) request.getParameter("Aud_Taxable_Obj");
}
if (request.getParameter("Aud_Cause_Tax") != null) {
	Aud_Cause_Tax = (String) request.getParameter("Aud_Cause_Tax");
}
if (request.getParameter("Aud_Acq_Date") != null) {
	String tmp = request.getParameter("Aud_Acq_Date");
	Aud_Acq_Date = Date.valueOf(tmp);
}
if (request.getParameter("Aud_Real_Tax") != null) {
	Aud_Real_Tax = (String) request.getParameter("Aud_Real_Tax");
}
if (request.getParameter("Aud_Penalty_No_Report") != null) {
	Aud_Penalty_No_Report = (String) request.getParameter("Aud_Penalty_No_Report");
}
if (request.getParameter("Aud_Penalty_No_Pay") != null) {
	Aud_Penalty_No_Pay = (String) request.getParameter("Aud_Penalty_No_Pay");
}
if (request.getParameter("Aud_Sum") != null) {
	Aud_Sum = (String) request.getParameter("Aud_Sum");
}
if (request.getParameter("Aud_Etc") != null) {
	Aud_Etc = (String) request.getParameter("Aud_Etc");
}
aud_DAO audDAO = new aud_DAO();
int ret = aud_DAO.join(Cor_Reg_Number, Aud_Name, Aud_cor_repre,
		Aud_phonenum, Aud_addr,
		Aud_initial_period, Aud_real_period,
		Aud_Tax_List, Aud_Taxable_Obj,
		Aud_Cause_Tax, Aud_Acq_Date, Aud_Real_Tax, Aud_Penalty_No_Report, Aud_Penalty_No_Pay,
		Aud_Sum, Aud_Etc, Aud_File_Name, Aud_File_Path);
if(ret==1){
	request.getSession().setAttribute("type", "main");
  	response.sendRedirect("work.jsp");
	return;
}  
%>
			