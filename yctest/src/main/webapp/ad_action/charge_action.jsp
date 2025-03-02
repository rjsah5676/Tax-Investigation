<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ page import="charge.cuscenter_charge_DAO"%>
<%@ page import="charge.chargeVO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@ page import="java.sql.Date"%>
<%@page import="util.DatabaseUtil"%>

<% request.setCharacterEncoding("UTF-8"); 
int noticeboard_num = 0;
String charge_Juris = null;
String charge_area = null;
String charge_departname = null;
String charge_person = null;
String charge_num = null;
String charge_fax = null;

if (request.getParameter("charge_Juris") != null) {
	charge_Juris = (String) request.getParameter("charge_Juris"); 
	}
if (request.getParameter("charge_area") != null) {
	charge_area = (String) request.getParameter("charge_area");
}
if (request.getParameter("charge_departname") != null) {
	charge_departname = (String) request.getParameter("charge_departname");
}
if (request.getParameter("charge_person") != null) {
	charge_person = (String) request.getParameter("charge_person");
}
if (request.getParameter("charge_num") != null) {
	charge_num = (String) request.getParameter("charge_num");
}
if (request.getParameter("charge_fax") != null) {
	charge_fax = (String) request.getParameter("charge_fax");
}

cuscenter_charge_DAO chargeDAO = new cuscenter_charge_DAO();
int ret = chargeDAO.join(noticeboard_num, charge_Juris, charge_area,
		charge_departname, charge_person,
		charge_num, charge_fax
		);
if(ret==1){
	request.getSession().setAttribute("type", "charge_submit");
  	response.sendRedirect("work.jsp");
	return;
}  
%>