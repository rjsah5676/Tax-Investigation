<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="charge.cuscenter_charge_DAO"%>
<%@ page import="charge.chargeVO"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
    <html>

        <head>
            <meta charset="utf-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <title>영천시 법인세무조사 관리자</title>
            <link rel="stylesheet" type="text/css" href="../css/public.css">            
			<link rel="stylesheet" type="text/css" href="../css/lookupNservice.css">
                    <script type="text/javascript" src="../js/jquery-1.12.4.min.js"></script>
                    <script type="text/javascript" src="../js/admin.js"></script>
                </head>

                <body onload="init();">
                	<% String cur_path = request.getContextPath(); 
            		String isLogin = (String) session.getAttribute("userId");
					%>
					<div id="formSet"></div>
                    <div class="top" id="top"></div>
                    <div class="nav-wrapper__hd" id="nav"></div>
                    <div class="wrap">
                        <div class="wrap-logo">
                            <img src="../images/public/yctest4.png"></div>
                            <div class="wrap-left">
                                <div class="wrap-left-title">
                                    고객센터관리
                                </div>
                                <ul>
									<li><a onclick="movePage('ad_admin_notice.jsp')">공지사항</a></li>
									<li><a onclick="movePage('ad_admin_ques.jsp')">자주묻는질문</a></li>
									<li><a onclick="movePage('ad_admin_qna.jsp')">Q&A</a></li>
									<li><a href="#" class="selected_menu">담당자안내</a></li>
									<li><a onclick="movePage('ad_admin_survey.jsp')">설문</a></li>
								</ul>
                            </div>
                            <div class="wrap-right">
                                <div class="wrap-right-img">
                                    <img alt="서브타이틀" class="sub-title_img"  src="../images/sub_title/sc_question_title.png">
                                </div>
                                    <div class="wrap-right-sub_depth">
                                        <img alt="처음으로" src="../images/public/btnHomeTest.png" align="absmiddle">
                                            <a onclick="movePage('ad_main.jsp')">Home</a>
                                            > 고객센터관리 > 담당자안내
                                        </div>
                                        <br>
			<div>
				
				<form action="<%=cur_path %>/admin/work.jsp" method="post" name="write">
					<div name="sendFormFields" id="sendFormFields"
						style="display: none;"></div>
					<table width="100%" border="0" cellspacing="0" cellpadding="0"	
						class="t_blue">
						<tbody>
							<tr>
								<td width="130px" height="23px" class="tdo_to_c">관할</td>
								<td><input name="charge_Juris"/></td>
								<td width="130px" height="23px" class="tdo_to_c">담당지역</td>
								<td><input name="charge_area"/></td>
							</tr>
							<tr>
								<td width="130px" height="23px" class="tdo_to_c">과명</td>
								<td><input name="charge_departname"/></td>
								<td width="130px" height="23px" class="tdo_to_c">담당자</td>
								<td><input name="charge_person"/></td>
							</tr>
							<tr>
								<td width="130px" height="23px" class="tdo_to_c">전화번호</td>
								<td><input name="charge_num"/></td>
								<td width="130px" height="23px" class="tdo_to_c">FAX</td>
								<td><input name="charge_fax"/></td>
							</tr>
							
						</tbody>
					</table>
					<div class="btn_r_org">
						<input type="button" onclick="doWrite('../ad_action/charge_action.jsp')" value="저장"
							class=" left"> <input type="button"
							onclick="movePage('ad_admin_charge.jsp')" value="목록" class=" left">
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