
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<body onload="init(); noQnA();">
	<% String cur_path = request.getContextPath(); 
		String isLogin = (String) session.getAttribute("userId");
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
				<li><a onclick="movePage('views/sc_question.jsp')">자주묻는질문</a></li>
				<li><a onclick="movePage('views/sc_qna.jsp')">Q&A</a></li>
				<li><a onclick="movePage('views/sc_manager.jsp')">담당자안내</a></li>
				<li><a href="#" class="selected_menu">설문</a></li>
			</ul>
		</div>
		<div class="wrap-right">
			<div class="wrap-right-title">
				<div class="wrap-right-img">
					<img class="sub-title_img"
						src="" alt="설문">
				</div>
				<div class="wrap-right-sub_depth">
					<img alt="처음으로" src="images/public/btnHomeTest.png"
						align="absmiddle"> <a onclick="movePage('')">Home</a> > 고객센터
					> 설문
				</div>
			</div>
			<br>
			<div>
				<div class="wrap-right__option">
					<form action="">
						<select name="" id="">
							<option>제목 + 내용</option>
							<option>제목</option>
						</select> <input type="text"> <input type="submit" value="검색">
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
						<!--
						<tr>
							<td>1</td>
							<td style="text-align: left"><a href="#"
								onclick="movePage('')"></a></td>	
							<td>0&nbsp;</td>
							<td>2021-07-07&nbsp;</td>
						</tr>
						 -->
					</table>
				</div>
				</div>
				</div>
				</div>
	<div class="footer" id="footer"></div>
</body>

</html>