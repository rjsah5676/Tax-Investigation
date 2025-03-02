<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="company.company_table_DAO"%>
<%@ page import="company.companyVO"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.StringTokenizer" %>
<html>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>법인세무조사 인터넷신고시스템</title>
<link rel="stylesheet" type="text/css" href="css/public.css">
<link rel="stylesheet" type="text/css" href="css/mypage.css">
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript">
	function passwd_input(gubun) {
		if (gubun == "pwlayer") {
			pwlayer.style.display = 'block';
			pwlayer1.style.display = 'block';
			setVlalue('pwChangeChk', '1');
		} else {
			pwlayer.style.display = 'none';
			pwlayer1.style.display = 'none';
			setVlalue('pwChangeChk', '0');
		}
	}
</script>
</head>

<body onload="init();">
	<%
	String cur_path = request.getContextPath();
	String isLogin = (String) session.getAttribute("userId");
	String Cor_Reg_Number = (String) session.getAttribute("Cor_Reg_Number");
	String[] cor_num = new String[2];
	cor_num[0] = Cor_Reg_Number.substring(0,6);
	cor_num[1] = Cor_Reg_Number.substring(6,13);
	String[] com_num = new String[3];
	companyVO infoList;
	infoList = company_table_DAO.loadbyCor(Cor_Reg_Number);
	com_num[0] = infoList.getPrv_company_reg_num().substring(0,3);
	com_num[1] = infoList.getPrv_company_reg_num().substring(3,5);
	com_num[2] = infoList.getPrv_company_reg_num().substring(5,10);
	StringTokenizer email = new StringTokenizer(infoList.getPrv_email(),"@");
	StringTokenizer phonenum = new StringTokenizer(infoList.getPrv_phonenum(),"-");
	StringTokenizer mphonenum = new StringTokenizer(infoList.getPrv_mphonenum(),"-");
	%>
	<c:set var="isLogin" value="<%=isLogin%>" />
	<div id="formSet"></div>
	<div class="top" id="top" value="<%=isLogin%>"></div>
	<div class="nav-wrapper__hd" id="nav"></div>
	<div class="wrap">
		<div class="wrap-logo">
			<img src="images/public/yctest4.png">
		</div>
		<div class="wrap-left">
			<div class="wrap-left-title">마이페이지</div>
			<ul>
				<li><a href="#" class="selected_menu">정보관리</a>
					<div class="manage-wrap-left-title_sub">

						<ul>
							<li><a href="#" class="selected_menu">기본정보관리</a></li>


							<li><a onclick="movePage('views/manage_agent.jsp')">대리인관리</a></li>


							<li><a onclick="movePage('views/delete_member.jsp')">회원탈퇴</a></li>
						</ul>

					</div></li>
				<li><a onclick="movePage('views/view_report_target.jsp')">
						<span>신고대상여부조회</span>
				</a></li>
				<li><a onclick="movePage('views/view_submit.jsp')">접수결과조회</a></li>
			</ul>
		</div>
		<div class="wrap-right">
			<div class="manage-wrap-right-img">
				<img class="sub-title_img"
					src="images/sub_title/my_manage_title.png">
			</div>
			<div class="wrap-right-sub_depth">
				<img alt="처음으로" src="images/public/btnHomeTest.png"
					align="absmiddle"> <a onclick="movePage('')">Home</a> > My
				Page > 정보관리 > 기본정보관리
			</div>
			<div class="wrap-right-content">
				<img alt="기본정보관리" src="images/mypage/title_5_1_1_1.gif">
				<form action="<%=cur_path %>/work.jsp" method="post" style="margin:0" name="write">
				<input type="hidden" name="Cor_Reg_Number" value="<%= Cor_Reg_Number %>"/>
				<input type="hidden" name="actionName" value="action/manage_info_action.jsp"/>
					<div name="sendFormFields" id="sendFormFields"
						style="display: none;"></div>
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="manage-tb_b">
						<tr>
							<th width="100px" class="nostar">법인여부</th>
							<td>
								법인
							</td>
						</tr>

						<tr>
							<th><span class="star_red">*</span> 업 체 명</th>
							<td><input name="Prv_company_name" <% if(infoList != null) { %>
								value="<%= infoList.getPrv_company_name() %>"
								<% } %>/> <span
								class="org_8">* (주)등의 특수문자는 기술하지 않습니다.</span></td>
						</tr>

						<tr>
							<th class="nostar">아이디</th>
							<td>
								<% if(infoList != null) { %>
								<%= infoList.getPrv_id() %>
								<% } %>
							</td>
						</tr>
						<tr>
							<th><span class="star_red">*</span> 비밀번호</th>
							<td><div style="padding-top: 3px">
									<input type="radio" id="pwChangeChk" name="pwChangeChk"
										value="0" onclick="passwd_input('0')" checked class="input_w" />아니오
									&nbsp; <input type="radio" id="pwChangeChk" name="pwChangeChk"
										value="1" onclick="passwd_input('pwlayer')" class="input_w" />예
									&nbsp;&nbsp; &nbsp;<span class="org_8"> * 비밀번호를 변경하실
										경우에만 "예"를 선택하세요.</span>
