<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	%>
<div id="formSet"></div>
	<div class="top" id="top"></div>
	<div class="nav-wrapper__hd" id="nav"></div>
	<div class="wrap">
		<div class="wrap-logo">
			<img src="images/public/yctest2.png">
		</div>
		<div class=wrap-left>
			<div class="wrap-left-title">고객센터</div>
			<ul>
				<li><a onclick="movePage('views/sc_notice.jsp')"
					class="selected_menu">공지사항</a></li>
				<li><a onclick="movePage('views/sc_question.jsp')">자주묻는질문</a></li>
				<li><a onclick="movePage('views/sc_qna.jsp')">Q&A</a></li>
				<li><a onclick="movePage('views/sc_manager.jsp')">담당자안내</a></li>
				<li><a onclick="movePage('views/sc_survey.jsp')">설문</a></li>
			</ul>
		</div>
		<div class="wrap-right">
			<div class="wrap-right-title">
				<div class="wrap-right-img">
					<img class="sub-title_img"
						src="images/sub_title/sc_notice_title.png">
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
							<td width="200px" class="tdw_l">영천시</td>
							<td width="130px" class="tdo_to_c">첨부파일</td>
							<td class="tdw_l"><a href="#download" onclick="download();"
								class="txt_o11"> <font color="#EA6E00"></font>
							</a></td>
						</tr>
						<tr>
							<td width="130px" class="tdo_to_c">등록일자</td>
							<td width="200px" class="tdw_l">2020-07-07</td>
							<td width="130px" class="tdo_to_c">조회수</td>
							<td width="200px" class="tdw_l">0</td>
						</tr>
						<tr>
							<td class="tdo_to_c">제 목</td>
							<td colspan="3" class="tdw_t_l" style="padding-left: 7pt">
								temp</td>
						</tr>
						<tr>
							<td colspan="4" class="tdw_l" style="padding: 10px;"><pre>temp.</pre>&nbsp;</td>
						</tr>
					</tbody>
				</table>

			</div>

			<div class="btn_r_org">
				<input type="button" onclick="movePage('views/sc_notice.jsp')"
					value="목록" class="btn_org">
			</div>
			<div>
				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					class="t_blue">
					<tbody>
						<tr>
							<td width="130px" class="tdo_to_c">이전글</td>
							<td class="tdw_l" style="padding-left: 10px"><a href="#"
								onclick="#"> # </a></td>
						</tr>
						<tr>
							<td class="tdo_to_c">다음글</td>
							<td class="tdw_l" style="padding-left: 10pt"><a href="#"
								onclick="#"> # </a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="footer" id="footer"></div>
</body>

</html>