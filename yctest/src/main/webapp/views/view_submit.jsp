<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <html>

        <head>
            <meta charset="utf-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <title>법인세무조사 인터넷신고시스템</title>
            <link rel="stylesheet" type="text/css" href="css/public.css">
                <link rel="stylesheet" type="text/css" href="css/mypage.css">
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
                            <img src="images/public/yctest4.png"> </div>
                            <div class="wrap-left">
                                <div class="wrap-left-title">
                                    마이페이지
                                </div>
                                <ul>
                                    <c:if test="${isLogin ne null}">
                                    <li>
                                        <a onclick="movePage('views/manage_info.jsp')">정보관리</a>
                                    </li>
                                    </c:if>
                                	<c:if test="${isLogin eq null}">
                                    <li>
                                        <a onclick="movePage('views/no_page.jsp')">정보관리</a>
                                    </li>
                                    </c:if>
                                    <li>
                                        <a onclick="movePage('views/view_report_target.jsp')">
                                            <span>신고대상여부조회</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a onclick="movePage('views/view_submit.jsp')" class="selected_menu">접수결과조회</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="wrap-right">
                                <div class="manage-wrap-right-img">
                                     <img  class="sub-title_img" src="images/sub_title/view_submit_title.png"></div>
                                    <div class="wrap-right-sub_depth">
                                        <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle">
                                            <a onclick="movePage('')">Home</a>
                                            > My Page > 접수결과조회
                                        </div>
                                        <div class="wrap-right-content">
                                            <img alt="서면 신고 접수 현황" src="images/mypage/title_5_3_2.gif">
                                                <div class="info">
                                                    <div class="info_txt">

                                                        <ul class="b">
                                                            <li>지방세 서면신고서 접수현황 입니다.</li>
                                                            <li>[접수증출력]을 클릭하여 지방세 서면신고 접수증을 출력하여 보관하시기 바랍니다.</li>
                                                            <li>[신고서출력]을 클릭하여 지방세 서면신고서를 출력하여 보관하시기 바랍니다.</li>
                                                            <li>당초 신고서제출한 후 신고기간내에 다시 신고서제출(신고내용의 변경 유무에 상관없음)하는 경우에는 최종 제출한 내용만 정당하게 신고된
                                                                것으로 보니 유의하시기 바랍니다.</li>
                                                            <li>[My page &gt; 접수결과조회]에서도 지방세 서면신고서 접수증 및 서면신고서를 인쇄할 수 있습니다.</li>
                                                        </ul>

                                                    </div>
                                                </div>
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                    <tr>
                                                        <td>
                                                            <span class="manage-txt_o11_t">* 다음과 같이 접수되었습니다.</span>
                                                        </td>
                                                    </tr>
                                                </table>

                                                <!-- 한건도 검색이 되지 않았을 경우 디자인 처리해야 한다. -->
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="manage-tb_b">
                                                    <tr>
                                                        <td class="manage-tdb_tb_c">관할</td>
                                                        <td class="manage-tdb_tb_c">법인명</td>
                                                        <td class="manage-tdb_tb_c">법인등록번호</td>
                                                        <td class="manage-tdb_tb_c">접수일시</td>
                                                        <td class="manage-tdb_tb_c">출력</td>
                                                        <td class="manage-tdb_tb_c">출력</td>
                                                    </tr>
                                                    <!-- 검색된 결과가 없을 경우 - 여기부터 -->

                                                    <tr>
                                                        <td class="manage-tdw_c" colspan="9">&nbsp; * 현재까지 접수된 사항이 없습니다.
                                                        </td>
                                                    </tr>

                                                    <!-- 검색된 결과가 없을 경우 - 여기까지 -->

                                                </table>
                                                <br/>
                                                <!-- getArg() 함수에서 사용가능하도록 파라메타로 받은 값을 전역변수에 할당 -->
                                                <input type="hidden" name="sido_gubun" id="sido_gubun" value=''/>
                                                <input type="hidden" name="bubin_id" id="bubin_id" value=''/>
                                                <input type="hidden" name="sigu_cd" id="sigu_cd" value=''/>
                                                <input type="hidden" name="josa_yy" id="josa_yy" value=''/>
                                                <input type="hidden" name="saupyy_from" id="saupyy_from" value=''/>
                                                <input type="hidden" name="saupyy_to" id="saupyy_to" value=''/>
                                                <input type="hidden" name="sigu_name" id="sigu_name" value=''/>
                                                <input type="hidden" name="bubin_name" id="bubin_name" value=''/>
                                                <input type="hidden" name="jechul_date" id="jechul_date" value=''/>
                                            </form>
                                        </div>

                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="footer" id="footer"></div>
        </body>

    </html>