<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="archives.form_archives_DAO"%>
<%@ page import="archives.archivesVO"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
    <html>

        <head>
            <meta charset="utf-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
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
	form_archives_DAO archivesDAO = new form_archives_DAO();
    /* ResultSet rs=qnaDAO.loadBoard(ret); */
    String title = request.getAttribute("ret_title").toString();
	String tmp=request.getAttribute("ret_regisdate").toString();
	String[] strArray = tmp.split(" ");
	String regisdate=strArray[0];
	String file = null;
	if(request.getAttribute("ret_file")!=null) file = request.getAttribute("ret_file").toString(); 
	String content = request.getAttribute("ret_content").toString();
	String boardN = request.getAttribute("ret_n").toString();
	int board_now = Integer.parseInt(boardN);
	%>
	<c:set var="isLogin" value="<%=isLogin %>"/>
	<c:set var="board_now" value="<%=board_now %>"/>
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
									<li>
                                        <a onclick="movePage('views/iv_guide.jsp')">지방세세무조사안내</a>
                                    </li>
                                    <li>
                                        <a onclick="movePage('views/iv_glossary.jsp')">
                                            <span>용어해설</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="selected_menu">서식관련자료실</a>
                                    </li>
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
							<td width="130px" class="tdo_to_c">제목</td>
							<td width="200px" class="tdw_l" colspan="3"><%=title %></td>
						</tr>
						<tr>
							<td width="130px" class="tdo_to_c">등록일자</td>
							<td width="200px" class="tdw_l" colspan="3"><%=regisdate%></td>
						</tr>
						<tr>
							<td class="tdo_to_c">파일이름</td>
							<td colspan="3" class="tdw_t_l" style="padding-left: 7pt">
								<%=file %></td>
						</tr>
						<tr>
							<td colspan="4" class="tdw_l" style="padding: 10px;"><%=content %></td>
						</tr>
					</tbody>
				</table>

			</div>

			<div class="btn_r_org">
				<input type="button" onclick="movePage('views/iv_archives.jsp')"
					value="목록" class="btn_org">
				
			</div>
                                    </div>
                                </div>
                    <div class="footer" id="footer"></div>
                </body>

            </html>