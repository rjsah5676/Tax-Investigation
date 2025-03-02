<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="glossary.form_glossary_DAO"%>
<%@ page import="glossary.glossaryVO"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
    <html>

        <head>
            <meta charset="utf-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <title>YC_login test</title>
            <link rel="stylesheet" type="text/css" href="../css/public.css">            
			<link rel="stylesheet" type="text/css" href="../css/investigation.css">
                    <script type="text/javascript" src="../js/jquery-1.12.4.min.js"></script>
                    <script type="text/javascript" src="../js/admin.js"></script>
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
                   <div id="formSet"></div>
                    <div class="top" id="top"></div>
                    <div class="nav-wrapper__hd" id="nav"></div>
                    <div class="wrap">
                        <div class="wrap-logo">
                            <img src="../images/public/yctest4.png"></div>
                            <div class="wrap-left">
                            	<div class="wrap-left-title">
                                    세무조사안내
                                </div>
                                <ul>
                                    <li><a href="#" class="selected_menu">용어해설</a></li>
                                    <li><a onclick="movePage('ad_admin_archives.jsp')">서식관련자료실</a></li>
								</ul>
                            </div>
                            <div class="wrap-right">
                                <div class="wrap-right-img">
                                    <img alt="서브타이틀" class="sub-title_img"  src="../images/sub_title/iv_glossary_title.png">
                                </div>
                                    <div class="wrap-right-sub_depth">
                                        <img alt="처음으로" src="../images/public/btnHomeTest.png" align="absmiddle">
                                            <a onclick="movePage('ad_main.jsp')">Home</a>
                                            > 세무조사안내관리 > 용어해설
                                        </div>
                                        <br>
                                        <div class="wrap-right-content">
                                                <div class="headfield" id="headfield" style="display: none;"></div>
                                                <div class="iv-wrap-right-info">
                                                    <span class="iv-wrap-right-info_text">* 법인세무조사 서면신고와 관련된 용어로 구성되어 있습니다.</span>
                                                </div>
                               		 </div>
                    <form action="<%= cur_path %>/admin/work.jsp" id="search" method="post">
                        <input type="hidden" name="search_page" value="../admin/ad_admin_glossary.jsp">
                        <select name="select_option">
                            <option value="1">제목 + 내용</option>
                            <option value="2">제목</option>
                        </select>
                        <form action="<%=cur_path %>/admin/work.jsp" id="search_info" method="POST">
							<input type="text" name= "search_info" onkeydown="if(window.event.keyCode==13){doAction('../action/search_action.jsp', 'search');}">
	                	</form>
						<input type="button" onclick="doAction('../action/search_action.jsp','search')" value="검색"> 
                    </form>
                    
                    <div id="loaded">
                    	<%
                        form_glossary_DAO glossaryDAO = new form_glossary_DAO();
                        ArrayList<glossaryVO> list = glossaryDAO.getList(pageNumber, search_info, select_option);
                        for(int i=0;i<list.size();i++){
						%>
						
                               <!-- 검색된 결과가 없을 경우 - 여기부터 -->

                               <!-- 검색된 결과가 없을 경우 - 여기까지 -->

                              	<div class="iv-wrap-right-dic_box1">
									<% int tmp = list.get(i).getForm_id(); %>
			              			<%= list.get(i).getForm_title() %>
                                </div>
                                <div class="iv-wrap-right-dic_box1_1">
                                    <%= list.get(i).getForm_meaning() %>
                                    <div style="float:right;">
                                    
				<form action="<%=cur_path %>/admin/work.jsp" name="delete" method="POST" class="delete">
             		<input type="hidden" name= "deleteNum" value="<%=tmp%>" >
            	</form>	
				<input type="button" onclick="subForm('../ad_action/glossary_delete.jsp','delete')"
				value="삭제" class="btn_org">
                                    </div>
                                </div>
                             <%
                                } %>
                                <div>
                                
				<form action="<%=cur_path %>/ad_action/glossary_action.jsp" method="post" name="write" >
                    <div class="btn_r_org">
                    <div class="iv-wrap-right-dic_box1">
                    	<input style="width: 300px" name="form_title"/>
                    </div>
                  	 <div class="iv-wrap-right-dic_box1_1">
                    	<input style="width: 700px" name="form_meaning"/>
                  	 </div>
                    
						<input type="button" onclick="doWrite('../ad_action/glossary_action.jsp')" value="저장"
							class=" left"> 
					</div>
					</form>
                                </div>
                             <div>
                    <%
						if(pageNumber != 1) {
					%>
					<form action="<%=cur_path %>/admin/work.jsp" name="page<%=pageNumber - 1%>" method="POST" class="page<%=pageNumber - 1%>">
					<input type="hidden" name= "pageNumber" value="<%=pageNumber - 1%>" >
					<input type="hidden" name= "search_info" value="<%=search_info%>" >
					<input type="hidden" name= "select_option" value="<%=select_option%>" >
                	</form>
						<a onclick="subForm('../ad_action/glossary_page_action.jsp','page<%=pageNumber - 1%>')" style="float:left;">이전</a>
					<%
						} if(glossaryDAO.nextPage(pageNumber + 1, search_info, select_option)) {
					%>
					<form action="<%=cur_path %>/admin/work.jsp" name="page<%=pageNumber + 1%>" method="POST" class="page<%=pageNumber + 1%>">
					<input type="hidden" name= "pageNumber" value="<%=pageNumber + 1%>" >
					<input type="hidden" name= "search_info" value="<%=search_info%>" >
					<input type="hidden" name= "select_option" value="<%=select_option%>" >
                	</form>
						<a onclick="subForm('../ad_action/glossary_page_action.jsp','page<%=pageNumber + 1%>')" style="float:left;">다음</a>
					<%
						}
					%>
					</div>
                                    </div>
                            </div>
                        </div>
                    <div class="footer" id="footer"></div>
                </body>

            </html>