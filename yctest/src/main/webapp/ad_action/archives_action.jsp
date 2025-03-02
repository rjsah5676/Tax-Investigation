<%@ page import="archives.form_archives_DAO" %>
<%@ page import="archives.archivesVO" %>
<%@ page import="java.io.File" %>
<%@ page import="java.sql.Date"%>

<% request.setCharacterEncoding("UTF-8"); 
int form_id = 0;
String form_title = null;
Date form_regisdate = null;
String form_fileName = null;
String form_file = null;
String form_content = null;

form_archives_DAO archivesDAO = new form_archives_DAO();

if (request.getParameter("form_title") != null) {
	form_title = (String) request.getParameter("form_title"); 
	}
if (request.getParameter("form_regisdate") != null) {
	String tmp = request.getParameter("form_regisdate");
	form_regisdate = Date.valueOf(tmp);
}
// if (request.getParameter("form_file") != null) {
// 	form_file = (String) request.getParameter("form_file");
// }
if (request.getParameter("form_content") != null) {
	form_content = (String) request.getParameter("form_content");
}

int ret = archivesDAO.join(form_id, form_title,form_file,form_fileName,
		form_regisdate,form_content);
	if(ret==1){
  	    	pageContext.forward("../admin/ad_admin_archives.jsp");
	return;
}  
%>