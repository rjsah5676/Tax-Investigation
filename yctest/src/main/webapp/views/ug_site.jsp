<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>법인세무조사 인터넷신고시스템</title>
    <link rel="stylesheet" type="text/css" href="css/public.css">
    <link rel="stylesheet" type="text/css" href="css/sitemap.css">
    <link rel="stylesheet" type="text/css" href="css/investigation.css">
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="js/public.js"></script>
</head>
<body onload="init();">
	<% String cur_path = request.getContextPath(); 
		String isLogin = (String) session.getAttribute("userId");
	%>
	<c:set var="isLogin" value="<%=isLogin %>"/>
<div id="formSet"></div>
<form action="<%=cur_path %>/work.jsp" name='pdfPage' method="post"></form>
    <div class="top" id="top" value="<%= isLogin %>"></div>
    <div class="nav-wrapper__hd" id="nav"></div>
    <div class=wrap>
        <div class="wrap-logo">
            <img src="images/public/yctest4.png">
        </div>
        <div class=wrap-left>
            <div class="wrap-left-title">
                이용안내
            </div>
            <ul>
                <li><a onclick="movePage('views/ug_clause.jsp')">이용약관</a></li>      
                <li><a onclick="movePage('views/ug_guide.jsp')">이용안내</a></li>
                <li><a onclick="movePage('views/ug_sitemap.jsp')">사이트맵</a></li>         
                <li><a href="#" class="selected_menu">관련사이트</a></li>
                <li><a onclick="pdfPages('1')">PDF파일변환안내</a></li>
            </ul>
        </div>
        <div class="wrap-right">
            <div class="wrap-right-img">
                <img class="sub-title_img" alt="서브타이틀" src="images/sub_title/ug_site_title.png">
            </div>
            <div class="wrap-right-sub_depth">
                <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle"><a
                    onclick="movePage('')"> Home</a> &gt; 이용안내 &gt;
                관련사이트
            </div>
            <div class="sitemap-wrap-right-content" >
                <table class="iv-wrap-right-search_table">
                    <tr>
                        <th style="width: 22%">사이트명</th>
                        <th style="width: 22%">기관</th>
                        <th>설명</th>
                    </tr>
                    <tr>
                        <td><a href="http://www.wetax.go.kr/">지방세납부</a></td>
                        <td>행정안전부</td>
                        <td>지방세 관련 정보(WETAX)</td>
                    </tr>
                    <tr>
                        <td><a href="http://www.scourt.go.kr/scourt/scourt.html">종합법률정보</a></td>
                        <td>대법원</td>
                        <td>대법원 및 하급심 판례 조회 가능</td>
                    </tr>
                    <tr>
                        <td><a href="http://www.iros.go.kr/">인터넷등기소</a></td>
                        <td>대법원</td>
                        <td>법인등기부등본 및 토지 건물의 등기부 등본 발급 및 조회 기능</td>
                    </tr>
                    <tr>
                        <td><a href="http://www.moleg.go.kr/main.html">법령조회</a></td>
                        <td>법제처</td>
                        <td>현행법령 및 과거 법령 연혁 조회 가능</td>
                    </tr>
                    <tr>
                        <td><a href="http://www.nts.go.kr/">국세청</a></td>
                        <td>국세청</td>
                        <td>국세관련</td>
                    </tr>
                    <tr>
                        <td><a href="http://www.tt.go.kr/">조세심판원</a></td>
                        <td>조세심판원</td>
                        <td>조세심판</td>
                    </tr>
                    <tr>
                        <td><a href="http://www.fss.or.kr/">금융감독원</a></td>
                        <td>금융감독원</td>
                        <td>법인 및 금융에 대한 기본정보</td>
                    </tr>
                    <tr>
                        <td><a href="http://dart.fss.or.kr/">DART</a></td>
                        <td>전자공시시스템</td>
                        <td>외부감사를 받는 법인에 대한 감사보고서 등</td>
                    </tr>
                    <tr>
                        <td><a href="http://bizpark.co.kr/">비즈파크</a></td>
                        <td>비즈파크</td>
                        <td>기업정보제공전문포탈사이트</td>
                    </tr>
                    <tr>
                        <td><a href="http://www.assembly.go.kr/">국회</a></td>
                        <td>대한민국국회</td>
                        <td>개정법률(안)및 국회 의사일정 등 정보 제공</td>
                    </tr>
                </table>
            </div> 
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>
</html>