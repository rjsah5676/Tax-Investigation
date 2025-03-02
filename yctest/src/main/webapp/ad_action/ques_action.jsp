<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ page import="question.cuscenter_ques_DAO"%>
<%@ page import="question.quesVO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@ page import="java.sql.Date"%>
<%@page import="util.DatabaseUtil"%>

<% request.setCharacterEncoding("UTF-8"); 
int noticeboard_num = 0;
String ques_title = null;
Date ques_regisdate=null;
String ques_content = null;
String ques_ans = null;
int ques_viewnum = 0;

if (request.getParameter("ques_title") != null) {
	ques_title = (String) request.getParameter("ques_title"); 
	}
if (request.getParameter("ques_regisdate") != null) {
	String tmp = request.getParameter("ques_regisdate");
	ques_regisdate = Date.valueOf(tmp);
	} 
if (request.getParameter("ques_content") != null) {
	ques_content = (String) request.getParameter("ques_content");
}
if (request.getParameter("ques_ans") != null) {
	ques_ans = (String) request.getParameter("ques_ans");
}

cuscenter_ques_DAO quesDAO = new cuscenter_ques_DAO();
int ret = quesDAO.join(noticeboard_num, ques_title,ques_regisdate,ques_content,ques_ans,
		ques_viewnum);
if(ret==1){
	request.getSession().setAttribute("type", "ques_submit");
  	response.sendRedirect("work.jsp");
	return;
}  
%>