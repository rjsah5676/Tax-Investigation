<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); 
	System.out.println("hi");
	session.invalidate();
	response.sendRedirect("../");
%>
