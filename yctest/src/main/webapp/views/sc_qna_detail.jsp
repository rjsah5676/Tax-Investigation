<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="QnA.cuscenter_qna_DAO"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Date"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.SimpleDateFormat"%> 
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
	<%
	String cur_path = request.getContextPath();
	String isLogin = (String) session.getAttribute("userId");
	cuscenter_qna_DAO qnaDAO = new cuscenter_qna_DAO();
	qnaDAO.viewUpdate(request.getAttribute("ret3").toString(),request.getAttribute("ret_n").toString());
    /* ResultSet rs=qnaDAO.loadBoard(ret); */
    String place = request.getAttribute("ret").toString();
	String tmp=request.getAttribute("ret2").toString();
	String regidate="";
	String[] strArray = tmp.split(" ");
	for(String s : strArray) {
		regidate = regidate+s; 
		break;
	}
	String viewnum = request.getAttribute("ret3").toString();
	String title = request.getAttribute("ret4").toString();
	String content = request.getAttribute("ret5").toString();
	String bef_title = request.getAttribute("ret_bef_title").toString();
	String aft_title = request.getAttribute("ret_aft_title").toString();
	String boardN = request.getAttribute("ret_n").toString();
	String befStr = request.getAttribute("ret_bef_num").toString();
	String aftStr = request.getAttribute("ret_aft_num").toString();
	String reply = request.getAttribute("ret_reply").toString();
	int bef_num = Integer.parseInt(befStr);
	int aft_num = Integer.parseInt(aftStr);
	int board_now = Integer.parseInt(boardN);
	int board_cnt = Integer.parseInt(request.getAttribute("ret_cnt").toString());
	%>
	<c:set var="isLogin" value="<%=isLogin %>"/>
	<c:set var="bef_num" value="<%=bef_num %>"/>
	<c:set var="board_now" value="<%=board_now %>"/>
	<c:set var="board_cnt" value="<%=board_cnt %>"/>
	<c:set var="reply" value="<%= reply %>"/>
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
				<li><a onclick="movePage('views/sc_notice.jsp')"
					>공지사항</a></li>
				<li><a onclick="movePage('views/sc_question.jsp')">자주묻는질문</a></li>
				<li><a onclick="movePage('views/sc_qna.jsp')" class="selected_menu">Q&A</a></li>
				<li><a onclick="movePage('views/sc_manager.jsp')">담당자안내</a></li>
				<li><a onclick="movePage('views/sc_survey.jsp')">설문</a></li>
			</ul>
		</div>
		<div class="wrap-right">
			<div class="wrap-right-title">
				<div class="wrap-right-img">
					<img class="sub-title_img"
						src="images/sub_title/sc_qna_title.png">
				</div>
				<div class="wrap-right-sub_depth">
					<img alt="처음으로" src="images/public/btnHomeTest.png"
						align="absmiddle"> <a onclick="movePage('')">Home</a> > 고객센터
					> 공지사항
				</div>
			</div>
			<br>
			<div>
				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					class="t_blue">
					<!-- 					<input type="hidden" id="fileTf" name="fileTf" value="F">
					<input type="hidden" id="fupNewFname" name="fupNewFname" value="">
					<input type="hidden" id="fupOldFname" name="fupOldFname" value="">
					<input type="hidden" id="fupFpath" name="fupFpath" value="">
					<input type="hidden" id="tableName" name="tableName"
						value="tnotice_bd"> -->
					<tbody>
						<tr>
							<td width="130px" class="tdo_to_c">구 분</td>
							<td width="200px" class="tdw_l" colspan="3"><%=place %></td>
						</tr>
						<tr>
							<td width="130px" class="tdo_to_c">등록일자</td>
							<td width="200px" class="tdw_l"><%=regidate%></td>
							<td width="130px" class="tdo_to_c">조회수</td>
							<td width="200px" class="tdw_l"><%=Integer.parseInt(viewnum)+1 %></td>
						</tr>
						<tr>
							<td class="tdo_to_c">제 목</td>
							<td colspan="3" class="tdw_t_l" style="padding-left: 7pt">
								<%=title %></td>
						</tr>
						<tr>
							<td colspan="4" class="tdw_l" style="padding: 10px;"><%=content %></td>
						</tr>
						<c:if test="${reply ne null}">
							<tr>
								<td class="tdo_to_c">답 변</td>
								<td colspan="3" class="tdw_l" style="padding: 10px;">
								<%= reply %>
								</td>
							</tr>
						</c:if>
					</tbody>
				</table>

			</div>

			<div class="btn_r_org">
				<input type="button" onclick="movePage('views/sc_qna.jsp')"
					value="목록" class="btn_org">
			</div>
			<div>
				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					class="t_blue">
					<tbody>
						<tr>
							<td width="130px" class="tdo_to_c">이전글</td>
							
							
						<form action="<%=cur_path %>/work.jsp" name="action<%=befStr%>" method="POST" class="action<%=befStr%>">
                		<input type="hidden" name= "boardNum" value="<%=befStr%>" >
                		</form>						
							<td class="tdw_l" style="padding-left: 10px">
							<c:if test="${bef_num ne 0}">
							<a onclick="subForm('action/QnA_action2.jsp','action<%=befStr%>')">
							</c:if>
							<%=bef_title %>
							</a></td>
						</tr>
						<tr>
							<td class="tdo_to_c">다음글</td>
							<form action="<%=cur_path %>/work.jsp" name="action<%=aftStr%>" method="POST" class="action<%=aftStr%>">
                		<input type="hidden" name= "boardNum" value="<%=aftStr%>" >
                		</form>						
							<td class="tdw_l" style="padding-left: 10px">
							<c:if test="${board_now ne board_cnt-1}">
							<a onclick="subForm('action/QnA_action2.jsp','action<%=aftStr%>')">
							</c:if><%=aft_title %>
							</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="footer" id="footer"></div>
</body>

</html>