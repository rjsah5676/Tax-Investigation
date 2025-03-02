<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="local.localtax_special_DAO"%>
<%@ page import="local.localtax_special_VO"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.Date"%>
<%@ page import="java.text.SimpleDateFormat"%> 
<%@ page import="java.text.DateFormat"%> 

<%
request.setCharacterEncoding("UTF-8");
String Cor_Reg_Number=null;
String Cor_name =null;
String Jurisdic=null;
String Sur_year=null;
String Invest_pp=null;
String Bus_infor=null;
int Bus_year=0;
String Bus_name_1=null;
String Bus_name_2=null;
String Intax_pay=null;
String Work_c=null;
String Retire_c=null;
String Alloc_c=null;
String Inter_c=null;
String Bus_c=null;
String Cortax_law_c=null;
String Etc_c=null;
String Out_locIn_tax=null;
String Prep_tax=null;
Date Pay_date = null;

if (request.getParameter("Cor_Reg_Number") != null) {	
Cor_Reg_Number = (String) request.getParameter("Cor_Reg_Number"); 
	}
if (request.getParameter("Cor_name") != null) {
	Cor_name = (String) request.getParameter("Cor_name"); 
	} 
if (request.getParameter("Jurisdic") != null) {
	Jurisdic = (String) request.getParameter("Jurisdic"); 
	} 
if (request.getParameter("Sur_year") != null) {
	Sur_year = (String) request.getParameter("Sur_year"); 
	} 
if (request.getParameter("Invest_pp") != null) {
	Invest_pp = (String) request.getParameter("Invest_pp"); 
	} 
if (request.getParameter("Bus_infor") != null) {
	Bus_infor = (String) request.getParameter("Bus_infor"); 
	} 
if (request.getParameter("Bus_year") != null) {
	Bus_year = Integer.parseInt(request.getParameter("Bus_year")); 
	} 
if (request.getParameter("Bus_name_1") != null) {
	Bus_name_1 = (String) request.getParameter("Bus_name_1"); 
	} 
if (request.getParameter("Bus_name_2") != null) {
	Bus_name_2 = (String) request.getParameter("Bus_name_2"); 
	} 
if (request.getParameter("Intax_pay") != null) {
	Intax_pay = (String) request.getParameter("Intax_pay"); 
	} 
if (request.getParameter("Work_c") != null) {
	Work_c = (String) request.getParameter("Work_c");
}
if (request.getParameter("Retire_c") != null) {
	Retire_c = (String) request.getParameter("Retire_c");
}
if (request.getParameter("Alloc_c") != null) {
	Alloc_c = (String) request.getParameter("Alloc_c");
}
if (request.getParameter("Inter_c") != null) {
	Inter_c = (String) request.getParameter("Inter_c");
}
if (request.getParameter("Bus_c") != null) {
	Bus_c = (String) request.getParameter("Bus_c");
}
if (request.getParameter("Cortax_law_c") != null) {
	Cortax_law_c = (String) request.getParameter("Cortax_law_c");
}
if (request.getParameter("Etc_c") != null) {
	Etc_c = (String) request.getParameter("Etc_c");
}
if (request.getParameter("Out_locIn_tax") != null) {
	Out_locIn_tax = (String) request.getParameter("Out_locIn_tax");
}
if (request.getParameter("Prep_tax") != null) {
	Prep_tax = (String) request.getParameter("Prep_tax");
}
if (request.getParameter("Pay_date") != null) {
	String tmp = request.getParameter("Pay_date");
	Pay_date = Date.valueOf(tmp);
}

localtax_special_DAO localDAO = new localtax_special_DAO();
int ret = localDAO.update(Cor_Reg_Number, Cor_name, Jurisdic, Sur_year, Invest_pp, Bus_infor, Bus_year, Bus_name_1,
		Bus_name_2, Intax_pay, Work_c,
		Retire_c, Alloc_c,
		Inter_c, Bus_c,
		Cortax_law_c, Etc_c,
		Out_locIn_tax, Prep_tax, Pay_date);
if(ret==1){
	request.getSession().setAttribute("type", "main");
  	response.sendRedirect("work.jsp");
	return;
}  
%>
			