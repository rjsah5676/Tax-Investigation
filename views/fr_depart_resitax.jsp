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
                <li><a href="#" class="selected_menu">주민세종업원분</a></li>    
                <li><a onclick="movePage('views/fr_attach_document_manage.jsp')">첨부서류관리</a></li>    
                <li><a onclick="movePage('views/fr_submit_report.jsp')">신고서제출</a></li>       
            </ul>
        </div>  
        <div class="wrap-right">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" >
                <tr>
                    <td><img alt="서브타이틀" src="images/fr/depart_resitax_title.png"></td>
                    <td align="right">
                        <div class="wrap-right-sub_depth">
                            <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle">
                            <a onclick="movePage('')">Home</a>
                             > 신고서작성 > 주민세종업원분
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
                <div class="sitemap-wrap-right-content-dep-use">
                    <ul>
                        <li>작성법인의 사업장별 주민세종업원분 명세를 작성하는 화면입니다.</li>
                        <li>[법인현황 > 사업장현황입력]에서 입력한 사업장중 근무인원이 50인 초과 사업장에 대하여 주민세종업원분 명세를 작성할 수 있습니다.<font color="red">2015년이전 입력분까지</font></li>
                        <li>[법인현황 > 사업장현황입력]에서 추가사항에 체크한 사업장중 종업원에게 월급을 지급하는 달을 포함 <font color="red">최근 1년간 월평균금액이 13,500만원 초과사업장에 대하여 주민세 종업원분명세를 작성할 수 있습니다.(2016년 입력분부터)</font></li>
                    </ul>
                </div>
                <p><font color="orange">* 사업장 정보 조회 후 해당월을 클릭하여 작성하세요.</font></p>
                <div class="sitemap-wrap-right-content-info">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" padding="10">
                        <tr>
                            사업장정보 : 
                            <select name="corp_name">
                                <option value="">선택</option>
                                <option value="1">1</option>
                            </select>
                            <input type="submit" value="조회">
                        </tr>
                    </table>    
                </div>
                
                <div class="sitemap-wrap-right-content-main">
                    <table width="100%"  padding="10">
                        <tr>
                            <td>사업년도</td>
                            <td>1</td>
                            <td>사업장명</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <td>사업장</td>
                            <td colspan="3">테스트</td>
                        </tr>
                        <tr>
                            <td>법인명</td>
                            <td colspan="3"><input name="Cor_Name"></td>
                        </tr>
                        <tr>
                            <td>관할</td>
                            <td colspan="3"><input name="Jurisdic"></td>
                        </tr>
                        <tr>
                            <td>조사년도</td>
                            <td colspan="3"><input name="Sur_year"></td>
                        </tr>
                        <tr>
                            <td>조사사업기간</td>
                            <td colspan="3"><input name="Invest_pp"></td>
                        </tr>
                        <tr>
                            <td>사업장(선택)</td>
                            <td colspan="3"><input name="Business_Select"></td>
                        </tr>
                        <tr>
                            <td>사업년도</td>
                            <td colspan="3"><input type="date" name="Business_year"></td>
                        </tr>
                        <tr>
                            <td>사업장명</td>
                            <td colspan="3"><input name="Business_name"></td>
                        </tr>
                        <tr>
                            <td>사업장</td>
                            <td colspan="3"><input name="Bus_name"></td>
                        </tr>
                        <tr>
                            <td>근로소득</td>
                            <td colspan="3"><input name="Earned_Income"></td>
                        </tr>
                        <tr>
                            <td>비과세소득</td>
                            <td colspan="3"><input name="Taxfree_Income"></td>
                        </tr>
                        <tr>
                            <td>종업원수</td>
                            <td colspan="3"><input name="Employee"></td>
                        </tr>
                        <tr>
                            <td>과세표준</td>
                            <td colspan="3"><input name="Assessment_Standard"></td>
                        </tr>
                        <tr>
                            <td>급여지급일</td>
                            <td colspan="3"><input type="date" name="Salary_Date"></td>
                        </tr>
                        <tr>
                            <td>산출세액</td>
                            <td colspan="3"><input name="Calculated_Tax_Amount"></td>
                        </tr>
                        <tr>
                            <td>기납부액</td>
                            <td colspan="3"><input name="Prep_Tax"></td>
                        </tr>
                        <tr>
                            <td>납부일자</td>
                            <td colspan="3"><input type="date" name="Pay_Date"></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>

</html>