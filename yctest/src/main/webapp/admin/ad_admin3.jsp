<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
    <meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>영천시 법인세무조사 관리자</title>
    <link rel="stylesheet" type="text/css" href="../css/public.css">
    <link rel="stylesheet" type="text/css" href="../css/ac_signup.css">
    <link rel="stylesheet" type="text/css" href="../css/admin.css">
    <script type="text/javascript" src="../js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="../js/admin.js"></script>
</head>

<body onload="init();">
<% String cur_path = request.getContextPath(); 
%>
   <div id="formSet"></div>
    <div class="top" id="top"></div>
    <div class="nav-wrapper__hd" id="nav"></div>
    <div class="wrap">
        <div class="wrap-logo">
            <img src="../images/public/yctest4.png">
        </div>
        <div class=wrap-left>
            <div class="wrap-left-title">
                통지서조회
            </div>
            <ul>     
                <li><a onclick="movePage('ad_admin1.jsp')">법인별/물건별 세무조사결과 및 과세예고 내역</a></li>
                <li><a onclick="movePage('ad_admin2.jsp')">세무조사결과통지서</a></li>       
                <li><a href="#" class="selected_menu">지방세 과세예고 통지서</a></li>
                <li><a onclick="movePage('ad_admin.jsp')">과세예고 통지</a></li>     
            </ul>
        </div>
        <div class="wrap-right">
            <div class="wrap-right-img">
                <img alt="서브타이틀" class="sub-title_img"  src="../images/sub_title/ad_admin3_title.png">
            </div>
            <div class="wrap-right-sub_depth">
                <img alt="처음으로" src="../images/public/btnHomeTest.png" align="absmiddle">
                <a onclick="movePage('ad_main.jsp')">Home</a>
                > 관리자페이지 >지방세 과세예고 통지서
            </div>
            <br>
            <table align="center" border="1" cellspacing="0" cellpadding="5px" width="95%" style="text-align: center;">
                <tr class="t-color">
                    <th colspan="15" style="padding-top: 15px;padding-bottom: 15px;">
                        <h1>지방세 과세예고 통지서</h1>
                    </td>
                </tr>
                <tr>
                    <td rowspan="3" colspan="2">납세의무자</td>
                    <td colspan="2">성명<br>(법인명)</td>
                    <td colspan="2"></td>
                    <td colspan="2">생년월일<br>(법인등록번호)</td>
                    <td colspan="4"></td>
                </tr>
                <tr>
                    <td colspan="2">상호<br>(법인의경우대표자)</td>
                    <td colspan="2"></td>
                    <td colspan="2">사업자등록번호</td>
                    <td colspan="4"></td>
                </tr>
                <tr>
                    <td>주소<br>(사업장)</td>
                    <td colspan="10"></td>
                </tr>
                <tr class="t-color">
                    <th colspan="15"><h3>과세예정내역</h3></th>
                </tr>
                <tr>
                    <th rowspan="3">세목</th>
                    <th rowspan="3">과세대상</th>
                    <th rowspan="3">과세사유<br>(추징사유)</th>
                    <th rowspan="3">귀속년도<br>-취득일자<br>-추징발생일</th>
                    <th rowspan="3">과세표준</th>
                    <th rowspan="3">세율</th>
                    <th rowspan="3">과세예정연월</th>
                    <th colspan="4">추징세액</th>
                    <th rowspan="3">관련법령</th>
                </tr>
                <tr>
                    <td rowspan="2">본세</td>
                    <td colspan="2">가산세</td>
                    <td rowspan="2">합계</td>
                </tr>
                <tr>
                    <td>미신고/과소신고</td>
                    <td>납부불성실</td>
                </tr>
                <tr>
                    <td></td><td></td><td></td><td></td><td></td>
                    <td></td><td></td><td></td><td></td><td></td>
                    <td></td><td></td>
                </tr>
                <tr>
                    <td></td><td></td><td></td><td></td><td></td>
                    <td></td><td></td><td></td><td></td><td></td>
                    <td></td><td></td>
                </tr>
                <tr>
                    <td></td><td></td><td></td><td></td><td></td>
                    <td></td><td></td><td></td><td></td><td></td>
                    <td></td><td></td>
                </tr>
                <tr>
                    <td></td><td></td><td></td><td></td><td></td>
                    <td></td><td></td><td></td><td></td><td></td>
                    <td></td><td></td>
                </tr>
                <tr>
                    <td>계</td><td></td><td></td><td></td><td></td>
                    <td></td><td></td><td></td><td></td><td></td>
                    <td></td><td></td>
                </tr>
                <tr class="t-color">
                    <th colspan="15"><h3>가산세 산출내역</h3></th>
                </tr>
                <tr>
                    <th>세목</th>
                    <th colspan="2">가산세구분</th>
                    <th colspan="2">대상금액</th>
                    <th colspan="2">세율</th>
                    <th>감면금액</th>
                    <th colspan="2">가산된세액</th>
                    <th colspan="2">관련법령</th>
                </tr>

                <tr>
                    <th></th>
                    <th colspan="2"></th>
                    <th colspan="2"></th>
                    <th colspan="2"></th>
                    <th></th>
                    <th colspan="2"></th>
                    <th colspan="2"></th>
                </tr>
                <tr>
                    <th></th>
                    <th colspan="2"></th>
                    <th colspan="2"></th>
                    <th colspan="2"></th>
                    <th></th>
                    <th colspan="2"></th>
                    <th colspan="2"></th>
                </tr>
                <tr>
                    <th></th>
                    <th colspan="2"></th>
                    <th colspan="2"></th>
                    <th colspan="2"></th>
                    <th></th>
                    <th colspan="2"></th>
                    <th colspan="2"></th>
                </tr>
                <tr class="t-color">
                    <th>붙임서류</th>
                    <th colspan="14" style="text-align: left;font-weight: normal;">세목별 추징세액 명세서 각 1부</th>
                </tr>
                <tr>
                    <td colspan="15" style="padding: 20px;">
                        <div style="text-align: left;">
                            <ol>
                                <li>귀하(법인)에 대한 과세 예고를 지방세기본법시행령 제58조 제3항 규정에 의하여 통지드리며</li>
                                <li>과세 예고에 이의가 있으실 경우 지방세기본법 제88조의 규정에 의거 통지를 받은날로부터<br>30일이내에 과세전적부심사를 청구 할 수 있음을 알려드립니다.</li>
                                <li>통지 받은 내용의 전부 또는 일부에 대하여 조기에 과세표준 및 세액 등을 결정 또는 경정결정을 받고자 하는 경우에도 신청하시기 바랍니다.  .[문의전화 : 영천시청 세정과 (054)330-6125]</li>
                            </ol>
                        </div>

                        <br>
                        <div>
                            2021년 1월 8일<br>
                            <div style="font-size: 3em; line-height: 2em;">
                                영 천 시
                            </div>
                            <br>
                        </div>
                        <div style="text-align: left;">
                            &nbsp;
                            위 추징세액의 가산세에는 납부불성실가산세가 2021. 01. 08.까지 포함되어 있습니다. 2004년도 부터 신고납부 세목인 경우 납부일까지 본세기준 매1일당 2.5/10,000씩 가산세가 증가되므로 빠른시일내 신고납부 하시기 바랍니다.
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>
</html> 