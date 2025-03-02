<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ page import="charge.cuscenter_charge_DAO"%>
<%@ page import="charge.chargeVO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="util.DatabaseUtil"%>

<% 
cuscenter_charge_DAO chargeDAO = new cuscenter_charge_DAO();
int noticeboard_num = 0;
if (request.getParameter("deleteNum") != null) {
	String tmp = (String) request.getParameter("deleteNum");
	noticeboard_num = Integer.parseInt(tmp);
}

int ret = chargeDAO.delete(noticeboard_num);
if(ret==1){
 	    	pageContext.forward("../admin/ad_admin_charge.jsp");
	return;
}  
%>