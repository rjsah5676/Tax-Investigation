<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="question.cuscenter_ques_DAO"%>
<%@ page import="question.quesVO"%>
<%@ page import="notice.cuscenter_notice_DAO"%>
<%@ page import="notice.noticeVO"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<html>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>법인세무조사 인터넷신고시스템</title>
<link rel="stylesheet" type="text/css" href="css/public.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript">
	function Action_site1() {
		document.getElementById('site1').style.display = '';
		document.getElementById('site2').style.display = 'none';
	}
	function Action_site2() {
		document.getElementById('site1').style.display = 'none';
		document.getElementById('site2').style.display = '';
	}
</script>
</head>

<body onload="init();">
	<%
	String cur_path = request.getContextPath();
	String isLogin = (String) session.getAttribute("userId"); 
	%>
	<c:set var="isLogin" value="<%=isLogin %>"/>
	<div id="formSet"></div>
	<form id="downPDF" action="<%= cur_path %>"+"/work.jsp" method="post"></form>
	<form action="<%=cur_path %>/work.jsp" name='pdfPage' method="post"></form>
	<div class="top" id="top" value="<%= isLogin %>"></div>
	<div class="nav-wrapper__hd" id="nav"></div>
	<div class="main-wrap">
		<div class="main-wrap__conleft">
			<div class="main-wrap__conleft__log">
			<c:if test="${isLogin eq null}">
				<form id="login" method="post"
					action="<%=cur_path %>/work.jsp">
					<!-- 로그인 후 히든 리스트 -->
					<dl>
						<dt>
							<label for="userId">아이디</label>
						</dt>
						<dd>
							<input name="userId" class="main-wrap__conleft__log__userId"
								maxlength="13" placeholder = "ID" />
						</dd>
						<dt>
							<label for="userPw">비밀번호</label>
						</dt>
						<dd>
							<input type=password name="userPw"
								class="main-wrap__conleft__log__userPw" maxlength="15" placeholder = "P/W" />
						</dd>
					</dl>
					<div class="main-wrap__conleft__log__logbtn">
						<a onclick="doAction('action/login_action.jsp', 'login')"> <img src="images/main/login_btn.png"
							alt="login" width="40px">
						</a>
					</div>
					<div class="main-wrap__conleft__log__find">
						<ul>
							<li><a onclick="movePage('/views/ac_signup.jsp');">회원가입</a></li>
							<li><a onclick="movePage('/views/ac_findaccount.jsp');">아이디/비밀번호찾기</a></li>
						</ul>
					</div>
					</form>
					</c:if>
					<!-- 로그인 이미지, 회원가입, 아이디/비밀번호 찾기 버튼으로 바꾸고, 온클릭 추가해야함 -->
					<!-- <input type="hidden" name="src"  id="src" size="40" value="" /> -->
					<c:if test="${isLogin ne null}">
					<!-- 로그인 후 히든 리스트 -->
						<div class="main-wrap__conleft__log__after">
						<div style="text-align: center; padding-top: 35px;">
							<b><%= isLogin %></b>님 감사합니다.
						</div>
						<div class="main-wrap__conleft__log__find main-wrap__conleft__log__out">
							<ul style="text-align: center;">
								<li><a onclick="doAction('action/logout_action.jsp', 'logout')">로그아웃</a></li>
							</ul>
						</div>
						</div>
					</form>
					</c:if>
			</div>
			<div class="main-wrap__conleft__icon">
				<div class="main-wrap__conleft__icon__img">
					<div class="main-wrap__conleft__icon__img1">
						<img width="75px" height="75px" src="images/main/m_icon1.gif"
							alt="담당자안내">
					</div>
					<div class="main-wrap__conleft__icon__img2" style="display: none">
						<img width="75px" height="75px" src="images/main/m_icon4.gif"
							alt="Q&amp;A">
					</div>
					<div class="main-wrap__conleft__icon__img3" style="display: none">
						<img width="75px" height="75px" src="images/main/m_icon2.gif"
							alt="서식자료">
					</div>
				</div>
				<ul class="main-wrap__conleft__icon__text">
					<li><a onclick="movePage('views/sc_manager.jsp')"
						onmouseover="menuclick('img1')">담당자 안내</a></li>
					<li><a onclick="movePage('views/sc_qna.jsp')"
						onmouseover="menuclick('img2')">Q&amp;A</a></li>
					<li><a onclick="movePage('views/iv_archives.jsp')"
						onmouseover="menuclick('img3')">서식자료</a></li>
				</ul>
			</div>
			<div class="main-wrap__conleft__bann">
				<div class="main-wrap__conleft__bann__tot">
					<div class="main-wrap__conleft__bann__tot__a1_1">
						<!-- 온클릭 -->
						<a href="#playVideo" onclick="playVideo()"> <span
							class="main-wrap__conleft__bann__tot__a1_1__sp1"> 처음 신고하시면
								꼭 보세요!</span><br> 인터넷신고<span
							class="main-wrap__conleft__bann__tot__a1_1__sp2">동영상 보기</span>
						</a>
					</div>
					<div class="main-wrap__conleft__bann__tot__a1">
						<div class="main-wrap__conleft__bann__tot__a1_2">
							<span style="color: #2f318f">회계프로그램자료</span><br> <a
								onclick="pdfPages('1')">PDF파일변환 안내보기</a>
						</div>
						<div class="main-wrap__conleft__bann__tot__a1_3">
							<a href="">매직 PDF설치</a>
						</div>
					</div>
				</div>

			</div>
		</div>
		<div class="main-wrap__concenter">
			<div class="main-wrap__concenter__report">
				<div class="main-wrap__concenter__report__title">
					<span>법인세무조사 인터넷 신고 바로가기</span>
				</div>
				<div class="main-wrap__concenter__report__list">
					<ul>
						<!-- 온클릭 추가 -->
						<li><a onclick="movePage('views/view_report_target.jsp')"><img
								width="87px" height="124px" src="images/main/01.png"
								alt="1.신고대상확인"></a></li>
						<li><a onclick="movePage('views/fr_corpstat.jsp')"><img
								width="87px" height="124px" src="images/main/02.png"
								alt="2.신고서작성"></a></li>
					<% if(isLogin != null) { %>
						<li><a onclick="movePage('views/lr_print.jsp')"><img
								width="87px" height="124px" src="images/main/03.png"
								alt="3.신고서출력"></a></li>
						<% } else { %>
						<li><a onclick="movePage('views/no_page.jsp')"><img
								width="87px" height="124px" src="images/main/03.png"
								alt="3.신고서출력"></a></li>
						<% } %>
						<li><a onclick="movePage('views/lr_result.jsp')"><img
								width="87px" height="124px" src="images/main/04.png"
								alt="4.세무조사결과확인"></a></li>
					</ul>
				</div>
			</div>
			<div class="main-wrap__concenter__notice">
				<div id="site1" class="gq_layer">
					<div class="main-wrap__concenter__notice__gqlayer__bar">
						<div class="main-wrap__concenter__notice__gqlayer__bar__tap1">
							<a href="#" onclick="Action_site1()">공지사항</a>
						</div>
						<div class="main-wrap__concenter__notice__gqlayer__bar__tap2">
							<a href="#" onclick="Action_site2()">자주묻는질문</a>
						</div>
						<span class="main-wrap__concenter__notice__gqlayer__bar__more">
							<a onclick="movePage('views/sc_notice.jsp')" title="공지사항 more">
								<img src="images/main/more.gif" alt="공지사항 more">
						</a>
						</span>
						</div>
						<table width="100%" border="0" cellspacing="0" cellpadding="0" >
										<%
		                        cuscenter_notice_DAO noticeDAO = new cuscenter_notice_DAO();
		                        ArrayList<noticeVO> list = noticeDAO.getList(1, "", "1");
		                        int cnt = Math.min(5,noticeDAO.getCnt()-1);
		                        for(int i=0;i<cnt;i++){
								%>
								<tr>
									<% int tmp = list.get(i).getNoticeboard_num(); %>
									<form action="<%=cur_path %>/work.jsp" name="action<%=tmp%>" method="POST" class="action<%=tmp%>">
		                			<input type="hidden" name= "boardNum" value="<%=tmp%>" >
		                			</form>
								
								<td width="70%"><a onclick="subForm('action/notice_action2.jsp','action<%=tmp%>')"><%=list.get(i).getNotice_title() %></a></td>
								
								<td><%=list.get(i).getNotice_regisdate() %></td>
								
								<%
								
								}
								
								%>
		                        <!--  검색된 결과가 없을 경우 - 여기부터  -->
		                        <%
		                        if(noticeDAO.getCnt()==1){
		                        %>
		
		                         <tr>
		                            <td colspan="2">&nbsp;
		                                * 검색된 결과가 없습니다.
		                            </td>
		                        </tr>
		                        <%
		                        }
		                        %>
							</table>

				</div>

				<div id="site2" class="gq_layer" style="display: none;">
					<div class="main-wrap__concenter__notice__gqlayer__bar">
						<div class="main-wrap__concenter__notice__gqlayer__bar__tap2">
							<a href="#" onclick="Action_site1()">공지사항</a>
						</div>
						<div class="main-wrap__concenter__notice__gqlayer__bar__tap1">
							<a href="#" onclick="Action_site2()">자주묻는질문</a>
						</div>
						<span class="main-wrap__concenter__notice__gqlayer__bar__more">
							<a onclick="movePage('views/sc_question.jsp')" title="질문 more">
								<img src="images/main/more.gif" alt="질문 more">
						</a>
						</span>
						</div>
						
							<table width="100%" border="0" cellspacing="0" cellpadding="0" >
										<%
		                        cuscenter_ques_DAO quesDAO = new cuscenter_ques_DAO();
		                        ArrayList<quesVO> queslist = quesDAO.getList(1, "", "1");
		                        int quescnt = Math.min(5,quesDAO.getCnt()-1);
		                        for(int i=0;i<quescnt;i++){
								%>
								<tr>
									<% int tmp = queslist.get(i).getNoticeboard_num(); %>
									<form action="<%=cur_path %>/work.jsp" name="ques_action<%=tmp%>" method="POST" class="ques_action<%=tmp%>">
		                			<input type="hidden" name= "boardNum" value="<%=tmp%>" >
		                			</form>
								
								<td width="70%"><a onclick="subForm('action/ques_action2.jsp','ques_action<%=tmp%>')"><%=queslist.get(i).getQues_title() %></a></td>
								
								<td><%=queslist.get(i).getQues_regisdate() %></td>
								
								<%
								
								}
								
								%>
		                        <!--  검색된 결과가 없을 경우 - 여기부터  -->
		                        <%
		                        if(quesDAO.getCnt()==1){
		                        %>
		
		                         <tr>
		                            <td colspan="2">&nbsp;
		                                * 검색된 결과가 없습니다.
		                            </td>
		                        </tr>
		                        <%
		                        }
		                        %>
							</table>

			
				</div>
				<!-- 서버에서 가지고 오고 실험 -->
				<!-- layer하나 더있어야함 -->
			</div>

			<div class="main-wrap__concenter__useinfo">
				<div class="main-wrap__concenter__useinfo__tot">
					<div class="main-wrap__concenter__useinfo__tot__a1">
						<div class="main-wrap__concenter__useinfo__tot__a1_2">
							시스템 <span style="color: #0B80CF">메뉴얼</span><br> <a href="#"
								target="_blank" rel="noreferrer" title="새창으로 가기">인터넷 신고 시스템
								안내서</a>
						</div>
						<div class="main-wrap__concenter__useinfo__tot__a1_3">
							<a onclick="doAction('action/main_filedownload_action.jsp', 'downPDF')">PDF뷰어설치</a>
							<!-- onclick="doAction('action/login_action.jsp', 'login')"> -->
						</div>
					</div>
					<div class="main-wrap__concenter__useinfo__tot__a1_1">
						<!-- 온클릭 -->
						<a onclick="movePage('views/ug_guide.jsp')"> 세무조사신고 <span style="color: #0B80CF">이용안내</span> <br />
							<span class="main-wrap__concenter__useinfo__tot__a1_1__sp1">인터넷으로
								빠르고 편리하게</span>
						</a>
					</div>
				</div>

			</div>



		</div>
		<div class="main-wrap__conright">
			<div class="main-wrap__conright_r">
				<img src="images/main/mainImg.png" alt="영천시청" />
			</div>
		</div>
	</div>
	<div class="footer" id="footer"></div>
</body>

</html>