<%@ page import="notice.cuscenter_notice_DAO" %>
<%@ page import="notice.noticeVO" %>
<%@ page import="java.io.File" %>
<%@ page import="java.sql.Date"%>

<% request.setCharacterEncoding("UTF-8"); 
int noticeboard_num = 0;
String notice_title = null;
int notice_viewnum = 0;
Date notice_regisdate = null;
String notice_fileName = null;
String notice_file = null;
String notice_content = null;

cuscenter_notice_DAO noticeDAO = new cuscenter_notice_DAO();

if (request.getParameter("notice_title") != null) {
	notice_title = (String) request.getParameter("notice_title"); 
	}
if (request.getParameter("notice_regisdate") != null) {
	String tmp = request.getParameter("notice_regisdate");
	notice_regisdate = Date.valueOf(tmp);
}
if (request.getParameter("notice_content") != null) {
	notice_content = (String) request.getParameter("notice_content");
}

int ret = noticeDAO.join(noticeboard_num, notice_title,notice_viewnum,notice_regisdate,notice_fileName,
		notice_file,notice_content);
	if(ret==1){
		request.getSession().setAttribute("type", "notice_submit");
	  	response.sendRedirect("work.jsp");
	return;
}  
%>