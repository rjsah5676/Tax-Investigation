<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="archives.form_archives_DAO"%>
<%@ page import="archives.archivesVO"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
    <html>

        <head>
            <meta charset="utf-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <title>법인세무조사 인터넷신고시스템</title>
            <link rel="stylesheet" type="text/css" href="css/public.css">
                <link rel="stylesheet" type="text/css" href="css/investigation.css">
                    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
                    <script type="text/javascript" src="js/public.js"></script>
                </head>

                <body onload="init();">
                	<% String cur_path = request.getContextPath(); 
		String isLogin = (String) session.getAttribute("userId");
		int pageNumber = 1;
		String search_info = "";
		String select_option= "1";
		if(request.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
		if(request.getParameter("search_info") != null) {
			search_info = request.getParameter("search_info");
		}
		if(request.getParameter("select_option") != null) {
			select_option = request.getParameter("select_option");
		}
					%>
	<c:set var="isLogin" value="<%=isLogin %>"/>
					<div id="formSet"></div>
                    <div class="top" id="top" value="<%= isLogin %>"></div>
                    <div class="nav-wrapper__hd" id="nav"></div>
                    <div class="wrap">
                        <div class="wrap-logo">
                            <img src="images/public/yctest4.png"></div>
                            <div class="wrap-left">
                                <div class="wrap-left-title">
                                    세무조사안내
                                </div>
                                <ul>
                                    <li>
                                        <a onclick="movePage('views/iv_guide.jsp')">지방세세무조사안내</a>
                                    </li>
                                    <li>
                                        <a onclick="movePage('views/iv_glossary.jsp')">
                                            <span>용어해설</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="selected_menu">서식관련자료실</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="wrap-right">
                                <div class="iv-wrap-right-img">
                                     <img class="sub-title_img" src="images/sub_title/iv_archives_title.png"></div>
                                    <div class="wrap-right-sub_depth">
                                        <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle">
                                            <a onclick="movePage('')">Home</a>
                                            > 지방세정보 > 서식관련자료실
                                        </div>
                                        <br>
                                        <div class="wrap-right-content">
                                            <div class="headfield" id="headfield" style="display: none;"></div>
                                            <div class="iv-wrap-right-info">
                                                <span class="iv-wrap-right-info_text">* 법인세무조사 서면신고와 관련된 제출자료를 특정형식으로 첨부하실 수 있도록 서식을 제공하고 있습니다.</span>
                                            </div>
                                            </div>
                                            <div>
                                            <form action="<%= cur_path %>/work.jsp" id="search" method="post">
                        <input type="hidden" name="search_page" value="../views/iv_archives.jsp">
                        <select name="select_option">
                            <option value="1">제목 + 내용</option>
                            <option value="2">제목</option>
                        </select>
                        <form action="<%=cur_path %>/work.jsp" id="search_info" method="POST">
							<input type="text" name= "search_info" onkeydown="if(window.event.keyCode==13){doAction('action/search_action.jsp', 'search');}">
	                	</form>
						<input type="button" onclick="doAction('action/search_action.jsp','search')" value="검색"> 
                    </form></div>
                    
                    <div>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="iv-wrap-right-search_table">
                        <tr>
                            <th>번호</th>
                            <th width="50%">제목</th>
                            <th>제공파일</th>
                            <th>등록일자</th>
                        </tr>
                        <%
                        form_archives_DAO archivesDAO = new form_archives_DAO();
                        ArrayList<archivesVO> list = archivesDAO.getList(pageNumber, search_info, select_option);
                        for(int i=0;i<list.size();i++){
						%>
						<tr>
							<td><% int tmp = list.get(i).getForm_id(); %>
							<%= tmp %></td>
							<form action="<%=cur_path %>/work.jsp" name="action<%=tmp%>" method="POST" class="action<%=tmp%>">
                			<input type="hidden" name= "boardNum" value="<%=tmp%>" >
                			</form>
						
						<td><a onclick="subForm('action/archives_action2.jsp','action<%=tmp%>')"><%=list.get(i).getForm_title() %></a></td>
						
						<td><%=list.get(i).getForm_fileName() %></td>
						
						<td><%=list.get(i).getForm_regisdate() %></td>
						
						<td>
						
						<%
						
						}
						
						%>
                        <!--  검색된 결과가 없을 경우 - 여기부터  -->
                        <%
                        if(archivesDAO.getCnt()==1){
                        %>

                         <tr>
                            <td colspan="4">&nbsp;
                                * 검색된 결과가 없습니다.
                            </td>
                        </tr>
                        <%
                        }
                        %>

                        <!--  검색된 결과가 없을 경우 - 여기까지  -->
                    </table>
                    <div>
                    <%
						if(pageNumber != 1) {
					%>
					<form action="<%=cur_path %>/work.jsp" name="page<%=pageNumber - 1%>" method="POST" class="page<%=pageNumber - 1%>">
					<input type="hidden" name= "pageNumber" value="<%=pageNumber - 1%>" >
					<input type="hidden" name= "search_info" value="<%=search_info%>" >
					<input type="hidden" name= "select_option" value="<%=select_option%>" >
                	</form>
						<a onclick="subForm('action/archives_page_action.jsp','page<%=pageNumber - 1%>')" style="float:left;">이전</a>
					<%
						} if(archivesDAO.nextPage(pageNumber + 1, search_info, select_option)) {
					%>
					<form action="<%=cur_path %>/work.jsp" name="page<%=pageNumber + 1%>" method="POST" class="page<%=pageNumber + 1%>">
					<input type="hidden" name= "pageNumber" value="<%=pageNumber + 1%>" >
					<input type="hidden" name= "search_info" value="<%=search_info%>" >
					<input type="hidden" name= "select_option" value="<%=select_option%>" >
                	</form>
						<a onclick="subForm('action/archives_page_action.jsp','page<%=pageNumber + 1%>')" style="float:left;">다음</a>
					<%
						}
					%>
					</div>
                </div>
                            <div class="footer" id="footer"></div>
                        </body>

                    </html>