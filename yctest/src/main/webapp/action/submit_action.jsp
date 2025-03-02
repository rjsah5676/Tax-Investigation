<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="submit.submit_report_DAO"%>

<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.Date"%>
<%@ page import="java.text.SimpleDateFormat"%> 
<%@ page import="java.text.DateFormat"%> 

<%
request.setCharacterEncoding("UTF-8");
String Cor_Reg_Number=null;
String Jurisdic=null;
Date Survey_year=null;
int Survey_bzperiod=0;
String Cor_infor=null;
int Submit_declaration=0;
String Division=null;
String Company_name=null;
String Company_Reg_num =null;
Date Last_modidate =null;
int File_num=0;
String Cor_name=null;
String Format_class=null;
String File_name=null;
String Remark=null;

if (request.getParameter("Cor_Reg_Number") != null) {
	Cor_Reg_Number = (String) request.getParameter("Cor_Reg_Number"); 
	}
if (request.getParameter("Jurisdic") != null) {
	Jurisdic = (String) request.getParameter("Jurisdic"); 
	} 
if (request.getParameter("Survey_year") != null) {
	String tmp = request.getParameter("Survey_year");
	Survey_year = Date.valueOf(tmp);
}
if (request.getParameter("Survey_bzperiod") != null) {
	Survey_bzperiod = Integer.parseInt(request.getParameter("Survey_bzperiod"));
}
if (request.getParameter("Cor_infor") != null) {
	Cor_infor = (String) request.getParameter("Cor_infor"); 
}
if (request.getParameter("Submit_declaration") != null) {
	Submit_declaration = Integer.parseInt(request.getParameter("Submit_declaration"));
}
if (request.getParameter("Division") != null) {
	Division = (String) request.getParameter("Division");
}
if (request.getParameter("Company_name") != null) {
	Company_name = (String) request.getParameter("Company_name");
}
if (request.getParameter("Company_Reg_num") != null) {
	Company_Reg_num  = (String) request.getParameter("Company_Reg_num");
}
if (request.getParameter("Last_modidate") != null && request.getParameter("Last_modidate")!="") {
	String tmp = request.getParameter("Last_modidate");
	Last_modidate = Date.valueOf(tmp);
}
if (request.getParameter("File_num") != null && request.getParameter("File_num")!="") {
	File_num = Integer.parseInt(request.getParameter("File_num"));
}
if (request.getParameter("Cor_name") != null && request.getParameter("Cor_name")!="") {
	Cor_name = (String) request.getParameter("Cor_name");
}
if (request.getParameter("Format_class") != null && request.getParameter("Format_class")!="") {
	Format_class = (String) request.getParameter("Format_class");
}
if (request.getParameter("File_name") != null) {
	File_name = (String) request.getParameter("File_name");
}
if (request.getParameter("Remark") != null) {
	Remark = (String) request.getParameter("Remark");
}
submit_report_DAO submitDAO = new submit_report_DAO();
int ret = submit_report_DAO.update(Cor_Reg_Number, Jurisdic, Survey_year,
		Survey_bzperiod, Cor_infor,
		Submit_declaration, Division,
		Company_name, Company_Reg_num ,
		Last_modidate , File_num,
		Cor_name, Format_class,
		File_name, Remark);
if(ret==1){
	request.getSession().setAttribute("type", "main");
  	response.sendRedirect("work.jsp");
	return;
}  
%>
			