<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="manage.manage_info_DAO"%>

<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.Date"%>
<%@ page import="java.text.SimpleDateFormat"%> 
<%@ page import="java.text.DateFormat"%> 

<%
request.setCharacterEncoding("UTF-8");
String Cor_Reg_Number_change=null;
String Prv_company_name=null;
String Prv_passw=null; 
String Cor_Reg_Number=null;
String Prv_company_reg_num=null; 
String Prv_cor_repre=null;
String Prv_detail_addr=null; 
String Prv_email=null;
String Prv_phonenum=null; 
String Prv_mphonenum=null;
String Prv_manager=null; 
String Prv_email_recep=null;

if (request.getParameter("Cor_Reg_Number1") != null) {
	Cor_Reg_Number_change = (String) request.getParameter("Cor_Reg_Number1")+(String) request.getParameter("Cor_Reg_Number2"); 
	}
if (request.getParameter("Prv_company_name") != null) {
	Prv_company_name = (String) request.getParameter("Prv_company_name"); 
	} 
if (request.getParameter("Prv_passw") != null) {
	Prv_passw = (String) request.getParameter("Prv_passw");
}
if (request.getParameter("Cor_Reg_Number") != null) {
	Cor_Reg_Number = (String) request.getParameter("Cor_Reg_Number");
}
if (request.getParameter("Prv_company_reg_num1") != null) {
	Prv_company_reg_num = (String) request.getParameter("Prv_company_reg_num1")+(String) request.getParameter("Prv_company_reg_num2")+(String) request.getParameter("Prv_company_reg_num3");
}
if (request.getParameter("Prv_cor_repre") != null) {
	Prv_cor_repre = (String) request.getParameter("Prv_cor_repre");
}
if (request.getParameter("Prv_detail_addr") != null) {
	Prv_detail_addr = (String) request.getParameter("Prv_detail_addr");
}
if (request.getParameter("Prv_email1") != null) {
	Prv_email = (String) request.getParameter("Prv_email1")+"@"+(String) request.getParameter("Prv_email2");
}
if (request.getParameter("Prv_phonenum1") != null) {
	Prv_phonenum = (String) request.getParameter("Prv_phonenum1")+"-"+(String) request.getParameter("Prv_phonenum2")+"-"+(String) request.getParameter("Prv_phonenum3");
}
if (request.getParameter("Prv_mphonenum1") != null) {
	Prv_mphonenum = (String) request.getParameter("Prv_mphonenum1")+"-"+(String) request.getParameter("Prv_mphonenum2")+"-"+(String) request.getParameter("Prv_mphonenum3");
}
if (request.getParameter("Prv_manager") != null) {
	Prv_manager = (String) request.getParameter("Prv_manager");
}
if (request.getParameter("Prv_email_recep") != null) {
	Prv_email_recep = (String) request.getParameter("Prv_email_recep");
}

manage_info_DAO manageDAO = new manage_info_DAO();
int ret = manage_info_DAO.update(Cor_Reg_Number_change, Prv_company_name,
		Prv_passw, Cor_Reg_Number,
		Prv_company_reg_num, Prv_cor_repre,
		Prv_detail_addr, Prv_email,
		Prv_phonenum, Prv_mphonenum,
		Prv_manager, Prv_email_recep
		);

System.out.println(ret);
if(ret==1){
	%> 
	 <script>
		 document.location.href='../';
	 </script> <%
	System.out.print("성공");
	return;
}  
%>
			