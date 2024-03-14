<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
    <meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>YC_login test</title>
    <link rel="stylesheet" type="text/css" href="css/public.css">
    <link rel="stylesheet" type="text/css" href="css/lookupNservice.css">
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="js/public.js"></script>
</head>

<body onload="init();">
<form action="/testDB/work.jsp" name='test' method="post"></form>
    <div class="top" id="top"></div>
    <div class="nav-wrapper__hd" id="nav"></div>
    <div class="wrap">
        <div class="wrap-logo">
            <img src="images/public/yctest2.png">
        </div>
        <div class=wrap-left>
            <div class="wrap-left-title">
                신고서조회
            </div>
            <ul>
                <li><a href="#" class="selected_menu">신고내역조회</a></li>      
                <li><a onclick="movePage('views/lr_print.jsp')">신고서출력</a></li>
                <li><a onclick="movePage('views/lr_result.jsp')">세무조사결과조회</a></li>         
            </ul>
        </div>
        <div class="wrap-right">
            <div class="wrap-right-img">
                <img src="images/lookupNservice/title.png">
            </div>
            <div class="wrap-right-sub_depth">
                <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle">
                <a onclick="movePage('')">Home</a>
                > 신고서조회 > 신고내역조회
            </div>
            <br>
            <div>
                <span style="color: red">* 최근 5년 이내 신고 내역만 조회가능 합니다.</span>
                <div class="wrap-right-content_box">
                    <form>
                        <ul>
                            <li>법인선택 : 
                                <select>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                </select>
                            </li>
                            <li>조사년도 : 
                                <select>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                </select>년&nbsp;
                                <input type="submit" value="조회">
                            </li>
                        </ul>
                    </form>
                   
                </div>

                <div>
                    - 신고서작성내역

                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table-header">
                        <tr>
                            <th width="15%">관할</th>
                            <td></td>
                            <th width="20%">조사년도</th>
                            <td></td>
                            <th width="20%">조사사업기간</th>
                            <td>~</td>
                        </tr>
                        <tr>
                            <th>법인정보</th>
                            <td colspan="3"></td>
                            <th>제출유무</th>
                            <td></td>
                        </tr>
                    </table>

                    <br>

                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table-header">
                        <tr>
                            <th>번호</th>
                            <th>구분</th>
                            <th>사업장명</th>
                            <th>사업자번호</th>
                            <th>작성현황</th>
                        </tr>
                    </table>
                    <br>                  
                    - 첨부파일내역
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table-header">
                        <tr>
                            <th>번호</th>
                            <th>서식구분</th>
                            <th>순번</th>
                            <th>파일명</th>
                            <th>파일크기</th>
                            <th>비고</th>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>

</html>