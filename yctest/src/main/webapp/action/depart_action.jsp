<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="depart.depart_resitax_DAO"%>
<%@ page import="depart.depart_resitax_VO"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.Date"%>
<%@ page import="java.text.SimpleDateFormat"%> 
<%@ page import="java.text.DateFormat"%> 

<%
request.setCharacterEncoding("UTF-8");
String Cor_Reg_Number=null;
String Cor_Name=null;
String Jurisdic=null;
String Sur_year=null;
String Invest_pp=null;
String Business_Select=null;
Date Business_year=null;
String Business_name=null;
String Bus_name=null;
int Earned_Income=0;
int Taxfree_Income=0;
int Employee=0;
int Assessment_Standard=0;
Date Salary_Date=null;
int Calculated_Tax_Amount=0;
int Prep_Tax=0;
Date Pay_Date=null;

if (request.getParameter("Cor_Reg_Number") != null) {	
Cor_Reg_Number = (String) session.getAttribute("Cor_Reg_Number"); 
	}
if (request.getParameter("Cor_Name") != null) {
	Cor_Name = (String) request.getParameter("Cor_Name"); 
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
if (request.getParameter("Business_Select") != null) {
	Business_Select = (String) request.getParameter("Business_Select");
}
if (request.getParameter("Business_year") != null) {
	String tmp = request.getParameter("Business_year");
	Business_year = Date.valueOf(tmp);
}
if (request.getParameter("Business_name") != null) {
	Business_name = (String) request.getParameter("Business_name");
}
if (request.getParameter("Bus_name") != null) {
	Bus_name = (String) request.getParameter("Bus_name");
}
if (request.getParameter("Earned_Income") != null && request.getParameter("Earned_Income")!="") {
	Earned_Income = Integer.parseInt(request.getParameter("Earned_Income"));
}
if (request.getParameter("Taxfree_Income") != null && request.getParameter("Taxfree_Income")!="") {
	Taxfree_Income = Integer.parseInt(request.getParameter("Taxfree_Income"));
}
if (request.getParameter("Employee") != null && request.getParameter("Employee")!="") {
	Employee = Integer.parseInt(request.getParameter("Employee"));
}
if (request.getParameter("Assessment_Standard") != null && request.getParameter("Assessment_Standard")!="") {
	Assessment_Standard = Integer.parseInt(request.getParameter("Assessment_Standard"));
}
if (request.getParameter("Salary_Date") != null) {
	String tmp = request.getParameter("Salary_Date");
	Salary_Date = Date.valueOf(tmp);
}
if (request.getParameter("Calculated_Tax_Amount") != null && request.getParameter("Calculated_Tax_Amount")!="") {
	Calculated_Tax_Amount = Integer.parseInt(request.getParameter("Calculated_Tax_Amount"));
}
if (request.getParameter("Prep_Tax") != null && request.getParameter("Prep_Tax")!="") {
	Prep_Tax = Integer.parseInt(request.getParameter("Prep_Tax"));
}
if (request.getParameter("Pay_Date") != null) {
	String tmp = request.getParameter("Pay_Date");
	Pay_Date = Date.valueOf(tmp);
}
depart_resitax_DAO departDAO = new depart_resitax_DAO();
int ret = depart_resitax_DAO.update(Cor_Reg_Number, Cor_Name, Jurisdic,
		Sur_year, Invest_pp,
		Business_Select, Business_year,
		Business_name, Bus_name,
		Earned_Income, Taxfree_Income,
		Employee, Assessment_Standard,
		Salary_Date, Calculated_Tax_Amount,
		Prep_Tax, Pay_Date);
if(ret==1){
	request.getSession().setAttribute("type", "main");
  	response.sendRedirect("work.jsp");
	return;
}  
%>
			