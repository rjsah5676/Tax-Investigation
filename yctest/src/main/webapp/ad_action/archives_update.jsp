<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ page import="archives.form_archives_DAO"%>
<%@ page import="archives.archivesVO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@ page import="java.sql.Date"%>
<%@page import="util.DatabaseUtil"%>

<% request.setCharacterEncoding("UTF-8"); 
int form_id = 0;
String form_title = null;
Date form_regisdate = null;
String form_fileName = null;
String form_file = null;
String form_content = null;

if (request.getParameter("form_id") != null) {
	form_id = Integer.parseInt((String) request.getParameter("form_id")); 
	}
if (request.getParameter("form_title") != null) {
	form_title = (String) request.getParameter("form_title"); 
	}
if (request.getParameter("form_regisdate") != null) {
	String tmp = request.getParameter("form_regisdate");
	form_regisdate = Date.valueOf(tmp);
}
// if (request.getParameter("form_file") != null) {
// 	form_file = (String) request.getParameter("form_file");
// }
if (request.getParameter("form_content") != null) {
	form_content = (String) request.getParameter("form_content");
}

form_archives_DAO archivesDAO = new form_archives_DAO();
int ret = archivesDAO.update(form_id, form_title, form_file, form_content);
if(ret==1){
  	pageContext.forward("../admin/ad_admin_archives.jsp");
	return;
}  
%>