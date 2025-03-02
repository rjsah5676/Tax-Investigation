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
            <title>YC_login test</title>
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
									<li><a href="#" class="selected_menu">공지사항</a></li>
									<li><a onclick="movePage('ad_admin_ques.jsp')">자주묻는질문</a></li>
									<li><a onclick="movePage('ad_admin_qna.jsp')">Q&A</a></li>
									<li><a onclick="movePage('ad_admin_charge.jsp')">담당자안내</a></li>
									<li><a onclick="movePage('ad_admin_survey.jsp')">설문</a></li>
								</ul>
                            </div>
                            <div class="wrap-right">
                                <div class="wrap-right-img">
                                    <img alt="서브타이틀" class="sub-title_img"  src="../images/sub_title/sc_notice_title.png">
                                </div>
                                    <div class="wrap-right-sub_depth">
                                        <img alt="처음으로" src="../images/public/btnHomeTest.png" align="absmiddle">
                                            <a onclick="movePage('ad_main.jsp')">Home</a>
                                            > 고객센터관리 > 공지사항
                                        </div>
                                        <br>
			<div>
				
				<form action="<%=cur_path %>/admin/work.jsp" method="post" name="write" >
					<div name="sendFormFields" id="sendFormFields"
						style="display: none;"></div>
					<table width="100%" border="0" cellspacing="0" cellpadding="0"	
						class="t_blue">
						<tbody>
							<tr>
								<td width="130px" height="23px" class="tdo_to_c">제목</td>
								<td colspan="3"><input style="width: 300px" name="notice_title"/></td>
							</tr>
							<tr>
								<td width="130px" height="23px" class="tdo_to_c">첨부파일</td>
								<td colspan="3"><input style="width: 300px" type="file" name="notice_file"/></td>
							</tr>
							<tr>
								<td width="130px" height="23px" class="tdo_to_c">등록일자</td>
								<td width="200px" class="tdw_l" colspan="3" ><input style="width:300px" readonly id="nowdate" name="notice_regisdate">
								<script type="text/javascript">
									var a = new Date();
									var now = document.getElementById("nowdate");
									now.value = a.getFullYear()+"-"+(a.getMonth()+1)+"-"+a.getDate();
								</script>
							</tr>
							<tr>
								<td width="130px" height="23px" class="tdo_to_c">내용</td>
								<td colspan="3" class="tdw_l" ><textarea
										title="내용" id="content" name="notice_content"
										class="input_o required left" cols="100" rows="20"></textarea></td>
							</tr>
							
						</tbody>
					</table>
					<div class="btn_r_org">
						<input type="button" onclick="doWrite('../ad_action/notice_action.jsp')" value="저장"
							class=" left"> <input type="button"
							onclick="movePage('ad_admin_notice.jsp')" value="목록" class=" left">
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