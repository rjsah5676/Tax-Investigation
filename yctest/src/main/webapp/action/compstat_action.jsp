<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="compstat.compstat_DAO"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.Date"%>
<%@ page import="java.text.SimpleDateFormat"%> 
<%@ page import="java.text.DateFormat"%> 

<%
request.setCharacterEncoding("UTF-8");
String Cor_Reg_Number=null;
String Cs_office_exist=null;
String Cs_company_reg_num=null;
String Cs_company_name  =null;
String Cs_detail_addr =null;
String Cs_phonenum =null;
Date Cs_first_set =null;
Date Cs_regist_date =null;
Date Cs_registerd_date =null;
String Cs_possession =null;
int Cs_land_area =0;
int Cs_building_area =0;
int Cs_num_people =0;
int Cs_over_building_size = 0;
int Cs_over_people = 0;

if (request.getParameter("Cor_Reg_Number") != null) {	
Cor_Reg_Number = (String) session.getAttribute("Cor_Reg_Number"); 
	}
if (request.getParameter("Cs_office_exist") != null) {
	Cs_office_exist = (String) request.getParameter("Cs_office_exist"); 
	} 
if (request.getParameter("Cs_company_reg_num1") != null) {
	Cs_company_reg_num = (String) request.getParameter("Cs_company_reg_num1") +(String) request.getParameter("Cs_company_reg_num2")+ (String) request.getParameter("Cs_company_reg_num3");
}
if (request.getParameter("Cs_company_name") != null) {
	Cs_company_name  = (String) request.getParameter("Cs_company_name");
}
if (request.getParameter("Cs_detail_addr") != null) {
	Cs_detail_addr = (String) request.getParameter("Cs_detail_addr");
}
if (request.getParameter("Cs_phonenum1") != null) {
	Cs_phonenum = (String) request.getParameter("Cs_phonenum1") + (String) request.getParameter("Cs_phonenum2") + (String) request.getParameter("Cs_phonenum3");
}
if (request.getParameter("Cs_first_set") != null) {
	String tmp = request.getParameter("Cs_first_set");
	Cs_first_set = Date.valueOf(tmp);
}
if (request.getParameter("Cs_regist_date") != null) {
	String tmp = request.getParameter("Cs_regist_date");
	Cs_regist_date = Date.valueOf(tmp);
}
if (request.getParameter("Cs_registerd_date") != null) {
	String tmp = request.getParameter("Cs_registerd_date");
	Cs_registerd_date = Date.valueOf(tmp);
}
if (request.getParameter("Cs_possession") != null) {
	Cs_possession = (String) request.getParameter("Cs_possession");
}
if (request.getParameter("Cs_land_area") != null) {
	Cs_land_area = Integer.parseInt(request.getParameter("Cs_land_area"));
}
if (request.getParameter("Cs_building_area") != null) {
	Cs_building_area = Integer.parseInt(request.getParameter("Cs_building_area"));
}
if (request.getParameter("Cs_num_people") != null) {
	Cs_num_people = Integer.parseInt(request.getParameter("Cs_num_people"));
}
if (request.getParameter("Cs_over_building_size") != null) {
	Cs_over_building_size = Integer.parseInt(request.getParameter("Cs_over_building_size"));
}
if (request.getParameter("Cs_over_people") != null) {
	Cs_over_people = Integer.parseInt(request.getParameter("Cs_over_people"));
}

compstat_DAO compDAO = new compstat_DAO();
int ret = compDAO.join(Cor_Reg_Number, Cs_office_exist, Cs_company_reg_num,
		Cs_company_name , Cs_detail_addr,
		Cs_phonenum, Cs_first_set,
		Cs_regist_date, Cs_registerd_date,
		Cs_possession, Cs_land_area,
		Cs_building_area, Cs_num_people, Cs_over_building_size, Cs_over_people);
if(ret==1){
	request.getSession().setAttribute("type", "comp_write");
  	response.sendRedirect("work.jsp");
	return;
}  
%>
			