<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ page import="notice.cuscenter_notice_DAO"%>
<%@ page import="notice.noticeVO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@ page import="java.sql.Date"%>
<%@page import="util.DatabaseUtil"%>

<% request.setCharacterEncoding("UTF-8"); 
int noticeboard_num = 0;
String notice_title = null;
String notice_file = null;
Date notice_regisdate=null;
String notice_content = null;

if (request.getParameter("noticeboard_num") != null) {
	noticeboard_num = Integer.parseInt((String) request.getParameter("noticeboard_num")); 
	}
if (request.getParameter("notice_title") != null) {
	notice_title = (String) request.getParameter("notice_title"); 
	}
if (request.getParameter("notice_file") != null) {
	notice_file = (String) request.getParameter("notice_file");
}
if (request.getParameter("notice_content") != null) {
	notice_content = (String) request.getParameter("notice_content");
}

cuscenter_notice_DAO noticeDAO = new cuscenter_notice_DAO();
int ret = noticeDAO.update(noticeboard_num, notice_title, notice_file, notice_content);
if(ret==1){
  	pageContext.forward("../admin/ad_admin_notice.jsp");
	return;
}  
%>