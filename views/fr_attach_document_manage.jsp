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
                <li><a href="#" class="selected_menu">첨부서류관리</a></li>    
                <li><a onclick="movePage('views/fr_submit_report.jsp')">신고서제출</a></li>            
            </ul>
        </div>  
        <div class="wrap-right">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" >
                <tr>
                    <td><img alt="서브타이틀" src="images/fr/attach_document_manage.png"></td>
                    <td align="right">
                        <div class="wrap-right-sub_depth">
                            <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle">
                            <a onclick="movePage('')">Home</a>
                             > 신고서작성 > 첨부서류관리
                        </div>
                    </td>
                </tr>
            </table>        
            <div>
                <img alt="이용안내" src="images/fr/useinfo.PNG">
                <div class="sitemap-wrap-right-content-att-use">
                    <ul>
                        <li>법인별 서면조사에 필요한 첨부파일을 등록하는 화면입니다.</li>
                        <li><font color="orange">첨부파일 목록 및 해당여부를 반드시 확인하여 누락되는 사항이 없도록 주의하세요.(아래 첨부파일 목록참고)</font></li>
                        <li><font color="orange">첨부가능한 파일 : 확장자가 ZIP,ALZ 인 파일만 첨부가 가능합니다.</font></li>
                        <li>첨부가능한 크기 : 한번에 첨부할 수 있는 최대 용량은 20M까지 첨부가 가능합니다.</li>
                    </ul>
                </div>
                <div class="sitemap-wrap-right-content-info">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" padding="10">
                        <tr>
                            -
                        </tr>
                    </table>    
                </div>
                
                <div class="sitemap-wrap-right-content-main-att">
                    <table width="100%"  padding="10">
                        <tr>
                            <td>서식구분</td>
                            <td>
                                <select name="Format_class">
                                <option value="">선택</option>
                                <option value="1">1</option>
                                </select>
                            </td>
                            <td colspan="2">인증번호 : 1<br>
                            <b>[개인정보 보호법]</b>에 따라 첨부파일은 위의 인증번호로 암호화 되어 저장됩니다.</td>                       
                        </tr>
                        <tr>
                            <td>파일첨부</td>
                            <td colspan="3">
                                <font color="red">
                                    * 파일 첨부시 주의 사항<br>
                                     1. 대차대조표 파일명 - 대차 + 간략한 회사명 ex)대차삼성<br>
                                     2. 파일명에 특수문자 제외 ex)`,~,~,? 등<br>
                                     3. <b>확장자가 ZIP,ALZ 인 파일</b>만 첨부가 가능합니다.<br>
                                     4. 한번에 첨부할 수 있는 최대 용량은 20MB까지 이며, 여러번 업로드(파일선택후 저장)가 가능합니다.<br>
                                </font>
                                     <div border="2px" border-color="blue"><input type="file" name="File_attach"></div>
                            </td>
                        </tr>                        
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>

</html>