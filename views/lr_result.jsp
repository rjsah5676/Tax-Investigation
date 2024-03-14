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
                <li><a onclick="movePage('views/lr_lookup.jsp')">신고내역조회</a></li>      
                <li><a onclick="movePage('views/lr_print.jsp')">신고서출력</a></li>
                <li><a href="#" class="selected_menu">세무조사결과조회</a></li>         
            </ul>
        </div>
        <div class="wrap-right">
            <div class="wrap-right-img">
                <img src="images/lookupNservice/title.png">
            </div>
            <div class="wrap-right-sub_depth">
                <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle">
                <a onclick="movePage('')">Home</a>
                > 신고서조회 > 세무조사결과조회
            </div>
            <br>
            <div>
                <span style="color: red">*최근 5년 이내 결과통지서 등록된 자료만 조회 됩니다.</span>
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
                                </select>년 ~ 
                                <select>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                </select>년
                                &nbsp;
                                <input type="submit" value="조회">
                                <input type="submit" value="인쇄">
                            </li>
                        </ul>
                    </form>
                   
                </div>

                <div>
                    - 조회결과 [결과통지서 출력대상]
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table-header">
                        <tr>
                            <th>관 할</th>
                            <th>조사년도</th>
                            <th>법인명</th>
                            <th>법인등록번호</th>
                            <th>통지일자</th>
                            <th>통지번호</th>
                        </tr>
                    </table>
                </div>

            </div>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>

</html>