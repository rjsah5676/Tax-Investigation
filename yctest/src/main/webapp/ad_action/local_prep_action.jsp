<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="local_prep.local_prep_DAO"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.Date"%>
<%@ page import="java.text.SimpleDateFormat"%> 
<%@ page import="java.text.DateFormat"%> 

<%
request.setCharacterEncoding("UTF-8");
String Cor_Reg_Number=null;
String Lp_Name=null;
String Lp_cor_repre=null;
String Lp_company_reg_num=null;
String Lp_Prep_Tax_List=null;
String Lp_Taxable_Obj=null;
String Lp_Tax_Reason=null;
Date Lp_Get_Date=null;
String Lp_Tax_Standard=null;
String Lp_Prep_Tax_Rate=null;
String Lp_Tax_Schedule=null;
String Lp_Real_Tax=null;
String Lp_No_Report=null;
String Lp_insincerity=null;
String Lp_Sum=null;
String Lp_Prep_Law=null;
String Lp_Penalty_Tax_List=null;
String Lp_Penalty_Division=null;
String Lp_Target_Price=null;
String Lp_Penalty_Tax_Rate=null;
String Lp_Reduction_Price=null;
String Lp_Penalty_Price=null;
String Lp_Penalty_Law=null;
String Lp_File_Name=null;
String Lp_File_Path=null;


if (request.getParameter("Cor_Reg_Number") != null) {	
Cor_Reg_Number = (String) request.getParameter("Cor_Reg_Number"); 
	}
if (request.getParameter("Lp_Name") != null) {
	Lp_Name = (String) request.getParameter("Lp_Name"); 
	} 
if (request.getParameter("Lp_cor_repre") != null) {
	Lp_cor_repre = (String) request.getParameter("Lp_cor_repre");
}
if (request.getParameter("Lp_company_reg_num") != null) {
	Lp_company_reg_num = (String) request.getParameter("Lp_company_reg_num");
}
if (request.getParameter("Lp_Prep_Tax_List") != null) {
	Lp_Prep_Tax_List = (String) request.getParameter("Lp_Prep_Tax_List");
}
if (request.getParameter("Lp_Taxable_Obj") != null) {
	Lp_Taxable_Obj = (String) request.getParameter("Lp_Taxable_Obj");
}
if (request.getParameter("Lp_Tax_Reason") != null) {
	Lp_Tax_Reason = (String) request.getParameter("Lp_Tax_Reason");
}
if (request.getParameter("Lp_Get_Date") != null) {
	String tmp = request.getParameter("Lp_Get_Date");
	Lp_Get_Date = Date.valueOf(tmp);
}
if (request.getParameter("Lp_Tax_Standard") != null) {
	Lp_Tax_Standard = (String) request.getParameter("Lp_Tax_Standard");
}
if (request.getParameter("Lp_Prep_Tax_Rate") != null) {
	Lp_Prep_Tax_Rate = (String) request.getParameter("Lp_Prep_Tax_Rate");
}
if (request.getParameter("Lp_Tax_Schedule") != null) {
	Lp_Tax_Schedule = (String) request.getParameter("Lp_Tax_Schedule");
}
if (request.getParameter("Lp_Real_Tax") != null) {
	Lp_Real_Tax = (String) request.getParameter("Lp_Real_Tax");
}
if (request.getParameter("Lp_No_Report") != null) {
	Lp_No_Report = (String) request.getParameter("Lp_No_Report");
}
if (request.getParameter("Lp_insincerity") != null) {
	Lp_insincerity = (String) request.getParameter("Lp_insincerity");
}
if (request.getParameter("Lp_Sum") != null) {
	Lp_Sum = (String) request.getParameter("Lp_Sum");
}
if (request.getParameter("Lp_Prep_Law") != null) {
	Lp_Prep_Law = (String) request.getParameter("Lp_Prep_Law");
}
if (request.getParameter("Lp_Penalty_Tax_List") != null) {
	Lp_Penalty_Tax_List = (String) request.getParameter("Lp_Penalty_Tax_List");
}
if (request.getParameter("Lp_Penalty_Division") != null) {
	Lp_Penalty_Division = (String) request.getParameter("Lp_Penalty_Division");
}
if (request.getParameter("Lp_Target_Price") != null) {
	Lp_Target_Price = (String) request.getParameter("Lp_Target_Price");
}
if (request.getParameter("Lp_Penalty_Tax_Rate") != null) {
	Lp_Penalty_Tax_Rate = (String) request.getParameter("Lp_Penalty_Tax_Rate");
}
if (request.getParameter("Lp_Reduction_Price") != null) {
	Lp_Reduction_Price = (String) request.getParameter("Lp_Reduction_Price");
}
if (request.getParameter("Lp_Penalty_Price") != null) {
	Lp_Penalty_Price = (String) request.getParameter("Lp_Penalty_Price");
}
if (request.getParameter("Lp_Penalty_Law") != null) {
	Lp_Penalty_Law = (String) request.getParameter("Lp_Penalty_Law");
}
local_prep_DAO local_prepDAO = new local_prep_DAO();
int ret = local_prep_DAO.join(Cor_Reg_Number, Lp_Name, Lp_cor_repre,
		Lp_company_reg_num, Lp_Prep_Tax_List,
		Lp_Taxable_Obj, Lp_Tax_Reason,
		Lp_Get_Date, Lp_Tax_Standard,
		Lp_Prep_Tax_Rate, Lp_Tax_Schedule, Lp_Real_Tax,
		Lp_No_Report, Lp_insincerity, Lp_Sum,
		Lp_Prep_Law, Lp_Penalty_Tax_List, Lp_Penalty_Division,
		Lp_Target_Price, Lp_Penalty_Tax_Rate, Lp_Reduction_Price,
		Lp_Penalty_Price, Lp_Penalty_Law, Lp_File_Name, Lp_File_Path);
if(ret==1){
	request.getSession().setAttribute("type", "main");
  	response.sendRedirect("work.jsp");
	return;
}  
%>
			