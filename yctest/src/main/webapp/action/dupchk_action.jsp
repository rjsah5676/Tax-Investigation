<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="compstat.compstat_DAO"%>

<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.Date"%>
<%@ page import="java.text.SimpleDateFormat"%> 
<%@ page import="java.text.DateFormat"%> 

<%
request.setCharacterEncoding("UTF-8");
String Cs_company_reg_num=null;


if (request.getParameter("Cs_company_reg_num1") != null) {
	Cs_company_reg_num = (String) request.getParameter("Cs_company_reg_num1") + (String) request.getParameter("Cs_company_reg_num2") + (String) request.getParameter("Cs_company_reg_num3"); 
	}
compstat_DAO compDAO = new compstat_DAO();
int ret = compstat_DAO.search(Cs_company_reg_num);
if(ret==1){
	request.setAttribute("dupchk", "ok");
	request.setAttribute("c1",(String) request.getParameter("Cs_company_reg_num1"));
	request.setAttribute("c2",(String) request.getParameter("Cs_company_reg_num2"));
	request.setAttribute("c3",(String) request.getParameter("Cs_company_reg_num3"));
    RequestDispatcher rd=request.getRequestDispatcher("../views/fr_compstat_write.jsp");
    rd.forward(request, response);
	return;
}
else {
	request.setAttribute("dupchk", "not_ok");
    RequestDispatcher rd=request.getRequestDispatcher("../views/fr_compstat_write.jsp");
    rd.forward(request, response);
}
%>
			