<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
    <meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>YC_login test</title>
    <link rel="stylesheet" type="text/css" href="../css/public.css">
    <link rel="stylesheet" type="text/css" href="../css/fr_corpstat.css">
    <script type="text/javascript" src="../js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="../js/admin.js"></script>
</head>

<body onload="init();">
<form action="/testDB/admin/work.jsp" name='test' method="post"></form>
    <div class="top" id="top"></div>
    <div class="nav-wrapper__hd" id="nav"></div>
    <div class=wrap>
        <div class="wrap-logo">
            <img src="../images/public/yctest2.png">
        </div>
        <div class=wrap-left>
            <div class="wrap-left-title">
                통지서작성
            </div>
            <ul>
                <li><a onclick="movePage('ad_admin1_write.jsp')">과세예고 내역 작성</a></li>    
                <li><a onclick="movePage('ad_admin2_write.jsp')">세무조사결과통지서 작성</a></li>    
                <li><a href="#" class="selected_menu">지방세 과세예고 통지서 작성</a></li>     
            </ul>
        </div>  
        <div class="wrap-right">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" >
                <tr>
                    <td><img alt="서브타이틀" src="../images/lookupNservice/title.png"></td>
                    <td align="right">
                        <div class="wrap-right-sub_depth">
                            <img alt="처음으로" src="../images/public/btnHomeTest.png" align="absmiddle">
                            <a onclick="movePage('ad_main.jsp')">Home</a>
                            > 관리자페이지 > 지방세 과세예고 통지서 작성
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
                <img alt="이용안내" src="/images/fr/useinfo.PNG">
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
                            <td>성명(법인명)</td>
                            <td><input name="cor_name"></td>
                        </tr>
                        <tr>
                            <td>생년월일(법인등록번호)</td>
                            <td><input name="birth_date"></td>
                        </tr>
                        <tr>
                            <td>상호(법인의경우대표자)</td>
                            <td><input name="corp_name"></td>
                        </tr>
                        <tr>
                            <td>사업자등록번호</td>
                            <td><input name="cor_reg_num"></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center;">과세예정내역</td>
                        </tr>
                        <tr>
                            <td>세목</td>
                            <td><input name="tax_name"></td>
                        </tr>
                        <tr>
                            <td>과세대상</td>
                            <td><input name="tax_target"></td>
                        </tr>
                        <tr>
                            <td>과세사유(추징사유)</td>
                            <td><input name="tax_reason"></td>
                        </tr>
                        <tr>
                            <td>귀속년도 - 취득일자 - 추징발생일</td>
                            <td><input type="date" name="att_year"></td>
                        </tr>
                        <tr>
                            <td>과세표준</td>
                            <td><input name="tax_sta"></td>
                        </tr>
                        <tr>
                            <td>세율</td>
                            <td><input name="tax_rate"></td>
                        </tr>
                        <tr>
                            <td>과세예정연월</td>
                            <td><input name="tax_plan_date"></td>
                        </tr>
                        <tr>
                            <td>본세</td>
                            <td><input name="ori_tax"></td>
                        </tr>
                        <tr>
                            <td>미신고/과소신고</td>
                            <td><input name="not_rep1"></td>
                        </tr>
                        <tr>
                            <td>납부불성실</td>
                            <td><input name="not_rep2"></td>
                        </tr>
                        <tr>
                            <td>합계</td>
                            <td><input name="tax_sum"></td>
                        </tr>
                        <tr>
                            <td>관련법령</td>
                            <td><input name="rela_law"></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center;">가산세 산출내역</td>
                        </tr>
                        <tr>
                            <td>세목</td>
                            <td><input name="tax_name_list"></td>
                        </tr>
                        <tr>
                            <td>가산세구분</td>
                            <td><input name="addtax_sep"></td>
                        </tr>
                        <tr>
                            <td>대상금액</td>
                            <td><input name="tar_val"></td>
                        </tr>
                        <tr>
                            <td>세율</td>
                            <td><input name="tax_rate_list"></td>
                        </tr>
                        <tr>
                            <td>감면금액</td>
                            <td><input name="abate_val"></td>
                        </tr>
                        <tr>
                            <td>가산된세액</td>
                            <td><input name="addtax"></td>
                        </tr>
                        <tr>
                            <td>관련법령</td>
                            <td><input name="rela_law_list"></td>
                        </tr>
                        <tr>
                            <td>붙임서류</td>
                            <td><input type="file" name="add_doc"></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>

</html> 