<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="util.DatabaseUtil"%>
<% request.setCharacterEncoding("UTF-8"); %>

<%
	String search_info="";
	String select_option="1";
	String search_page="";
	if (request.getParameter("search_info") != null) {
		search_info =  request.getParameter("search_info"); 
	}
	if (request.getParameter("select_option") != null) {
		select_option =  request.getParameter("select_option"); 
	}
	if (request.getParameter("search_page") != null) {
		search_page =  request.getParameter("search_page"); 
	}
	System.out.println(search_page);
	request.setAttribute("search_info", search_info);
	request.setAttribute("select_option", select_option);
	RequestDispatcher rd=request.getRequestDispatcher(search_page);
	rd.forward(request, response);
%>