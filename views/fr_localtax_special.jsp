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
                <li><a href="#" class="selected_menu">지방소득세특별징수</a></li>
                <li><a onclick="movePage('views/fr_resident_tax.jsp')">주민세재산분</a></li>    
                <li><a onclick="movePage('views/fr_depart_resitax.jsp')">주민세종업원분</a></li>    
                <li><a onclick="movePage('views/fr_attach_document_manage.jsp')">첨부서류관리</a></li>    
                <li><a onclick="movePage('views/fr_submit_report.jsp')">신고서제출</a></li>     
            </ul>
        </div>  
        <div class="wrap-right">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" >
                <tr>
                    <td><img alt="서브타이틀" src="images/fr/localtax_special.png"></td>
                    <td align="right">
                        <div class="wrap-right-sub_depth">
                            <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle">
                            <a onclick="movePage('')">Home</a>
                             > 신고서작성 > 지방소득세특별징수
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
                <div class="sitemap-wrap-right-content-loc-use">
                    <ul>
                        <li>가나다라마바사</li>
                        <li>ㅁㄴㅇㄻㄴㅇㄹ</li>
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
                            <td><input type="date" name="Sur_year"></td>
                        </tr>
                        <tr>
                            <td>조사사업기간</td>
                            <td><input name="Invest_pp"></td>
                        </tr>
                        <tr>
                            <td>사업장정보</td>
                            <td><input name="Bus_infor"></td>
                        </tr>
                        <tr>
                            <td>사업년도</td>
                            <td><input name="Bus_year"></td>
                        </tr>
                        <tr>
                            <td>사업장명</td>
                            <td><input name="Bus_name_1"></td>
                        </tr>
                        <tr>
                            <td>사업장</td>
                            <td><input name="Bus_name_2"></td>
                        </tr>
                        <tr>
                            <td>소득세납부액</td>
                            <td><input name="Intax_pay"></td>
                        </tr>
                        <tr>
                            <td>근로</td>
                            <td><input name="Work_c"></td>
                        </tr>
                        <tr>
                            <td>퇴직</td>
                            <td><input name="Retire_c"></td>
                        </tr>
                        <tr>
                            <td>배당</td>
                            <td><input name="Alloc_c"></td>
                        </tr>
                        <tr>
                            <td>이자</td>
                            <td><input name="Inter_c"></td>
                        </tr>
                        <tr>
                            <td>사업</td>
                            <td><input name="Bus_c"></td>
                        </tr>
                        <tr>
                            <td>법인세법</td>
                            <td><input name="Cortax_law_c"></td>
                        </tr>
                        <tr>
                            <td>기타</td>
                            <td><input name="Etc_c"></td>
                        </tr>
                        <tr>
                            <td>산출지방소득세</td>
                            <td><input name="Out_locIn_tax"></td>
                        </tr>
                        <tr>
                            <td>기납부세액</td>
                            <td><input name="Prep_tax"></td>
                        </tr>
                        <tr>
                            <td>납부일자</td>
                            <td><input type="date" name="Pay_date"></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>

</html>