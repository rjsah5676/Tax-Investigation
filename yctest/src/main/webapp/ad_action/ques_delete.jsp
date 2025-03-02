<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ page import="question.cuscenter_ques_DAO"%>
<%@ page import="question.quesVO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="util.DatabaseUtil"%>

<% 
cuscenter_ques_DAO quesDAO = new cuscenter_ques_DAO();
int noticeboard_num = 0;
if (request.getParameter("deleteNum") != null) {
	String tmp = (String) request.getParameter("deleteNum");
	noticeboard_num = Integer.parseInt(tmp);
}

int ret = quesDAO.delete(noticeboard_num);
if(ret==1){
 	    	pageContext.forward("../admin/ad_admin_ques.jsp");
	return;
}  
%>