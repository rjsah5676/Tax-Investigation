<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="manage.delete_member_DAO"%>

<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.Date"%>
<%@ page import="java.text.SimpleDateFormat"%> 
<%@ page import="java.text.DateFormat"%> 

<%
request.setCharacterEncoding("UTF-8");
String Prv_company_reg_num=null; 

if (request.getParameter("Prv_company_reg_num1") != null) {
	Prv_company_reg_num = (String) request.getParameter("Prv_company_reg_num1")+(String) request.getParameter("Prv_company_reg_num2")+(String) request.getParameter("Prv_company_reg_num3");
}

delete_member_DAO deleteDAO = new delete_member_DAO();
%>
<%
int ret = delete_member_DAO.delete(
		Prv_company_reg_num
		);

System.out.println(ret);
if(ret==1){
	%> 
	 <script>
		 document.location.href='../';
	 </script> <%
	session.invalidate();
	System.out.print("성공");
	return;
}
%>
<%
if(ret != 1) {
	request.getSession().setAttribute("type", "delete");
  	response.sendRedirect("work.jsp");
	return;
}
%>
			