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
                <li><a href="#" class="selected_menu">법인현황</a></li>      
                <li><a onclick="movePage('views/fr_localtax_special.jsp')">지방소득세특별징수</a></li>
                <li><a onclick="movePage('views/fr_resident_tax.jsp')">주민세재산분</a></li>    
                <li><a onclick="movePage('views/fr_depart_resitax.jsp')">주민세종업원분</a></li>    
                <li><a onclick="movePage('views/fr_attach_document_manage.jsp')">첨부서류관리</a></li>    
                <li><a onclick="movePage('views/fr_submit_report.jsp')">신고서제출</a></li>         
            </ul>
        </div>  
        <div class="wrap-right">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" >
                <tr>
                    <td><img alt="서브타이틀" src="https://biztax.hscity.go.kr/hwaseong/image/title_1_1_1.gif"></td>
                    <td align="right">
                        <div class="wrap-right-sub_depth">
                            <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle">
                            <a onclick="movePage('')">Home</a>
                             > 신고서작성 > 법인현황
                        </div>
                    </td>
                </tr>
            </table>        
            <div>
                <img alt="이용안내" src="https://biztax.hscity.go.kr/hwaseong/image/tip_tap.gif">
                <div class="sitemap-wrap-right-content">
                    <ul>
                        <li><span color="red">2021년</span> 서면신고 대상으로 선정된 법인 목록입니다.</li>
                        <li>해당 신고 기간을 준수하여 신고서를 작성해 주시기 바랍니다.</li>
                        <li>업체명 또는 법인등록번호를 클릭하시면 서면신고서를 작성하실 수 있습니다.</li>
                        <li>작성현황구분 : 현재까지 작성된 신고내역을 표시합니다.</li>
                        <li>
                            <img alt="법인현황" src="https://biztax.hscity.go.kr/hwaseong/image/btn_singo_bub.gif">
                             : 법인현황 
                            <img alt="지방소득세특별징수" src="https://biztax.hscity.go.kr/hwaseong/image/btn_singo_joo.gif">
                             : 지방소득세특별징수분
                            <img alt="주민세재산분" src="https://biztax.hscity.go.kr/hwaseong/image/btn_singo_jae.gif">
                             : 주민세재산분
                            <img alt="주민세종업원본" src="	https://biztax.hscity.go.kr/hwaseong/image/btn_singo_jong.gif">
                             : 주민세종업원본
                        </li>
                    </ul>
                </div>
                <div>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" >
                        <tr>
                            <td><img alt="서면신고 대상 목록" src="	https://biztax.hscity.go.kr/hwaseong/image/dsaa_tit.gif"></td>
                            <td align="right"><font color="red">●</font> : 신고대상 ■ : 미대상/제출완료</td>
                        </tr>
                    </table>    
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="sitemap-wrap-right-content-table_header">
                        <tr>
                            <th>대상</th>
                            <th>관할</th>
                            <th>업체명</th>
                            <th>법인등록번호</th>
                            <th>신고기간</th>
                            <th>작성현황</th>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>

</html>