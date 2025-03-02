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
String reply_content = null;

if (request.getParameter("noticeboard_num") != null) {
	noticeboard_num = Integer.parseInt((String) request.getParameter("noticeboard_num")); 
	}
if (request.getParameter("reply_content") != null) {
	reply_content = (String) request.getParameter("reply_content"); 
}

cuscenter_qna_DAO qnaDAO = new cuscenter_qna_DAO();
int ret = qnaDAO.reply(noticeboard_num, reply_content);
if(ret==1){
  	    	pageContext.forward("../admin/ad_admin_qna.jsp");
	return;
}  
%>