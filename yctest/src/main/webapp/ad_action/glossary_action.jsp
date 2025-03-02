<%@ page import="glossary.form_glossary_DAO" %>
<%@ page import="glossary.glossaryVO" %>
<%@ page import="java.io.File" %>
<%@ page import="java.sql.Date"%>

<% request.setCharacterEncoding("UTF-8"); 
int form_id = 0;
String form_title = null;
String form_meaning = null;

form_glossary_DAO glossaryDAO = new form_glossary_DAO();

if (request.getParameter("form_title") != null) {
	form_title = (String) request.getParameter("form_title"); 
	}
if (request.getParameter("form_meaning") != null) {
	form_meaning = (String) request.getParameter("form_meaning");
}
int ret = glossaryDAO.join(form_id, form_title,form_meaning);
	if(ret==1){
  	    	pageContext.forward("../admin/ad_admin_glossary.jsp");
	return;
}  
%>