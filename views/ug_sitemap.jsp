<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<html lang="en">
<head>
    <meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>YC_login test</title>
    <link rel="stylesheet" type="text/css" href="css/public.css">
    <link rel="stylesheet" type="text/css" href="css/sitemap.css">
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="js/public.js"></script>
    <title>Document</title>
</head>
<body onload="init();">
<form action="/testDB/work.jsp" name='test' method="post"></form>
    <div class="top" id="top"></div>
    <div class="nav-wrapper__hd" id="nav"></div>
    <div class="wrap">
        <div class="wrap-logo">
            <img src="images/public/yctest2.png">
        </div>
        <div class=wrap-left>
            <div class="wrap-left-title">
                이용안내
            </div>
            <ul>
                <li><a onclick="movePage('views/ug_clause.jsp')">이용약관</a></li>      
                <li><a onclick="movePage('views/ug_guide.jsp')">이용안내</a></li>
                <li><a href="#" class="selected_menu">사이트맵</a></li>         
                <li><a onclick="movePage('views/ug_site.jsp')">관련사이트</a></li>
                <li><a onclick="movePage('views/ug_pdf.jsp')">PDF파일변환안내</a></li>
            </ul>
        </div>
        <div class="wrap-right">
            <div class="wrap-right-img">
                <img alt="서브타이틀" src="images/ug_sitemap/title_7_1_4.gif">
            </div>
            <div class="wrap-right-sub_depth">
                <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle"><a
                    onclick="movePage('')"> Home</a> &gt; 이용안내 &gt;
                사이트맵
            </div>
            <div class="sitemap-wrap-right-content" >
                <table width=100% border="0" cellspacing="0" cellpading="0" >
                    <tbody>
                        <tr>
                            <td>
                                <table width="230" border="0" cellspacing="0" cellpadding="0">
                                    <tbody>
                                        <tr>
                                            <td height="26px" >
                                                <table width="147px" border="0" cellpadding="0" cellspacing="0">
                                                    <tbody>
                                                        <tr>
                                                            <td background="images/ug_sitemap/stm_td_bg.gif" class="td_tw_l" >신고서작성
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding-top:1pt;">
                                                <ul style="padding-left:0pt; margin-left:15px; list-style:none;">
                                                    <li><a onclick="movePage('views/fr_corpstat.jsp')" class="td_text">법인현황</a></li>
                                                    <li><a onclick="movePage('views/fr_localtax_special.jsp')" class="td_text">지방소득세특별징수분</a> </li>
                                                    <li><a onclick="movePage('views/fr_resident_tax.jsp')" class="td_text">주민세재산분</a></li>
                                                    <li><a onclick="movePage('views/fr_depart_resitax.jsp')" class="td_text">주민세종업원분</a></li>
                                                    <li><a onclick="movePage('views/fr_attach_document_manage.jsp')" class="td_text">첨부서류관리</a></li>
                                                    <li><a onclick="movePage('views/fr_submit_report.jsp')" class="td_text">신고서제출</a></li>
                                                </ul>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                            <td valign="top">
                                <table width="230" border="0" cellspacing="0" cellpadding="0">
                                    <tbody>
                                        <tr>
                                            <td height="26px">
                                                <table width="147px" border="0" cellpadding="0" cellspacing="0">
                                                    <tbody>
                                                        <tr>
                                                            <td background="images/ug_sitemap/stm_td_bg.gif" class="td_tw_l">신고서조회
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding-top:1pt">
                                                <ul style="padding-left:0pt; margin-left:1px; list-style:none;">
                                                    <li><a onclick="movePage('views/lr_lookup.jsp')" class="td_text">신고내역조회</a></li>
                                                    <li><a onclick="movePage('views/lr_print.jsp')" class="td_text">신고서출력</a></li>
                                                    <li><a onclick="movePage('views/lr_result.jsp')" class="td_text">세무조사결과조회</a></li>
                                                </ul>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                            <td valign="top">
                                <table width="230" border="0" cellpadding="0" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td height="26px">
                                                <table width="147px" border="0" cellpadding="0" cellspacing="0">
                                                    <tbody>
                                                        <tr>
                                                        </tr>
                                                        <td background="images/ug_sitemap/stm_td_bg.gif" class="td_tw_l">세무조사안내</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="padding-top:1pt">
                                <ul style="padding-left:0pt; margin-left:15px; list-style:none;">
                                    <li><a onclick="movePage('views/iv_guide.jsp')" class="td_text">지방세세무조사안내</a></li>
                                    <li><a onclick="movePage('views/iv_glossary.jsp')" class="td_text">용어해설</a></li>
                                    <li><a onclick="movePage('views/iv_archives.jsp')" class="td_text">서식관련자료실</a></li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
                </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td valign="top">
                        <table width="230" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td height="26">
                                        <table width="147" border="0" cellpadding="0" cellspacing="0">
                                            <tbody>
                                                <tr>
                                                    <td background="images/ug_sitemap/stm_td_bg_1.gif" class="td_tw_l">고객센터</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:1pt">
                                        <ul style="padding-left:0pt; margin-left:15px; list-style:none;">
                                            <li><a onclick="movePage('views/sc_notice.jsp')" class="td_text">공지사항</a></li>
                                            <li><a onclick="movePage('views/sc_question.jsp')" class="td_text">자주묻는질문</a></li>
                                            <li><a onclick="movePage('views/sc_qna.jsp')" class="td_text">Q &amp; A</a></li>
                                            <li><a onclick="movePage('views/sc_manager.jsp')" class="td_text">담당자 안내</a></li>
                                            <li><a href="#" class="td_text">설문</a></li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                    <td valign="top">
                        <table width="230" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td height="26">
                                        <table width="147" border="0" cellpadding="0" cellspacing="0">
                                            <tbody>
                                                <tr>
                                                    <td background="images/ug_sitemap/stm_td_bg_1.gif" class="td_tw_l">마이페이지</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:1pt">
                                        <ul style="padding-left:0pt; margin-left:15px; list-style:none;">
                                            <li><a onclick="movePage('views/manage_info.jsp')" class="td_text">정보관리</a></li>
                                            <ul style="padding-left:0pt; margin-left:15px;list-style:none;">
                                                <li><a onclick="movePage('views/manage_info.jsp')" class="td_text">기본정보관리</a></li>
                                                <li><a onclick="movePage('views/manage_agent.jsp')" class="td_text">대리인관리</a></li>
                                                <li><a onclick="movePage('views/delete_memeber.jsp')" class="td_text">회원 탈퇴</a></li>
                                            </ul>
                                            <li><a onclick="movePage('views/view_report_target.jsp')" class="td_text">신고대상여부조회</a></li>
                                            <li><a onclick="movePage('views/view_submit.jsp')" class="td_text">접수결과조회</a></li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                    <td valign="top">
                        <table width="230" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td height="26">
                                        <table width="147" border="0" cellpadding="0" cellspacing="0">
                                            <tbody>
                                                <tr>
                                                    <td background="images/ug_sitemap/stm_td_bg_2.gif" class="td_tw_l">이용안내</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:1pt">
                                        <ul style="padding-left:0pt; margin-left:15px; list-style:none; ">
                                            <li><a onclick="movePage('views/access_terms.jsp')" target="blank" class="td_text">개인보호정책</a></li>
                                            <li><a onclick="movePage('views/ug_clause.jsp')" class="td_text">이용약관</a></li>
                                            <li><a onclick="movePage('views/ug_guide.jsp')" class="td_text">이용안내</a></li>
                                            <li><a href="#" class="td_text" onclick="executeCMD('SPTIDB0R0')">사이트맵</a></li>
                                            <li><a onclick="movePage('views/ug_site.jsp')" class="td_text">관련사이트</a></li>
                                            <li><a onclick="movePage('views/ug_pdf.jsp')" class="td_text">PDF파일변환안내</a></li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
                </table>
            </div>
        </div>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>
</html>