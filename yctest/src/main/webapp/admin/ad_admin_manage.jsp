<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="company.company_table_DAO"%>
<%@ page import="company.companyVO"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
    <html>

        <head>
            <meta charset="utf-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <title>YC_login test</title>
            <link rel="stylesheet" type="text/css" href="../css/public.css">            
			<link rel="stylesheet" type="text/css" href="../css/lookupNservice.css">
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
                                    회원관리
                                </div>
                                <ul>
									<li><a href="#" class="selected_menu"">정보관리</a></li>
								</ul>
                            </div>
                            <div class="wrap-right">
                            <div class="wrap-right-title">
                                <div class="wrap-right-img">
                                    <img alt="서브타이틀" class="sub-title_img"  src="../images/sub_title/my_manage_title.png">
                                </div>
                                    <div class="wrap-right-sub_depth">
                                        <img alt="처음으로" src="../images/public/btnHomeTest.png" align="absmiddle">
                                            <a onclick="movePage('ad_main.jsp')">Home</a>
                                            > 회원관리 > 정보관리
                                        </div>
                                        </div>
                                        <br>
            <div>
                <div class="wrap-right__option">
                    <form action="<%= cur_path %>/admin/work.jsp" id="search" method="post">
                        <input type="hidden" name="search_page" value="../admin/ad_admin_manage.jsp">
                        <select name="select_option">
                            <option value="1">법인등록번호</option>
                            <option value="2">계정명</option>
                        </select>
                        <form action="<%=cur_path %>/admin/work.jsp" id="search_info" method="POST">
							<input type="text" name= "search_info"  onkeydown="if(window.event.keyCode==13){doAction('../action/search_action.jsp', 'search');}">
	                	</form>
						<input type="button" onclick="doAction('../action/search_action.jsp','search')" value="검색"> 
                    </form>
                   </div>
                <div>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table-header">
                        <tr>
                            <th width="5%">번호</th>
                            <th>법인번호</th>
                            <th>업체명</th>
                            <th>계정명</th>
                            <th>휴대폰 번호</th>
                        </tr>
                        <%
                        company_table_DAO companyDAO = new company_table_DAO();
                        ArrayList<companyVO> list = companyDAO.getUserList(pageNumber, search_info, select_option);
                        int num = (pageNumber-1)*10 + 1;
                        for(int i=0;i<list.size();i++){
						%>
                        <tr>
							<td><%= num++ %></td>
							<form action="<%=cur_path %>/admin/work.jsp" name="action<%=num%>" method="POST" class="action<%=num%>">
                			<input type="hidden" name= "Cor_Reg_Number" value="<%=list.get(i).getCor_Reg_Number()%>" >
                			</form>
							<td><a onclick="subForm('../ad_action/manage_action2.jsp','action<%=num%>')"><%=list.get(i).getCor_Reg_Number().substring(0,6) %>-<%=list.get(i).getCor_Reg_Number().substring(6,13) %></a></td>
						
						<td><%=list.get(i).getPrv_company_name() %></td>						
						
						<td><%=list.get(i).getPrv_id() %></td>
						
						<td><%=list.get(i).getPrv_mphonenum().substring(0,3) %>-<%=list.get(i).getPrv_mphonenum().substring(3,7) %>-<%=list.get(i).getPrv_mphonenum().substring(7,11) %></td>
						
						<%
						
						}
						
						%>
                        <!--  검색된 결과가 없을 경우 - 여기부터  -->
                        <%
                        if(num==1){
                        %>

                         <tr>
                            <td colspan="5">&nbsp;
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
					<form action="<%=cur_path %>/admin/work.jsp" name="page<%=pageNumber - 1%>" method="POST" class="page<%=pageNumber - 1%>">
					<input type="hidden" name= "pageNumber" value="<%=pageNumber - 1%>" >
					<input type="hidden" name= "search_info" value="<%=search_info%>" >
					<input type="hidden" name= "select_option" value="<%=select_option%>" >
                	</form>
						<a onclick="subForm('../ad_action/manage_page_action.jsp','page<%=pageNumber - 1%>')" style="float:left;">이전</a>
					<%
						} if(companyDAO.nextUserPage(pageNumber + 1, search_info, select_option)) {
					%>
					<form action="<%=cur_path %>/admin/work.jsp" name="page<%=pageNumber + 1%>" method="POST" class="page<%=pageNumber + 1%>">
					<input type="hidden" name= "pageNumber" value="<%=pageNumber + 1%>" >
					<input type="hidden" name= "search_info" value="<%=search_info%>" >
					<input type="hidden" name= "select_option" value="<%=select_option%>" >
                	</form>
						<a onclick="subForm('../ad_action/manage_page_action.jsp','page<%=pageNumber + 1%>')" style="float:left;">다음</a>
					<%
						}
					%>
					</div>
                </div>
				</div>
                                    </div>
                                </div>
                    <div class="footer" id="footer"></div>
                </body>

            </html>