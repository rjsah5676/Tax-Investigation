<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ page import="QnA.cuscenter_qna_DAO"%>
<%@ page import="QnA.qnaVO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="util.DatabaseUtil"%>

<% 
cuscenter_qna_DAO qnaDAO = new cuscenter_qna_DAO();
int noticeboard_num = 0;
if (request.getParameter("deleteNum") != null) {
	String tmp = (String) request.getParameter("deleteNum");
	noticeboard_num = Integer.parseInt(tmp);
}

int ret = qnaDAO.delete(noticeboard_num);
if(ret==1){
 	    	pageContext.forward("../admin/ad_admin_qna.jsp");
	return;
}  
%>