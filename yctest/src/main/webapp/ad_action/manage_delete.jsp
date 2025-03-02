<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ page import="company.company_table_DAO"%>
<%@ page import="company.companyVO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="util.DatabaseUtil"%>

<% 
company_table_DAO companyDAO = new company_table_DAO();
String Cor_Reg_Number = null;
if (request.getParameter("deleteNum") != null) {
	Cor_Reg_Number = (String) request.getParameter("deleteNum");
}

int ret = companyDAO.delete(Cor_Reg_Number);
if(ret==1){
 	    	pageContext.forward("../admin/ad_admin_manage.jsp");
	return;
}  
%>