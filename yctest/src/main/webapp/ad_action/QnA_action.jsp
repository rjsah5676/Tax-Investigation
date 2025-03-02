<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ page import="QnA.cuscenter_qna_DAO"%>
<%@ page import="QnA.qnaVO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@ page import="java.sql.Date"%>
<%@page import="util.DatabaseUtil"%>

<% request.setCharacterEncoding("UTF-8"); 
int noticeboard_num = 0;
String QnA_open_chk = null;
Date QnA_regisdate=null;
String QnA_Writer = null;
String QnA_Pw = null;
String QnA_email = null;
String QnA_place = null;
String QnA_phone = null;
String QnA_title = null;
String QnA_content = null;
int QnA_viewnum = 0;

if (request.getParameter("QnA_open_chk") != null) {
	QnA_open_chk = (String) request.getParameter("QnA_open_chk"); 
	}
if (request.getParameter("QnA_regisdate") != null) {
	String tmp = request.getParameter("QnA_regisdate");
	QnA_regisdate = Date.valueOf(tmp);
	} 
if (request.getParameter("QnA_Writer") != null) {
	QnA_Writer = (String) request.getParameter("QnA_Writer");
}
if (request.getParameter("QnA_Pw") != null) {
	QnA_Pw = (String) request.getParameter("QnA_Pw");
}
if (request.getParameter("QnA_email1") != null) {
	if (request.getParameter("QnA_email3") == ""){
		QnA_email = (String) request.getParameter("QnA_email1")+(String) request.getParameter("QnA_email2");	
	}
	else{
		QnA_email = (String) request.getParameter("QnA_email1")+(String) request.getParameter("QnA_email3");
	}
}
if (request.getParameter("QnA_place") != null) {
	QnA_place = (String) request.getParameter("QnA_place");
}
if (request.getParameter("QnA_phone1") != null) {
	QnA_phone = (String) request.getParameter("QnA_phone1")+(String) request.getParameter("QnA_phone2")+(String) request.getParameter("QnA_phone3");
}
if (request.getParameter("QnA_title") != null) {
	QnA_title = (String) request.getParameter("QnA_title");
}
if (request.getParameter("QnA_content") != null) {
	QnA_content = (String) request.getParameter("QnA_content");
}

cuscenter_qna_DAO qnaDAO = new cuscenter_qna_DAO();
int ret = qnaDAO.join(noticeboard_num, QnA_open_chk, QnA_regisdate, QnA_Writer,
		QnA_Pw, QnA_email,
		QnA_place, QnA_phone,
		QnA_title, QnA_content, QnA_viewnum);
if(ret==1){
	request.getSession().setAttribute("type", "qna_submit");
  	response.sendRedirect("work.jsp");
	System.out.print("성공");
	return;
}  
%>