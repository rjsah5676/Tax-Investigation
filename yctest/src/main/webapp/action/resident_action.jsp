<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="resident.resident_tax_DAO"%>

<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.Date"%>
<%@ page import="java.text.SimpleDateFormat"%> 
<%@ page import="java.text.DateFormat"%> 

<%
request.setCharacterEncoding("UTF-8");
String Cor_Reg_Number=null;
String Bus_name=null;
String Location=null;
Date Business_startdate=null;
Date Business_year=null;
float Storyarea=0;
float Dormitory=0;
float Cafeteria=0;
float Etc=0;
float Taxablearea=0;
int Justifiable_tax=0;
int Prep_tax=0;
Date Pay_Date=null;
int Borrowing_tax=0;

if (request.getParameter("Cor_Reg_Number") != null) {	
Cor_Reg_Number = (String) request.getParameter("Cor_Reg_Number"); 
	}
if (request.getParameter("Bus_name") != null) {
	Bus_name = (String) request.getParameter("Bus_name"); 
	} 
if (request.getParameter("Location") != null) {
	Location = (String) request.getParameter("Location");
}
if (request.getParameter("Business_startdate") != null) {
	String tmp = request.getParameter("Business_startdate");
	Business_startdate = Date.valueOf(tmp);
}
if (request.getParameter("Business_year") != null) {
	String tmp = request.getParameter("Business_year");
	Business_year = Date.valueOf(tmp);
}
if (request.getParameter("Storyarea") != null) {
	Storyarea = Float.parseFloat(request.getParameter("Storyarea"));
}
if (request.getParameter("Dormitory") != null) {
	Dormitory = Float.parseFloat(request.getParameter("Dormitory"));
}
if (request.getParameter("Cafeteria") != null) {
	Cafeteria = Float.parseFloat(request.getParameter("Cafeteria"));
}
if (request.getParameter("Etc") != null) {
	Etc = Float.parseFloat(request.getParameter("Etc"));
}
if (request.getParameter("Taxablearea") != null && request.getParameter("Taxablearea")!="") {
	Taxablearea = Float.parseFloat(request.getParameter("Taxablearea"));
}
if (request.getParameter("Justifiable_tax") != null && request.getParameter("Justifiable_tax")!="") {
	Justifiable_tax = Integer.parseInt(request.getParameter("Justifiable_tax"));
}
if (request.getParameter("Prep_tax") != null && request.getParameter("Prep_tax")!="") {
	Prep_tax = Integer.parseInt(request.getParameter("Prep_tax"));
}
if (request.getParameter("Pay_Date") != null && request.getParameter("Pay_Date")!="") {
	String tmp = request.getParameter("Pay_Date");
	Pay_Date = Date.valueOf(tmp);
}
if (request.getParameter("Borrowing_tax") != null) {
	Borrowing_tax = Integer.parseInt(request.getParameter("Borrowing_tax"));
}
resident_tax_DAO residentDAO = new resident_tax_DAO();
int ret = resident_tax_DAO.update(Cor_Reg_Number, Bus_name, Location,
		Business_startdate, Business_year,
		Storyarea, Dormitory,
		Cafeteria, Etc,
		Taxablearea, Justifiable_tax,
		Prep_tax, Pay_Date,
		Borrowing_tax);
if(ret==1){
	request.getSession().setAttribute("type", "main");
  	response.sendRedirect("work.jsp");
	return;
}
%>
			