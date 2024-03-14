<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<html lang="en">
<head>
    <meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>YC_login test</title>
    <link rel="stylesheet" type="text/css" href="css/public.css">
    <link rel="stylesheet" type="text/css" href="css/sitemap.css">
    <link rel="stylesheet" type="text/css" href="css/ug_pdf.css">
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
                이용안내
            </div>
            <ul>
                <li><a onclick="movePage('views/ug_clause.jsp')">이용약관</a></li>      
                <li><a onclick="movePage('views/ug_guide.jsp')">이용안내</a></li>
                <li><a onclick="movePage('views/ug_sitemap.jsp')">사이트맵</a></li>         
                <li><a onclick="movePage('views/ug_site.jsp')">관련사이트</a></li>
                <li><a href="#" class="selected_menu">PDF파일변환안내</a></li>
            </ul>
        </div>
        <div class="wrap-right">
            <div class="wrap-right-img">
                <img alt="서브타이틀" src="images/ug_pdf/title_7_1_7.gif">
            </div>
            <div class="wrap-right-sub_depth">
                <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle"><a
                    onclick="movePage('')"> Home</a> &gt; 이용안내 &gt;
                PDF파일변환안내
            </div>
            <div class="sitemap-wrap-right-content" >
                <img src="images/ug_pdf/DH0R0_title.gif">
                <img src="images/ug_pdf/DH0R0_img.gif">

                <div class="pdf-title">
                    <ul>
                        <li><a href="#submenu1" id="submenu1-title">사용프로그램설명</a></li>
                        <li><a href="#submenu2" id="submenu2-title">프로그램설치방법</a></li>
                        <li><a href="#submenu3" id="submenu3-title">프로그램 사용방법</a></li>
                    </ul>
                </div>
                <div class="pdf-content">
                    <div id="submenu1">
                        <ul>
                            <li>가상프린터 방식으로 인쇄문서를 pdf파일로 자동 생성하는 프로그램을 활용합니다.</li>
                            <li>프로그램 다운로드 : 사용에 제한이 없는 프리웨어 입니다.</li>
                        </ul>
                        <img src="images/ug_pdf/pdf_txt01_btn.gif" alt="매직pdf 다운로드">
                    </div>

                    <br>
                    
                    <div id="submenu2">
                        <img src="images/ug_pdf/dh_img01.gif">
                        1. 다운로드 받은 파일을 실행 >> NEXT 버튼
                        <br>
                        <img src="images/ug_pdf/dh_img02.gif">
                        2. 약관에 동의 >> NEXT 버튼
                        <br>
                        <img src="images/ug_pdf/dh_img03.gif">
                        3. 프로그램 설치 경로 확인 >> NEXT 버튼
                        <br>
                        <img src="images/ug_pdf/dh_img04.gif">
                        4. NEXT 버튼
                        <br>
                        <img src="images/ug_pdf/dh_img05.gif">
                        5. NEXT 버튼
                        <br>
                        <img src="images/ug_pdf/dh_img06.gif">
                        6. INSTALL 버튼
                        <br>
                        <img src="images/ug_pdf/dh_img07.gif">
                        7. Upgrade to MegicPDF Pro 체크를 해제하고 finish 버튼
                        <br>
                    </div>

                    <br>

                    <div id="submenu3">
                        1. 회계 프로그램에서 해당 항목의 인쇄버튼을 클릭 >> 프린터 선택에서 'magicPDF' 선택 >> 인쇄버튼 클릭
                        <img src="images/ug_pdf/dh_e_img01.gif">
                        <br><br>
                        2. 파일 저장화면이 뜨면 파일 저장 경로 및 파일명 입력한 후 저장버튼 클릭
                        <img src="images/ug_pdf/dh_e_img02.gif">
                        <br>
                        3. 저장버튼을 클릭하면 인쇄 내용이 해당경로에 PDF 파일로 생성됩니다.
                    </div>
                </div>

            </div> 
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>
</html>