<!-- 								</div> 비빌번호 -->
<!-- 								<div id="pwlayer" 이 기능 추가할 것-->
<!-- 									style="display: block; margin-top: 10px; height: 30px;"> -->
<!-- 									<div style="width: 200px; float: left; margin-top: 4px;"> -->
<!-- 										<input type="password" name="Prv_passw"/> -->
<!-- 									</div> -->
<!-- 									<div style="width: 350px; float: left; margin-left: 5px;"> -->
<!-- 										<span class="org_8">* 영문,숫자,특수문자 세가지 혼합 9~15자,4자 이상의 연속 -->
<!-- 											또는 <br> &nbsp;&nbsp;&nbsp;&nbsp;반복 문자 및 숫자 사용불가 -->
<!-- 										</span> -->
<!-- 									</div> -->
<!-- 								</div> -->
						</tr>
					</table>
						<input type="hidden" name="Prv_passw" value="<%= infoList.getPrv_passw() %>"/>
<!-- 					<div id="pwlayer1" -->
<!-- 						style="position: relative; display: none; margin-top: 0px; height: 0px;"> -->
<!-- 						<table width="100%" border="0" cellspacing="0" cellpadding="0" -->
<!-- 							class="manage-tb_b" style="border-top: 0"> -->
<!-- 							<tr> -->
<!-- 								<th width="110px"><span class="star_red">*</span> 비밀번호 확인</th> -->
<!-- 								<td><input title="패스워드확인" id="userPw2" name="userPw2" -->
<!-- 									type="password" size="30" uminlen='10' maxlength="15" -->
<!-- 									autocomplete="off" /></td> -->
<!-- 							</tr> -->
<!-- 						</table> -->
<!-- 					</div> -->
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="manage-tb_b" style="border-top: 0" id="bubin_layer">
						<tr>
							<th width="110px"><span class="star_red">*</span> 법인등록번호</th>
							<td width="580px"><input name="Cor_Reg_Number1" style="background-color:#D4F4FA" value="<%= cor_num[0] %>" readonly /> - <input name="Cor_Reg_Number2"/ style="background-color:#D4F4FA" value="<%= cor_num[1] %>" readonly ></td>
						</tr>
					</table>
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="manage-tb_b" style="border-top: 0">
						<tr>
							<th width="110px"><span class="star_red">*</span> 사업자등록번호</th>
							<td><input type="hidden" id="saupjaId" name="saupjaId"
								value="5058301467" /> <input name="Prv_company_reg_num1"/  style="background-color:#D4F4FA" value="<%= com_num[0] %>" readonly > - <input name="Prv_company_reg_num2"  style="background-color:#D4F4FA" value="<%= com_num[1] %>" readonly />
								 - <input name="Prv_company_reg_num3" style="background-color:#D4F4FA" value="<%= com_num[2] %>" readonly /></td>
						</tr>

						<tr>
							<th width="110px" height="23"><span class="star_red">*</span>
								대 표 자</th>
							<td><input name="Prv_cor_repre" <% if(infoList != null) { %>
								value="<%= infoList.getPrv_cor_repre() %>"
								<% } %>/></td>
						</tr>

						<tr>
							<th width="110px" height="23"><span class="star_red">*</span>
								상세주소<br />&nbsp;&nbsp;(상세주소)</th>
							<td style="padding-left: 0">
								<!-- 도로명 주소  -->
								<div id="gdlayer2" style="display: block">
									<dl>
										<dd class="manage-under">
											<input id="dMailCd1" name="dMailCd1" type="text" size="6"
												style="text-align: center" title="우편번호" value='#'
												class="input_readonly" readonly />
											<!-- 
                                                                -
                                                                <input id="dMailCd2" name="dMailCd2" type="text" size="3" value='' 
                                                                title="우편번호 뒷자리" class="input_readonly" readonly />
                                                             -->
											<input type="button" value="우편번호" onclick="openjusoPopup();"
												class="manage-juso_btn" /> <input id="dDoroAddr"
												name="dDoroAddr" title="주소검색" type="text" size="50"
												maxlength="70" value='#' class="input_readonly" readonly />
											<input id="mailSiguCd" name="mailSiguCd" type="hidden"
												value="999" /> <input title="우편번호" type="hidden"
												id="mailAddr" name="mailAddr" size="40" value="#"
												uRequired='[우편번호]' class="input_w" readonly />

										</dd>
										<dd class="manage-under1">
											<input id="dSidoName" name="dSidoName" type="hidden" value='' />
											<input id="dSiguName" name="dSiguName" type="hidden" value='' />
											<input id="dDongName" name="dDongName" type="hidden" value='' />
											<input id="dBldName" name="dBldName" type="hidden" value='' />
											<input id="dDoroName" name="dDoroName" type="hidden" value='' />
											<input id="dDoroCd" name="dDoroCd" type="hidden" value='' />
											<input id="dDoroNo" name="dDoroNo" type="hidden" value='' />
											<input id="dBldBon" name="dBldBon" type="hidden" value='' />
											<input id="dBldBu" name="dBldBu" type="hidden" value='' /> <input
												id="dUndYn" name="dUndYn" type="hidden"/> 상세주소
												<input name="Prv_detail_addr" value="<%= infoList.getPrv_detail_addr() %>" style="background-color:#D4F4FA" readonly/> 도로주소참고항목<input
												id="dReffAddr" name="dReffAddr" type="text" size="40"
												maxlength="70" value='#' title="도로주소 참고항목" />
										</dd>
									</dl>
								</div>

							</td>
						</tr>
						<tr>
							<th width="110px" height="23"><span class="star_red">*</span>
								E-mail</th>
							<td><input name="Prv_email1" <% if(infoList != null) { %>
								value="<%= email.nextToken() %>"
								<% } %>/> @ <input name="Prv_email2" <% if(infoList != null) { %>
								value="<%= email.nextToken() %>"
								<% } %>/> 
							<select title="이메일선택" id="email" name="email"
								onclick="email_change()">
									<option value="" selected="seletecd">직접입력</option>

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
							<th width="110px" height="23"><span class="star_red">*</span>
								전화번호</th>
							<td><input name="Prv_phonenum1"/ <% if(infoList != null) { %>
								value="<%= phonenum.nextToken() %>"
								<% } %>> - <input name="Prv_phonenum2" <% if(infoList != null) { %>
								value="<%= phonenum.nextToken() %>"
								<% } %>/> - <input name="Prv_phonenum3" <% if(infoList != null) { %>
								value="<%= phonenum.nextToken() %>"
								<% } %>/></td>
						</tr>
						<tr>
							<th width="100px" class="nostar">휴대폰 번호</th>
							<td><input name="Prv_mphonenum1" <% if(infoList != null) { %>
								value="<%= mphonenum.nextToken() %>"
								<% } %>/> - <input name="Prv_mphonenum2" <% if(infoList != null) { %>
								value="<%= mphonenum.nextToken() %>"
								<% } %>/> -
								<input name="Prv_mphonenum3" <% if(infoList != null) { %>
								value="<%= mphonenum.nextToken() %>"
								<% } %>/></td>
						</tr>
					</table>
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="manage-tb_b" style="border-top: 0" id="damdang_layer">
						<tr>
							<th width="110px"><span class="star_red">* </span>관리자</th>
							<td width="580px"><input name="Prv_manager" <% if(infoList != null) { %>
								value="<%= infoList.getPrv_manager() %>"
								<% } %>/></td>
						</tr>
					</table>
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="manage-tb_b" style="border-top: 0">
						<tr>
							<th width="110px"><span class="star_red">*</span> E-mail 수신</th>
							<td><input type="radio" id="emailYn"  name="Prv_email_recep" value="1"  class="input_w" 
                                                            checked />
                                                            수신
                                                            <input type="radio" id="emailYn"  name="Prv_email_recep" value="0"  class="input_w" 
                                                             />
                                                            수신거부 
						</tr>
					</table>
					<div class="manage-btn_c">
						<input type="submit" value="저장">
						<input type="button" onclick="executeReset()" value="취소" />
					</div>
				</form>

			</div>

		</div>

	</div>
	</div>
	</div>
	</div>
	<div class="footer" id="footer"></div>
</body>

</html>