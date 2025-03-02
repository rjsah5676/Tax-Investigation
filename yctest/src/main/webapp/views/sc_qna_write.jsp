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

<body onload="init();">
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
				<li><a href="#" class="selected_menu">Q&A</a></li>
				<li><a onclick="movePage('views/sc_manager.jsp')">담당자안내</a></li>
				<li><a onclick="movePage('views/sc_survey.jsp')">설문</a></li>
			</ul>
		</div>
		<div class="wrap-right">
			<div class="wrap-right-title">
				<div class="wrap-right-img">
					<img class="sub-title_img" src="images/sub_title/sc_qna_title.png">
				</div>
				<div class="wrap-right-sub_depth">
					<img alt="처음으로" src="images/public/btnHomeTest.png"
						align="absmiddle"> <a onclick="movePage('')">Home</a> > 고객센터
					> Q&A
				</div>
			</div>
			<br>
			<div>
				
				<form action="<%=cur_path %>/work.jsp" method="post" name="write">
					<div name="sendFormFields" id="sendFormFields"
						style="display: none;"></div>
					<div class="org_8">* E-mail 체크하시면 메일로도 답변을 받아보실 수 있습니다.</div>
					<table width="100%" border="0" cellspacing="0" cellpadding="0"	
						class="t_blue">
						<tbody>
							<tr>
								<td width="130px" class="tdo_to_c"><a class="star_red">*</a>
									공개여부</td>
								<td width="200px" height="23px" class="tdw_l"><input
									title="공개" type="radio" id="switchTf" name="QnA_open_chk" value="T"
									checked="" style="border: 0" class=" left">공개&nbsp; <input
									title="비공개" type="radio" id="switchTf" name="QnA_open_chk"
									value="F" style="border: 0" class=" left">비공개</td>
								<td width="130px" height="23px" class="tdo_to_c">등록일자</td>
								<td width="200px" class="tdw_l"><input readonly id="nowdate" name="QnA_regisdate"></div>
								<script type="text/javascript">
									var a = new Date();
									var now = document.getElementById("nowdate");
									now.value = a.getFullYear()+"-"+(a.getMonth()+1)+"-"+a.getDate();
								</script>
								</td>
							</tr>
							<tr>
								<td class="tdo_to_c"><a class="star_red">*</a> 작 성 자</td>
								<td class="tdw_l"><input title="작성자" type="text"
									class="input_o required left" id="writer" name="QnA_Writer"
									value="" size="20" maxlength="10" iskor="Y" urequired="[작성자]"
									uminlen="2"></td>
								<td width="130px" class="tdo_to_c"><a class="star_red">*</a>
									비밀번호</td>
								<td class="tdw_l"><input title="비밀번호" type="password"
									class="input_o required left" id="pw" name="QnA_Pw" value=""
									size="8" maxlength="8" iscode="N" urequired="[비밀번호]"
									uminlen="4"></td>
							</tr>
							<tr>
								<td class="tdo_to_c">&nbsp;E-mail</td>
								<td colspan="3" class="tdw_l"><input title="이메일1"
									type="text" class="input_o left" id="emailAddr1"
									name="QnA_email1" value="" size="20" maxlength="20" uminlen="4"
									iscode="N"> @ <input title="이메일2" type="text"
									class="input_o left" id="emailAddr2" name="QnA_email2" value=""
									size="20" maxlength="20" uminlen="4" iscode="N"> <select
									title="이메일" id="email" name="QnA_email3" onclick="email_change()"
									class=" left">
										<option value="" selected="">직접입력</option>

										<option value="citizen.seoul.kr">서울시전자우편서비스</option>

										<option value="hanafos.com">하나포스닷컴</option>

										<option value="chollian.net">천리안</option>

										<option value="orgio.net">오르지오</option>

										<option value="korea.com">코리아닷컴</option>

										<option value="freechal.com">프리챌</option>

										<option value="hitel.net">하이텔</option>

										<option value="hanmir.com">한미르</option>

										<option value="hotmail.com">핫메일</option>

										<option value="unitel.co.kr">유니텔</option>

										<option value="nate.com">네이트</option>

										<option value="empal.com">엠파스/엠팔</option>

										<option value="nownuri.net">나우누리</option>

										<option value="hananet.net">하나넷</option>

										<option value="kornet.net">코넷</option>

										<option value="naver.com">네이버</option>

										<option value="netian.com">네띠앙</option>

										<option value="dreamwiz.com">드림위즈</option>

										<option value="paran.com">파란</option>

										<option value="lycos.co.kr">라이코스코리아</option>

										<option value="yahoo.co.kr">야후코리아</option>

										<option value="yahoo.com">야후</option>

								</select></td>
							</tr>
							<tr>
								<td class="tdo_to_c"><a class="star_red">*</a> 시군구</td>
								<td class="tdw_t_l" style="padding-left: 7px"><select
									title="구선택" id="siguCd" name="QnA_place" class=" left">


										<option value="590">영천시</option>

								</select></td>
								<td class="tdo_to_c"><a class="star_red">*</a> 전화번호</td>
								<td class="tdw_t_l" style="padding-left: 7pt"><input
									title="전화번호지역번호" id="tel0" name="QnA_phone1" type="text"
									class="input_o required left" size="3" maxlength="3"
									urequired="[전화번호]" uminlen="2" isonlynum="Y"> - <input
									title="전화번호앞자리" id="tel1" name="QnA_phone2" type="text"
									class="input_o required left" size="4" maxlength="4"
									urequired="[전화번호]" uminlen="3" isonlynum="Y"> - <input
									title="전화번호뒷자리" id="tel2" name="QnA_phone3" type="text"
									class="input_o required left" size="4" maxlength="4"
									urequired="[전화번호]" uminlen="4" isonlynum="Y"></td>
								<!-- 2008-03-28 전화번호 추가 - 여기까지 //-->

							</tr>


							<tr>
								<td class="tdo_to_c"><a class="star_red">*</a>
									제&nbsp;&nbsp;&nbsp;&nbsp;목</td>
								<td colspan="3" class="tdw_t_l" style="padding-left: 7pt">
									<input title="제목" type="text" class="input_o required left"
									id="title" name="QnA_title" value="" size="70" maxlength="70"
									iskor="Y" urequired="[제목]" uminlen="2">
								</td>
							</tr>
							<tr>
								<td colspan="4" class="tdw_l" style="padding: 10pt;"><textarea
										title="질문내용" id="question" name="QnA_content"
										class="input_o required left" cols="100" rows="20" iskor="Y"
										urequired="[질문]"></textarea></td>
							</tr>
						</tbody>
					</table>
					<div class="btn_r_org">
						<input type="button" onclick="doWrite('action/QnA_action.jsp')" value="저장"
							class=" left"> <input type="button"
							onclick="movePage('views/sc_qna.jsp')" value="목록" class=" left">
					</div>
				</form>

			</div>
		</div>
	</div>
	<div class="footer" id="footer"></div>
</body>

</html>