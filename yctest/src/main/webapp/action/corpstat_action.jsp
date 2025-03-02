<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="corpstat.corpstat_DAO"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.Date"%>
<%@ page import="java.text.SimpleDateFormat"%> 
<%@ page import="java.text.DateFormat"%> 

<%
request.setCharacterEncoding("UTF-8");
String Cor_Reg_Number=null;
String Cor_address=null;
String Phone_num=null;
String Cor_email =null;
String Cor_repre =null;
Date Cor_establish_Date =null;
String Cor_status =null;
String Cor_business_type =null;
int Cor_capital =0;
String Incorporated_or_not =null;
String Listed_or_not =null;
String Profit_or_not =null;
String Bus_name =null;
String Writer_depertment =null;
String Writer_name =null;
String Writer_phonenum =null;
String Has_place =null;
String Division_or_merge =null;

if (request.getParameter("Cor_Reg_Number") != null) {	
Cor_Reg_Number = (String) session.getAttribute("Cor_Reg_Number"); 
	}
if (request.getParameter("Cor_address") != null) {
	Cor_address = (String) request.getParameter("Cor_address"); 
	} 
if (request.getParameter("Phone_num1") != null) {
	Phone_num = (String) request.getParameter("Phone_num1") +"-"+ (String) request.getParameter("Phone_num2")+ "-"+ (String) request.getParameter("Phone_num3");
}
if (request.getParameter("Cor_email1") != null) {
	Cor_email = (String) request.getParameter("Cor_email1") + "@" + (String) request.getParameter("Cor_email2");
}
if (request.getParameter("Cor_repre") != null) {
	Cor_repre = (String) request.getParameter("Cor_repre");
}
if (request.getParameter("Cor_establish_Date") != null) {
	String tmp = request.getParameter("Cor_establish_Date");
	Cor_establish_Date = Date.valueOf(tmp);
}
if (request.getParameter("Cor_status") != null) {
	Cor_status = (String) request.getParameter("Cor_status");
}
if (request.getParameter("Cor_business_type") != null) {
	Cor_business_type = (String) request.getParameter("Cor_business_type");
}
if (request.getParameter("Cor_capital") != null) {
	Cor_capital = Integer.parseInt(request.getParameter("Cor_capital"));
}
if (request.getParameter("Incorporated_or_not") != null) {
	Incorporated_or_not = (String) request.getParameter("Incorporated_or_not");
}
if (request.getParameter("Listed_or_not") != null) {
	Listed_or_not = (String) request.getParameter("Listed_or_not");
}
if (request.getParameter("Profit_or_not") != null) {
	Profit_or_not = (String) request.getParameter("Profit_or_not");
}
if (request.getParameter("Bus_name") != null) {
	Bus_name = (String) request.getParameter("Bus_name");
}
if (request.getParameter("Writer_depertment") != null) {
	Writer_depertment = (String) request.getParameter("Writer_depertment");
}
if (request.getParameter("Writer_name") != null) {
	Writer_name = (String) request.getParameter("Writer_name");
}
if (request.getParameter("Writer_phonenum1") != null) {
	Writer_phonenum = (String) request.getParameter("Writer_phonenum1") +"-"+ (String) request.getParameter("Writer_phonenum2") +"-" +(String) request.getParameter("Writer_phonenum3");
}
if (request.getParameter("Has_place") != null) {
	Has_place = (String) request.getParameter("Has_place");
}
if (request.getParameter("Division_or_merge") != null) {
	Division_or_merge = (String) request.getParameter("Division_or_merge");
}

corpstat_DAO corpDAO = new corpstat_DAO();
int ret = corpDAO.update(Cor_Reg_Number, Cor_address, Phone_num,
		Cor_email, Cor_repre,
		Cor_establish_Date, Cor_status,
		Cor_business_type, Cor_capital,
		Incorporated_or_not, Listed_or_not,
		Profit_or_not, Bus_name, Writer_depertment, Writer_name, Writer_phonenum, Has_place, Division_or_merge);
if(ret==1){
	request.getSession().setAttribute("type", "main");
  	response.sendRedirect("work.jsp");
	return;
}  
%>
			