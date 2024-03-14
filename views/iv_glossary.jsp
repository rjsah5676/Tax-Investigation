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
                                        <a href="#" class="selected_menu">
                                            <span>용어해설</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a onclick="movePage('views/iv_archives.jsp')">서식관련자료실</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="wrap-right">
                                <div class="iv-wrap-right-img">
                                    <img src="images/investigation/title_3_2_1.gif"></div>
                                    <div class="wrap-right-sub_depth">
                                        <img alt="처음으로" src="images/investigation/home_s.gif" align="absmiddle">
                                            <a onclick="movePage('')">Home</a>
                                            > 지방세정보 > 용어해설
                                        </div>
                                        <div class="wrap-right-content">
                                            <form class="frm" action="/work" method="POST" style="margin:0">
                                                <div class="headfield" id="headfield" style="display: none;"></div>
                                                <div class="iv-wrap-right-info">
                                                    <span class="iv-wrap-right-info_text">* 법인세무조사 서면신고와 관련된 용어로 구성되어 있습니다.</span>
                                                </div>
                                                <div class="iv-wrap-right-search">
                                                    <select title="검색" class="search">
                                                        <option value="1" selected="selected">제목 + 내용</option>
                                                        <option value="2">제목</option>
                                                    </select>
                                                    <input title="제목 내용입력" class="searchtxt" type="text" size="30" iskor="Y">
                                                        <input
                                                            type="button"
                                                            value="검색"
                                                            onclick="executeSearch('SPTIAB0R1')"
                                                            class="btn_gray"></div>
                                                        <div id="loaded">
                                                            <div class="iv-wrap-right-dic">
                                                                <!-- 검색된 결과가 없을 경우 - 여기부터 -->

                                                                <!-- 검색된 결과가 없을 경우 - 여기까지 -->

                                                                <div class="iv-wrap-right-dic_box1">
                                                                    <img alt="" src="images/investigation/listimg.gif"/>
                                                                    서면조사
                                                                </div>
                                                                <div class="iv-wrap-right-dic_box1_1">
                                                                    납세의무자가 신고하거나 제출한 서류에 의하여 지방세의 납부 또는 과세의 적정여부를 검증하는 것을 말한다.
                                                                </div>

                                                                <div class="iv-wrap-right-dic_box1">
                                                                    <img alt="" src="images/investigation/listimg.gif"/>
                                                                    직접조사
                                                                </div>
                                                                <div class="iv-wrap-right-dic_box1_1">
                                                                    납세의무자의 사무실·공장·사업장 또는 주소지 등에 출장하여 직접 해당 납세의무자 또는 그 관련인을 상대로 실시하는 세무조사를 말한다.
                                                                </div>

                                                                <div class="iv-wrap-right-dic_box1">
                                                                    <img alt="" src="images/investigation/listimg.gif"/>
                                                                    특별조사
                                                                </div>
                                                                <div class="iv-wrap-right-dic_box1_1">
                                                                    세금을 누락시킨 수법이나 규모로 보아 일반조사 방법으로는 실효를 거두기 어려운 경우에 별도 계획에 따라 실시하는 세무조사를 말한다.
                                                                </div>

                                                                <div class="iv-wrap-right-dic_box1">
                                                                    <img alt="" src="images/investigation/listimg.gif"/>
                                                                    일반조사
                                                                </div>
                                                                <div class="iv-wrap-right-dic_box1_1">
                                                                    특정한 납세의무자에 대하여 지방세의 과세요건 성립여부, 과세표준액 및 세율적용의 적정여부를 검증하기 위한 세무조사를 말한다.
                                                                </div>

                                                                <div class="iv-wrap-right-dic_box1">
                                                                    <img alt="" src="images/investigation/listimg.gif"/>
                                                                    세무조사
                                                                </div>
                                                                <div class="iv-wrap-right-dic_box1_1">
                                                                    「지방세기본법」제136조에 따라 조사공무원이 납세의무자 등을 상대로 질문을 하거나 장부·서류 및 그 밖의 물건을 검사·조사 또는 확인하는 행위를
                                                                    말한다. 다만,「조세범처벌절차법」에 따른 범칙사건 조사는 이에 포함하지 아니한다.
                                                                </div>

                                                            </div>
                                                            <!-- 페이징 디스플레이 start -->
                                                            <div id="paging"></div>
                                                            <!-- 페이징 디스플레이 end -->
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