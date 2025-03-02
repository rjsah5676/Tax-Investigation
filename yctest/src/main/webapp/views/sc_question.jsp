<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="question.cuscenter_ques_DAO"%>
<%@ page import="question.quesVO"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<html>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>법인세무조사 인터넷신고시스템</title>
<link rel="stylesheet" type="text/css" href="css/public.css">
<link rel="stylesheet" type="text/css" href="css/lookupNservice.css">
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/public.js"></script>
</head>

<body onload="init();">
	<%  String cur_path = request.getContextPath(); 
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
			<img src="images/public/yctest4.png">
		</div>
		<div class=wrap-left>
			<div class="wrap-left-title">고객센터</div>
			<ul>
				<li><a onclick="movePage('views/sc_notice.jsp')">공지사항</a></li>
				<li><a href="#" class="selected_menu">자주묻는질문</a></li>
				<li><a onclick="movePage('views/sc_qna.jsp')">Q&A</a></li>
				<li><a onclick="movePage('views/sc_manager.jsp')">담당자안내</a></li>
				<li><a onclick="movePage('views/sc_survey.jsp')">설문</a></li>
			</ul>
		</div>
		<div class="wrap-right">
			<div class="wrap-right-title">
				<div class="wrap-right-img">
					<img class="sub-title_img"
						src="images/sub_title/sc_question_title.png">
				</div>
				<div class="wrap-right-sub_depth">
					<img alt="처음으로" src="images/public/btnHomeTest.png"
						align="absmiddle"> <a onclick="movePage('')">Home</a> > 고객센터
					> 자주묻는질문
				</div>
			</div>
			<br>
			<div>
				<div class="wrap-right__option">
					<form action="<%= cur_path %>/work.jsp" id="search" method="post">
						<input type="hidden" name="search_page" value="../views/sc_question.jsp">
                        <select name="select_option">
                            <option value="1">제목 + 내용</option>
                            <option value="2">제목</option>
                        </select>
							<input type="text" name= "search_info" onkeydown="if(window.event.keyCode==13){doAction('action/search_action.jsp', 'search');}">
						<input type="button" onclick="doAction('action/search_action.jsp','search')" value="검색">
                    </form>
				</div>
				<div>
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="table-header">
						<tr>
							<th width="10%">번호</th>
							<th width="50%">제목</th>
							<th>조회수</th>
							<th>등록일자</th>
						</tr>
						<%
                        cuscenter_ques_DAO quesDAO = new cuscenter_ques_DAO();
                        ArrayList<quesVO> list = quesDAO.getList(pageNumber, search_info, select_option);
                        for(int i=0;i<list.size();i++){
						%>
						<tr>
							<td><% int tmp = list.get(i).getNoticeboard_num(); %>
							<%= tmp %></td>
							<form action="<%=cur_path %>/work.jsp" name="action<%=tmp%>" method="POST" class="action<%=tmp%>">
                			<input type="hidden" name= "boardNum" value="<%=tmp%>" >
                			</form>
						
						<td><a onclick="subForm('action/ques_action2.jsp','action<%=tmp%>')"><%=list.get(i).getQues_title() %></a></td>
						
						<td><%=list.get(i).getQues_viewnum() %></td>
						
						<td><%=list.get(i).getQues_regisdate() %></td>
						
						<%
						
						}
						
						%>
                        <!--  검색된 결과가 없을 경우 - 여기부터  -->
                        <%
                        if(quesDAO.getCnt()==1){
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
                    <div class="img_re">
                        <img alt="답변달린글" src="https://biztax.hscity.go.kr/hwaseong/image/ic_reply.gif">: 답변달린글&nbsp;&nbsp;
                        <img alt="비밀글" src="	https://biztax.hscity.go.kr/hwaseong/image/ic_password.gif">:비밀글
                    </div>
                    <div>
                    <%
						if(pageNumber != 1) {
					%>
					<form action="<%=cur_path %>/work.jsp" name="page<%=pageNumber - 1%>" method="POST" class="page<%=pageNumber - 1%>">
					<input type="hidden" name= "pageNumber" value="<%=pageNumber - 1%>" >
					<input type="hidden" name= "search_info" value="<%=search_info%>" >
					<input type="hidden" name= "select_option" value="<%=select_option%>" >
                	</form>
						<a onclick="subForm('action/ques_page_action.jsp','page<%=pageNumber - 1%>')" style="float:left;">이전</a>
					<%
						} if(quesDAO.nextPage(pageNumber + 1, search_info, select_option)) {
					%>
					<form action="<%=cur_path %>/work.jsp" name="page<%=pageNumber + 1%>" method="POST" class="page<%=pageNumber + 1%>">
					<input type="hidden" name= "pageNumber" value="<%=pageNumber + 1%>" >
					<input type="hidden" name= "search_info" value="<%=search_info%>" >
					<input type="hidden" name= "select_option" value="<%=select_option%>" >
                	</form>
						<a onclick="subForm('action/ques_page_action.jsp','page<%=pageNumber + 1%>')" style="float:left;">다음</a>
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