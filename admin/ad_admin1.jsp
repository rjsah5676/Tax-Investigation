<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <html>

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>YC_login test</title>
        <link rel="stylesheet" type="text/css" href="../css/public.css">
        <link rel="stylesheet" type="text/css" href="../css/lookupNservice.css">
        <script type="text/javascript" src="../js/jquery-1.12.4.min.js"></script>
        <script type="text/javascript" src="../js/admin.js"></script>
    </head>

    <body onload="init();">
    <form action="/testDB/admin/work.jsp" name='test' method="post"></form>
        <div class="top" id="top"></div>
        <div class="nav-wrapper__hd" id="nav"></div>
        <div class="wrap">
            <div class="wrap-logo">
                <img src="../images/public/yctest2.png">
            </div>
            <div class=wrap-left>
                <div class="wrap-left-title">
                    통지서조회
                </div>
                <ul>
                    <li><a href="#" class="selected_menu">법인별/물건별 세무조사결과 및 과세예고 내역</a></li>
                    <li><a onclick="movePage('ad_admin2.jsp')">세무조사결과통지서</a></li>
                    <li><a onclick="movePage('ad_admin3.jsp')">지방세 과세예고 통지서</a></li>
                    <li><a onclick="movePage('ad_admin.jsp')">과세예고 통지</a></li>
                </ul>
            </div>
            <div class="wrap-right">
                <div class="wrap-right-img">
                    <img src="../images/lookupNservice/title.png">
                </div>
                <div class="wrap-right-sub_depth">
                    <img alt="처음으로" src="../images/public/btnHomeTest.png" align="absmiddle">
                    <a onclick="movePage('ad_main.jsp')">Home</a>
                    > 통지서조회 >법인별/물건별 세무조사결과 및 과세예고 내역
                </div>
                <br>
                <div>
                    <p><br></p>
                    <div style="float:left;">세무조사결과 및 과세예고 통지 일자:</div>
                    <div style="float:right;">(단위 : 원)</div>
                    <div>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table-header">
                            <tr>
                                <th rowspan="2" scope="colgroup">법인명<br>(법인번호)</th>
                                <th rowspan="2" scope="colgroup">주소</th>
                                <th rowspan="2" scope="colgroup">세목</th>
                                <th rowspan="2" scope="colgroup">과세대상<br>물건명</th>
                                <th rowspan="2" scope="colgroup">과세<br>원인</th>
                                <th rowspan="2" scope="colgroup">취득일자<br>(추징발생<br>일자)</th>
                                <th rowspan="2" scope="colgroup">과세 표준액</th>
                                <th colspan="3" scope="colgroup">추징할 세액</th>
                            </tr>

                            <tr>
                                <th scope="col">가산세<br>(미신고)</bt>
                                </th>
                                <th scope="col">가산세<br>(미납부)</th>
                                <th scope="col">합계</th>
                            </tr>

                            <tr>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>

                            <tr>
                                <th rowspan="2" scope="colgroup">합계</th>
                            </tr>


                            <tr>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>

                            <tr>
                                <th></th>
                                <th rowspan="2 " scope="colgroup">소계</th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                            </tr>


                            <!-- <tr>
                            <th>110111-0000111</th>
                        </tr> -->
                        </table>
                    </div>

                </div>
            </div>
        </div>
        <div class="footer" id="footer"></div>
    </body>

    </html> 