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
                <li><a href="#" class="selected_menu">과세예고 내역 작성</a></li>    
                <li><a onclick="movePage('ad_admin2_write.jsp')">세무조사결과통지서 작성</a></li>    
                <li><a onclick="movePage('ad_admin3_write.jsp')">지방세 과세예고 통지서 작성</a></li>     
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
                             > 신고서작성 > 과세예고 내역 작성
                        </div>
                    </td>
                </tr>
            </table>        
            <div>


                <div class="sitemap-wrap-right-content-main">
                    <table width="100%"  padding="10">
                        <tr>
                            <td>법인명(법인번호)</td>
                            <td><input name="Cor_Reg_Name"></td>
                        </tr>
                        <tr>
                            <td>주소</td>
                            <td><input name="Adress"></td>
                        </tr>
                        <tr>
                            <td>세목</td>
                            <td><input name="Detail"></td>
                        </tr>
                        <tr>
                            <td>과세대상 물건명</td>
                            <td><input name="Tax_Item_Name"></td>
                        </tr>
                        <tr>
                            <td>과세 원인</td>
                            <td><input name="Tax_Cause"></td>
                        </tr>
                        <tr>
                            <td>취득일자(추징발생일자)</td>
                            <td><input type="date" input name="Act_Date"></td>
                        </tr>
                        <tr>
                            <td>과세표준액</td>
                            <td><input name="Tax_Amount"></td>
                        </tr>
                        <tr>
                            <td>가산세(미신고)</td>
                            <td><input name="Add_Tax_Unreported"></td>
                        </tr>
                        <tr>
                            <td>가산세(미납부)</td>
                            <td><input name="Add_Tax_Unpaid"></td>
                        </tr>
                        <tr>
                            <td>합계</td>
                            <td><input name="Tax_Total"></td>
                        </tr>

                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>

</html> 