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
                <li><a href="#" class="selected_menu">주민세재산분</a></li>    
                <li><a onclick="movePage('views/fr_depart_resitax.jsp')">주민세종업원분</a></li>    
                <li><a onclick="movePage('views/fr_attach_document_manage.jsp')">첨부서류관리</a></li>    
                <li><a onclick="movePage('views/fr_submit_report.jsp')">신고서제출</a></li>         
            </ul>
        </div>  
        <div class="wrap-right">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" >
                <tr>
                    <td><img alt="서브타이틀" src="images/fr/resident_tax_title.png"></td>
                    <td align="right">
                        <div class="wrap-right-sub_depth">
                            <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle">
                            <a onclick="movePage('')">Home</a>
                             > 신고서작성 > 주민세재산분
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
                <div class="sitemap-wrap-right-content-res-use">
                    <ul>
                        <li>작성법인의 사업장별 주민세재신분 명세를 작성하는 화면입니다.</li>
                        <li>[법인현황 > 사업장현황입력]에서 입력한 사업장중 연면적 330m<sup>2</sup> 초과 사업장에 대하여 주민세재산분 명세를 작성할 수 있습니다.</li>
                    </ul>
                </div>
                <div class="sitemap-wrap-right-content-info">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" padding="10">
                        <tr>
                            법인정보 : 1 - 1
                        </tr>
                    </table>    
                </div>
                <div class="sitemap-wrap-right-content-ent">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" padding="10">
                        <tr>
                            전체    대상사업장 수 [1]
                        </tr>
                    </table>    
                </div>
                <div class="sitemap-wrap-right-content-main">
                    <table width="100%"  padding="10">
                        <tr>
                            <td>사업장 명</td>
                            <td><input name="Bus_name"></td>
                        </tr>
                        <tr>
                            <td>소재지</td>
                            <td><input name="Location"></td>
                        </tr>
                        <tr>
                            <td>사업개시일</td>
                            <td><input type="date" name="Business_startdate"></td>
                        </tr>
                        <tr>
                            <td>사업년도</td>
                            <td><input type="date" name="Business_year"></td>
                        </tr>
                        <tr>
                            <td>연면적</td>
                            <td><input name="Storyarea"></td>
                        </tr>
                        <tr>
                            <td>기숙사</td>
                            <td><input name="Dormitory"></td>
                        </tr>
                        <tr>
                            <td>구내식당</td>
                            <td><input name="Cafeteria"></td>
                        </tr>
                        <tr>
                            <td>기타</td>
                            <td><input name="Etc"></td>
                        </tr>
                        <tr>
                            <td>과세면적</td>
                            <td><input name="Taxablearea"></td>
                        </tr>
                        <tr>
                            <td>정당세액</td>
                            <td><input name="Justifiable_tax"></td>
                        </tr>
                        <tr>
                            <td>기납부세액</td>
                            <td><input name="Prep_tax"></td>
                        </tr>
                        <tr>
                            <td>납부일자</td>
                            <td><input type="date" name="Pay_Date"></td>
                        </tr>
                        <tr>
                            <td>차인세액</td>
                            <td><input name="Borrowing_tax"></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>

</html>