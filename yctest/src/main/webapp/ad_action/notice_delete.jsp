<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ page import="notice.cuscenter_notice_DAO"%>
<%@ page import="notice.noticeVO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="util.DatabaseUtil"%>

<% 
cuscenter_notice_DAO noticeDAO = new cuscenter_notice_DAO();
int noticeboard_num = 0;
if (request.getParameter("deleteNum") != null) {
	String tmp = (String) request.getParameter("deleteNum");
	noticeboard_num = Integer.parseInt(tmp);
}

int ret = noticeDAO.delete(noticeboard_num);
if(ret==1){
 	    	pageContext.forward("../admin/ad_admin_notice.jsp");
	return;
}  
%>