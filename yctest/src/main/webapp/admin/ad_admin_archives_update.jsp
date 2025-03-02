<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="notice.cuscenter_notice_DAO"%>
<%@ page import="notice.noticeVO"%>
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
            		cuscenter_notice_DAO noticeDAO = new cuscenter_notice_DAO();
            	    String boardNum = request.getAttribute("ret_n").toString();
            	    String tmp=request.getAttribute("ret_regisdate").toString();
            		String[] strArray = tmp.split(" ");
            		String date = strArray[0];
            	    String title = request.getAttribute("ret_title").toString();
            	    String content = request.getAttribute("ret_content").toString();
            	    String file = null;
            	    if(request.getAttribute("ret_file")!=null) request.getAttribute("ret_file").toString();
					%>
                   <div id="formSet"></div>
                    <div class="top" id="top"></div>
                    <div class="nav-wrapper__hd" id="nav"></div>
                    <div class="wrap">
                        <div class="wrap-logo">
                            <img src="../images/public/yctest4.png"></div>
                            <div class="wrap-left">
                                <div class="wrap-left-title">
                                    세무조사안내
                                </div>
                                <ul>
                                    <li><a onclick="movePage('ad_admin_glossary.jsp')">용어해설</a></li>
                                    <li><a href="#" class="selected_menu">서식관련자료실</a></li>
								</ul>
                            </div>
                            <div class="wrap-right">
                                <div class="wrap-right-img">
                                    <img alt="서브타이틀" class="sub-title_img"  src="../images/sub_title/iv_archives_title.png">
                                </div>
                                    <div class="wrap-right-sub_depth">
                                        <img alt="처음으로" src="../images/public/btnHomeTest.png" align="absmiddle">
                                            <a onclick="movePage('ad_main.jsp')">Home</a>
                                            > 세무조사안내관리 > 서식관련자료실
                                        </div>
                                        <br>
			<div>
				
				<form action="<%=cur_path %>/admin/work.jsp" method="post" name="write">
					<div name="sendFormFields" id="sendFormFields"
						style="display: none;"></div>
					<table width="100%" border="0" cellspacing="0" cellpadding="0"	
						class="t_blue">
						<tbody>
							<input type="hidden" name="form_id" value="<%=boardNum %>"/>
							<tr>
								<td width="130px" height="23px" class="tdo_to_c">제목</td>
								<td colspan="3" class="tdw_t_l" style="padding-left: 10pt">
									<input title="제목" type="text" class="input_o required left"
									id="title" name="form_title" value="<%=title %>" size="70" maxlength="70"
									iskor="Y" urequired="[제목]" uminlen="2">
								</td>
							</tr>
							<tr>
								<td width="130px" height="23px" class="tdo_to_c">등록일자</td>
								<td width="200px" class="tdw_l" colspan="3" style="padding-left: 10pt"><input readonly id="nowdate" name="form_regisdate" value="<%=date %>">
								</td>
							</tr>
							<tr>
							<td width="130px" height="23px" class="tdo_to_c">파일</td>
								<td colspan="3" class="tdw_l" style="padding: 10pt;">
								<input title="파일" id="question" name="form_file" class="input_o required left" cols="100" rows="20" iskor="Y"
										urequired="[질문]" value="<%=file %>"></input></td>
							</tr>
							<tr>
								<td width="130px" height="23px" class="tdo_to_c">내용</td>
								<td colspan="3" class="tdw_l" style="padding: 10pt;"><textarea
										title="내용" id="content" name="form_content"
										class="input_o required left" cols="100" rows="20" iskor="Y"
										urequired="[질문]"><%=content%></textarea></td>
							</tr>
						</tbody>
					</table>
					<div class="btn_r_org">
						<input type="button" onclick="doWrite('../ad_action/archives_update.jsp')" value="저장"
							class=" left"> <input type="button"
							onclick="movePage('ad_admin_archives.jsp')" value="목록" class=" left">
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