<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="company.company_table_DAO"%>
<%@ page import="depart.depart_resitax_DAO"%>
<%@ page import="local.localtax_special_DAO"%>
<%@ page import="resident.resident_tax_DAO"%>
<%@ page import="submit.submit_report_DAO"%>
<%@ page import="company.companyVO"%>
<%@ page import="corpstat.corpstat_DAO"%>

<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.Date"%>
<%@ page import="java.text.SimpleDateFormat"%> 
<%@ page import="java.text.DateFormat"%> 

<%
request.setCharacterEncoding("UTF-8");
String Cor_Reg_Number=null;
String Prv_cor_ornot="1";
String Prv_id=null;
String Prv_passw=null;
String Prv_company_name=null;
String Prv_company_reg_num=null;
String Prv_cor_repre=null;
String Prv_detail_addr=null;
String Prv_email=null;
String Prv_phonenum=null;
String Prv_mphonenum=null;
String Prv_manager=null;
String Prv_email_recep=null;
String Agent_Cor_Reg_Number=null;
//---법인현황에 들어갈 정보--
String Jurisdic = null;
String Sur_year = null;
String Invest_pp = null;
String Cor_name = null;
//-------------

if (request.getParameter("Cor_Reg_Number1") != null) {
	Cor_Reg_Number = (String) request.getParameter("Cor_Reg_Number1")+(String) request.getParameter("Cor_Reg_Number2"); 
	}
if (request.getParameter("Prv_id") != null) {
	Prv_id = (String) request.getParameter("Prv_id");
}
if (request.getParameter("Prv_passw") != null) {
	Prv_passw = (String) request.getParameter("Prv_passw");
}
if (request.getParameter("Prv_company_name") != null) {
	Prv_company_name = (String) request.getParameter("Prv_company_name");
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
	if (request.getParameter("Prv_email3") == ""){
		Prv_email = (String) request.getParameter("Prv_email1")+"@"+(String) request.getParameter("Prv_email2");	
	}
	else{
		Prv_email = (String) request.getParameter("Prv_email1")+"@"+(String) request.getParameter("Prv_email3");
	}
}
if (request.getParameter("Prv_phonenum1") != null && request.getParameter("Prv_phonenum1")!="") {
	Prv_phonenum = (String) request.getParameter("Prv_phonenum1")+"-"+(String) request.getParameter("Prv_phonenum2")+"-"+(String) request.getParameter("Prv_phonenum3");
}
if (request.getParameter("Prv_mphonenum1") != null && request.getParameter("Prv_mphonenum1")!="") {
	Prv_mphonenum = (String) request.getParameter("Prv_mphonenum1")+"-"+(String) request.getParameter("Prv_mphonenum2")+"-"+(String) request.getParameter("Prv_mphonenum3");
}
if (request.getParameter("Prv_manager") != null && request.getParameter("Prv_manager")!="") {
	Prv_manager = (String) request.getParameter("Prv_manager");
}
if (request.getParameter("Prv_email_recep") != null && request.getParameter("Prv_email_recep")!="") {
	Prv_email_recep = (String) request.getParameter("Prv_email_recep");
}
//---법인현황에 들어갈 정보
if (request.getParameter("Jurisdic") != null) {
	Jurisdic = (String) request.getParameter("Jurisdic"); 
	}
if (request.getParameter("Sur_year") != null) {
	Sur_year = (String) request.getParameter("Sur_year"); 
	}
if (request.getParameter("Invest_pp") != null) {
	Invest_pp = (String) request.getParameter("Invest_pp"); 
	}
if (request.getParameter("Cor_name") != null) {
	Cor_name = (String) request.getParameter("Cor_name"); 
	}
//-------------------
company_table_DAO companyDAO = new company_table_DAO();
int ret = company_table_DAO.join(Cor_Reg_Number, Prv_cor_ornot, Prv_id,
		Prv_passw, Prv_company_name,
		Prv_company_reg_num, Prv_cor_repre,
		Prv_detail_addr, Prv_email,
		Prv_phonenum, Prv_mphonenum,
		Prv_manager, Prv_email_recep,
		Agent_Cor_Reg_Number);

if(ret==1){
	int ret_depart = depart_resitax_DAO.join(Cor_Reg_Number, Cor_name, Jurisdic, Sur_year, Invest_pp, null, null, null, "0", 0, 0, 0, 0, null, 0, 0, null);
	int ret_local = localtax_special_DAO.join(Cor_Reg_Number, Cor_name, Jurisdic, Sur_year, Invest_pp, "0",0,"0","0",null,null,null,null,null,null,null,null,null,null,null);
	int ret_resident = resident_tax_DAO.join(Cor_Reg_Number, null, null, null, null, 0, 0, 0, 0, 0, 0, 0, null, 0);
	int ret_submit = submit_report_DAO.join(Cor_Reg_Number, Jurisdic, null, 0, "0", 0, null, null, "0", null, 0, "0", null, null, null);
	int ret_corp = corpstat_DAO.create(Cor_Reg_Number, Jurisdic, Sur_year, Invest_pp, Cor_name, "0","0","0","0", new Date(00000000),"0","0",0,"0","0","0","0","0","0","0","0","0");
	%> 
	 <script>
		 document.location.href='../';
	 </script> <%
	System.out.print("성공");
	return;
}  
%>
			