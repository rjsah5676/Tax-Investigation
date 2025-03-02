<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ page import="archives.form_archives_DAO"%>
<%@ page import="archives.archivesVO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="util.DatabaseUtil"%>

<% 
form_archives_DAO archivesDAO = new form_archives_DAO();
int form_id = 0;
if (request.getParameter("deleteNum") != null) {
	String tmp = (String) request.getParameter("deleteNum");
	form_id = Integer.parseInt(tmp);
}

int ret = archivesDAO.delete(form_id);
if(ret==1){
 	    	pageContext.forward("../admin/ad_admin_archives.jsp");
	return;
}  
%>