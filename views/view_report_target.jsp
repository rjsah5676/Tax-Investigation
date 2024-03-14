<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <html>

        <head>
            <meta charset="utf-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <title>YC_login test</title>
            <link rel="stylesheet" type="text/css" href="css/public.css">
                <link rel="stylesheet" type="text/css" href="css/mypage.css">
                    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
                    <script type="text/javascript" src="js/public.js"></script>
                </head>

                <body onload="init();">
                <form action="/testDB/work.jsp" name='test' method="post"></form>
                    <div class="top" id="top"></div>
                    <div class="nav-wrapper__hd" id="nav"></div>
                    <div class="wrap">
                        <div class="wrap-logo">
                            <img src="images/public/yctest2.png"></div>
                            <div class="wrap-left">
                                <div class="wrap-left-title">
                                    마이페이지
                                </div>
                                <ul>
                                    <li>
                                        <a onclick="movePage('views/manage_info.jsp')">정보관리</a>
                                    </li>
                                    <li>
                                        <a href="#" class="selected_menu">
                                            <span>신고대상여부조회</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a onclick="movePage('views/view_submit.jsp')">접수결과조회</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="wrap-right">
                                <div class="manage-wrap-right-img">
                                    <img src="images/mypage/title_5_2_1.gif"></div>
                                    <div class="wrap-right-sub_depth">
                                        <img alt="처음으로" src="images/investigation/home_s.gif" align="absmiddle">
                                            <a onclick="movePage('')">Home</a>
                                            > My Page > 신고대상여부조회
                                        </div>
                                        <div class="wrap-right-content">
                                            <img alt="서면신고 대상 목록" src="images/mypage/title_5_2_2.gif">
                                                <div class="info">
                                                    <div class="info_txt">
                                                        <ul class="b">
                                                            <li>관리대상 법인 목록입니다.</li>
                                                            <li>신고 대상 여부를 확인하여 신고서를 작성하여 주시기 바랍니다.</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0">

                                                    <tr>
                                                        <td>
                                                            <span class="manage-txt_o11_t">* 신고대상이라도 제출 완료 시에는 수정/삭제하실 수 없습니다.</span>
                                                        </td>
                                                        <td class="td_r">
                                                            <span style="color:red">●</span>
                                                            : 신고대상 ■ : 미대상/제출완료</td>
                                                    </tr>

                                                </table>
                                                <!-- 한건도 검색이 되지 않았을 경우 디자인 처리해야 한다. -->
                                                <table
                                                    width="100%"
                                                    border="0"
                                                    cellspacing="1"
                                                    cellpadding="0"
                                                    class="manage-table_blue">
                                                    <tr>
                                                        <td class="manage-tdb__c">대상
                                                        </td>
                                                        <td class="manage-tdb_tb_c">관할</td>
                                                        <td class="manage-tdb_tb_c">업체명</td>
                                                        <td class="manage-tdb_tb_c">법인등록번호</td>
                                                        <td class="manage-tdb_tb_c">사업자등록번호</td>

                                                        <td class="manage-tdb_tb_c">신고기간</td>

                                                        <td class="manage-tdb_tb_c">제출여부</td>
                                                        <td class="manage-tdb_tb_c">작성</td>
                                                        <td class="manage-tdb_tb_c">조회</td>
                                                    </tr>
                                                    <!-- 검색된 결과가 없을 경우 - 여기부터 -->

                                                    <!-- 검색된 결과가 없을 경우 - 여기까지 -->

                                                    <tr>
                                                        <td class="manage-tdw_c">

                                                            ■

                                                        </td>
                                                        <td class="manage-tdw_c">화성시</td>
                                                        <td class="manage-tdw_c">
                                                            테스트
                                                        </td>
                                                        <td class="manage-tdw_c">110111-5555555</td>
                                                        <td class="manage-tdw_c">
                                                            505-83-01467
                                                        </td>

                                                        <td class="manage-tdw_c">12월31일까지</td>

                                                        <td class="manage-tdw_c">
                                                            제출
                                                            <!-- 제출&nbsp; -->
                                                        </td>
                                                        <td class="manage-tdw_c"></td>
                                                        <td class="manage-tdw_c">
                                                            <a
                                                                href="#executeCMD"
                                                                onclick="executeCMD('SPDSBA0F0',
                 '',
                 '1101115555555',
                '590',
                '2021')">
                                                                <img alt="신고서조회" src="images/mypage/mypage_submit.gif" align="absmiddle"/></a>
                                                        </td>
                                                    </tr>

                                                </table>

                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="footer" id="footer"></div>
                    </body>

                </html>