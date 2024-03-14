<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
    <meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>YC_login test</title>
    <link rel="stylesheet" type="text/css" href="css/public.css">
    <link rel="stylesheet" type="text/css" href="css/fr_corpstat.css">
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="js/public.js"></script>
</head>

<body onload="init();">
<form action="/testDB/work.jsp" name='test' method="post"></form>
    <div class="top" id="top"></div>
    <div class="nav-wrapper__hd" id="nav"></div>
    <div class=wrap>
        <div class="wrap-logo">
            <img src="images/public/yctest2.png">
        </div>
        <div class=wrap-left>
            <div class="wrap-left-title">
                신고서작성
            </div>
            <ul>
                <li><a onclick="movePage('views/fr_corpstat.jsp')">법인현황</a></li>      
                <li><a onclick="movePage('views/fr_localtax_special.jsp')">지방소득세특별징수</a></li>
                <li><a onclick="movePage('views/fr_resident_tax.jsp')">주민세재산분</a></li>    
                <li><a onclick="movePage('views/fr_depart_resitax.jsp')">주민세종업원분</a></li>    
                <li><a onclick="movePage('views/fr_attach_document_manage.jsp')">첨부서류관리</a></li>    
                <li><a href="#" class="selected_menu">신고서제출</a></li>         
            </ul>
        </div>  
        <div class="wrap-right">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" >
                <tr>
                    <td><img alt="서브타이틀" src="images/fr/submit_report.png"></td>
                    <td align="right">
                        <div class="wrap-right-sub_depth">
                            <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle">
                            <a onclick="movePage('')">Home</a>
                             > 신고서작성 > 신고서제출
                        </div>
                    </td>
                </tr>
            </table>        
            <div>
                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="wrap-center-table">
                    <tr>
                        <td>관할</td>
                        <td>1</td>
                        <td>조사년도</td>
                        <td>1 + 년</td>
                        <td>조사사업기간</td>
                        <td>1 ~ 1</td>
                        <td><button>작성현황보기</button></td>
                    </tr>

                </table>
                <img alt="이용안내" src="images/fr/useinfo.PNG">
                <div class="sitemap-wrap-right-content-sub-use">
                    <ul>
                        <li>현재까지 작성된 내역을 제출하는 화면입니다.</li>
                        <li>신고서제출 이후에는 신고내역을 수정할 수 없으므로 작성된 내역을 반드시 확인후 이상이 없을시 제출하셔야 합니다.<br>
                         * 신고서제출 이후라도 신고내역의 조회 및 출력은 가능합니다.</li>
                        <li>작성현황 구분 : 현재까지 작성된 내역을 표시합니다.<br>
                            <b><img src="images/fr/bub.gif">:법인현황 <img src="images/fr/teuk.gif">: 지방소득세특별징수분 <img src="images/fr/jae.gif">: 주민세재산분 <img src="images/fr/jong.gif">: 주민세종업원분</b>
                        </li>
                    </ul>
                </div>
                <div class="sitemap-wrap-right-content-info">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" padding="10">
                        <tr>
                            -
                        </tr>
                    </table>    
                </div>
                <div class="sitemap-wrap-right-content-main">
                    <table width="100%"  padding="10">
                        <tr>
                            <td>법인등록번호</td>
                            <td><input name="Cor_Reg_Number"></td>
                        </tr>
                        <tr>
                            <td>관할</td>
                            <td><input name="Jurisdic"></td>
                        </tr>
                        <tr>
                            <td>조사년도</td>
                            <td><input type="date" name="Survey_year"></td>
                        </tr>
                        <tr>
                            <td>조사사업기간</td>
                            <td><input name="Survey_bzperiod"></td>
                        </tr>
                        <tr>
                            <td>법인정보</td>
                            <td><input name="Cor_infor"></td>
                        </tr>
                        <tr>
                            <td>서면신고서 제출</td>
                            <td><input name="Submit_declaration"></td>
                        </tr>
                        <tr>
                            <td colspan="2">신고서작성내역</td>
                        </tr>
                        <tr>
                            <td>구분</td>
                            <td><input name="Division"></td>
                        </tr>
                        <tr>
                            <td>업체명</td>
                            <td><input name="Company_name"></td>
                        </tr>
                        <tr>
                            <td>사업자등록번호</td>
                            <td><input name="Company_Reg_num"></td>
                        </tr>
                        <tr>
                            <td>최종 수정일</td>
                            <td><input type="date" name="Last_modidate"></td>
                        </tr>
                        <tr>
                            <td colspan="2">첨부파일내역</td>
                        </tr>
                        <tr>
                            <td>번호</td>
                            <td><input name="File_num"></td>
                        </tr>
                        <tr>
                            <td>법인명</td>
                            <td><input name="Cor_name"></td>
                        </tr>
                        <tr>
                            <td>서식구분</td>
                            <td><input name="Format_class"></td>
                        </tr>
                        <tr>
                            <td>파일명</td>
                            <td><input name="File_name"></td>
                        </tr>
                        <tr>
                            <td>비고</td>
                            <td><input name="Remark"></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>

</html>