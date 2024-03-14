<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <html>

        <head>
            <meta charset="utf-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <title>YC_login test</title>
            <link rel="stylesheet" type="text/css" href="css/public.css">
                <link rel="stylesheet" type="text/css" href="css/investigation.css">
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
                                <div class="iv-wrap-right-img">
                                    <img src="images/investigation/title_3_3_1.gif"></div>
                                    <div class="wrap-right-sub_depth">
                                        <img alt="처음으로" src="images/investigation/home_s.gif" align="absmiddle">
                                            <a onclick="movePage('')">Home</a>
                                            > 지방세정보 > 서식관련자료실
                                        </div>
                                        <div class="wrap-right-content">
                                            <div class="headfield" id="headfield" style="display: none;"></div>
                                            <div class="iv-wrap-right-info">
                                                <span class="iv-wrap-right-info_text">* 법인세무조사 서면신고와 관련된 제출자료를 특정형식으로 첨부하실 수 있도록 서식을 제공하고 있습니다.</span>
                                            </div>
                                            <div class="iv-wrap-right-search">
                                                제목
                                                <input title="제목 내용입력" class="searchtxt" type="text" size="30" iskor="Y">
                                                    <input
                                                        type="button"
                                                        value="검색"
                                                        onclick="executeSearch('SPTIAB0R1')"
                                                        class="btn_gray"></div>
                                                    <table
                                                        width="100%"
                                                        border="0"
                                                        cellspacing="0"
                                                        cellpadding="0"
                                                        class="iv-wrap-right-search_table">
                                                        <tr>
                                                            <th width="40">번호</th>
                                                            <th>제목</th>
                                                            <th width="120">제공파일</th>
                                                            <th width="120">등록일자</th>
                                                        </tr>

                                                        <!-- 검색된 결과가 없을 경우 - 여기부터 -->

                                                        <tr>
                                                            <td colspan="4">&nbsp; * 검색된 결과가 없습니다.
                                                            </td>
                                                        </tr>

                                                        <!-- 검색된 결과가 없을 경우 - 여기까지 -->

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