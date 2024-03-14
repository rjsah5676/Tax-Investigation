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
                                        <a href="#" class="selected_menu">지방세세무조사안내</a>
                                    </li>
                                    <li>
                                        <a onclick="movePage('views/iv_glossary.jsp')">
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
                                    <img src="images/investigation/title_3_1_1.gif"></div>
                                    <div class="wrap-right-sub_depth">
                                        <img alt="처음으로" src="images/investigation/home_s.gif" align="absmiddle">
                                            <a onclick="movePage('')">Home</a>
                                            > 지방세정보 > 지방세세무조사안내
                                        </div>
                                        <div class=wrap-right-content>
                                        <table
                                            width="100%"
                                            ,=","
                                            border="0"
                                            cellspacing="5"
                                            cellpadding="0"
                                            class="iv-wrap-right-main_box">
                                            <tbody>
                                                <tr>
                                                    <td class="iv-wrap-right-main_img" style="padding: 2px;">
                                                        <img alt="세무조사안내이미지" src="images/investigation/investigationinfo.png"></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <br>
                                                <div class="iv-wrap-right-menu">
                                                    <img
                                                        alt="주요개선사항"
                                                        src="images/investigation/menu-1.gif"
                                                        width="92px;"
                                                        height="15">
                                                        <div class="iv-wrap-right-menu_1">
                                                            <ul>
                                                                <li >인터넷 접속만으로도 법인이 당해 년도 서면신고 대상여부를 확인할 수 있습니다.</li>
                                                                <li >법인세무조사에 있어서 법인등기부등본, 사업자등록증 등은 세무부서에서 직접 확보하므로 제출할 필요가 없습니다.</li>
                                                                <li >기타 법인에서 전산으로 관리하는 첨부자료는 온라인(첨부파일)으로 제출 가능합니다.</li>
                                                                <li >인증방법은 법인/대리인 모두 공인인증을 거치도록 하여 법인세무자료에 대하여 정보가 유출되지 않도록 했습니다.</li>
                                                                <li >법인이 인터넷으로 신고한 자료는 추후 신고 시에 제출 자료로 활용할 수 있어 자료의 관리가 편리합니다.
                                                                    <strong>(중복 제출 방지)</strong>
                                                                </li>
                                                                <li >세무조사 서면신고 예고 통지 및 세무조사 결과가 메일로 발송되며 인터넷으로도 조회 가능합니다.</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="iv-wrap-right-menu">
                                                        <img
                                                            src="images/investigation/menu-2.gif"
                                                            alt="인터넷 서면신고가 정착될 때까지는 우편서면 신고제를 병합 시행합니다.">
                                                            <div class="iv-wrap-right-menu_1">
                                                                <ul>

                                                                    <li>
                                                                        이 서면조사는 법인에 대한 각종 지방세가 정당하게 납부 되었는지 여부를 지방세법 제 64조의 규정에 따라 조사하는 것이므로 전산서식의 작성요령에
                                                                        따라 성실하게 작성하신 후 제출하여 주시기 바랍니다.</li>
                                                                    <li>이번 조사는 서면신고에 의한 조사이므로 조사서에 첨부하여야 할 서류’에 대하여 첨부서류만으로 입증될 수 있도록 최대한 준비하여 제출하여
                                                                        주시기 바랍니다.</li>

                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="iv-wrap-right-menu">
                                                            <img src="images/investigation/menu-3.gif" alt="서면신고시 참고사항" vspace="3">
                                                                <div class="iv-wrap-right-menu_1">
                                                                    <ul>

                                                                        <li>
                                                                            작성 후 보낼 곳 : 화성시청 세정과</li>
                                                                        <li >문의사항 전화 :
                                                                            <a href="#executeheadCMD" onclick="executeheadCMD('SPTIBD0R0')">
                                                                                <strong>화성시청 세정과 세무조사담당</strong>
                                                                            </a>
                                                                        </li>

                                                                        <li>해당사항만 발췌 후 작성하시고 해당시군구 별로 서면신고 제출일자가 일정하지 않을 수 있으니 확인 후 제출바랍니다.</li>

                                                                        <li>방문 제출 시 작성해야할
                                                                            <a href="#executeheadCMD" onclick="executeheadCMD('SPTIAC0R0')">
                                                                                <strong>서식 다운 받기</strong>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div class="iv-wrap-right-menu">
                                                                <img src="images/investigation/menu-4.gif" alt="조사서에 첨부할 서류 안내(방문 신고시 자료입니다)">
                                                                    <div class="iv-wrap-right-menu_1">
                                                                        <ul>
                                                                            <li>공통으로 첨부해야할 서류 (건설업, 제조업, 기타법인 모두 해당)</li>
                                                                            <li>
                                                                                법인 등기부등본, 사업자등록증(본점 및 지점사업장)</li>
                                                                            <li >
                                                                                각 사업년도별 법인세 과세표준과 세액을 세무서에 신고한 신고서 (대차대조표, 손익계산서,감가상각명세서, 주식이동상황명세서등)</li>
                                                                            <li >
                                                                                법인소유자산(부동산, 차량, 기계장비 등) 계정별 원장 보조장</li>
                                                                            <li >
                                                                                공사원가명세서 및 도급계약서 사본</li>
                                                                            <li >
                                                                                각 사업년도별 지방소득세법인세분 사업장별 신고내역서</li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                                <div class="iv-wrap-right-bt">
                                                                    <a href="#nabse" onclick="nabse()"><img alt="지방세납세자권리헌장보기" src="images/investigation/button-1.gif" border="0"/></a>
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#wy_rule" onclick="wy_rule()"><img alt="세무조사운영규칙보기" src="images/investigation/button-2.gif" border="0"/></a>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="footer" id="footer"></div>

                                                </body>

                                            </html>