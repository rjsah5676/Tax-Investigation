<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ page import="glossary.form_glossary_DAO"%>
<%@ page import="glossary.glossaryVO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="util.DatabaseUtil"%>

<% 
form_glossary_DAO glossaryDAO = new form_glossary_DAO();
int form_id = 0;
if (request.getParameter("deleteNum") != null) {
	String tmp = (String) request.getParameter("deleteNum");
	form_id = Integer.parseInt(tmp);
}

int ret = glossaryDAO.delete(form_id);
if(ret==1){
 	    	pageContext.forward("../admin/ad_admin_glossary.jsp");
	return;
}  
%>