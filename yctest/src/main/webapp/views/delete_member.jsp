<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>법인세무조사 인터넷신고시스템</title>
<link rel="stylesheet" type="text/css" href="css/public.css">
<link rel="stylesheet" type="text/css" href="css/mypage.css">
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/public.js"></script>
</head>

<body onload="init();">
	<% String cur_path = request.getContextPath(); 
	String isLogin = (String) session.getAttribute("userId");
	String fail = (String) request.getAttribute("fail");
		if(fail == "fail") out.println("<script>alert('사업자등록번호를 확인해주세요.');</script>");
	%>
	<c:set var="isLogin" value="<%=isLogin %>"/>
<div id="formSet"></div>
	<div class="top" id="top" value="<%= isLogin %>"></div>
	<div class="nav-wrapper__hd" id="nav"></div>
	<div class="wrap">
		<div class="wrap-logo">
			<img src="images/public/yctest4.png">
		</div>
		<div class="wrap-left">
			<div class="wrap-left-title">마이페이지</div>
			<ul>
				<li><a onclick="movePage('views/manage_info.jsp')"
					class="selected_menu">정보관리</a>
					<div class="manage-wrap-left-title_sub">

						<ul>
							<li><a onclick="movePage('views/manage_info.jsp')">기본정보관리</a>
							</li>

							<li><a onclick="movePage('views/manage_agent.jsp')">대리인관리</a>
							</li>

							<li><a href="#" class="selected_menu">회원탈퇴</a></li>
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
					Page > 정보관리 > 회원탈퇴
				</div>
				<br>
				<div class="wrap-right-content">
					<img alt="정보관리" src="images/mypage/title_5_1_3_1.gif">
					<form action="<%=cur_path %>/work.jsp" method="post" style="margin:0" name="write">
						<input type="hidden" name="actionName" value="action/delete_member_action.jsp"/>
						<div name="sendFormFields" id="sendFormFields"
							style="display: none;"></div>
						<div class="manage-box_blue">
							<table width="100%" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td class="manage-tdw_c" style="padding-top: 5px"><br />
										<table width="80%" border="0" cellpadding="0" cellspacing="2"
											style="margin-left: 80px">
											<tr>
												<td rowspan="2"><img alt=""
													src="images/mypage/title_5_1_3_2.gif" width="77"
													height="71" /></td>

												<td style="text-align: left; padding-left: 10pt">법인 확인을
													위하여 회원가입 시 등록한 사업자등록번호를 확인 탈퇴처리를 해 드리고 있습니다.<br />사업자등록번호를
													입력하여 주십시오.
												</td>

											</tr>
											<tr>
												<td class="manage-txt_s11"
													style="text-align: left; padding-left: 50px"><br />
													<table border="0" cellspacing="0" cellpadding="0"
														width="100%">
														<tr>
															<td width="100px">사업자등록번호</td>
															<td class="manage-tdw_l">&nbsp;<input title="사업자번호"
																name="Prv_company_reg_num1" type="text"
																class="input_g" isOnlyNum="Y" uminlen="3" size="3" placeholder = "000"
																maxlength="3" /> - <input
																title="사업자번호" name="Prv_company_reg_num2" type="text"
																class="input_g" isOnlyNum="Y" uminlen="2" size="2" placeholder = "00"
																maxlength="2" value="" urequired="[사업자번호]" /> - <input
																title="사업자번호" name="Prv_company_reg_num3" type="text"
																class="input_g" isOnlyNum="Y" uminlen="5" size="5" placeholder = "00000"
																maxlength="5" value="" urequired="[사업자번호]" />
															</td>
														</tr>
													</table></td>
											</tr>
										</table></td>
								</tr>
								<tr>
									<td class="manage-tdw_c"><img alt=""
										src="images/mypage/line.gif" /></td>
								</tr>
							</table>
							<div class="manage-btn_c">
								<input type="button" value="확인" onclick="deleteConfirm()"/> <input
									type="button" onclick="frmClear()" value="취소" />
							</div>

						</div>
					</form>

					<div id="loaded"></div>

					<!-- 반드시 이곳에서 기술한다. -->

				</div>

			</div>

		</div>


	</div>
	</div>
	</div>
	<div class="footer" id="footer"></div>
</body>

</html>