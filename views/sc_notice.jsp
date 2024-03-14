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
                고객센터
            </div>
            <ul>
                <li><a href="#" class="selected_menu">공지사항</a></li>      
                <li><a onclick="movePage('views/sc_question.jsp')">자주묻는질문</a></li>
                <li><a onclick="movePage('views/sc_qna.jsp')">Q&A</a></li>         
                <li><a onclick="movePage('views/sc_manager.jsp')">담당자안내</a></li>      
                <li><a href="#">설문</a></li>     
            </ul>
        </div>
        <div class="wrap-right">
            <div class="wrap-right-img">
                <img src="images/lookupNservice/title.png">
            </div>
            <div class="wrap-right-sub_depth">
                <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle">
                <a onclick="movePage('')">Home</a>
                > 고객센터 > 공지사항
            </div>
            <br>
            <div>
                <div style="text-align: right;">
                    <form action="">
                        <select name="" id="">
                            <option>영천시</option>
                        </select>
                        <select name="" id="">
                            <option>제목 + 내용</option>
                            <option>제목</option>
                        </select>
                        <input type="text">
                        <input type="submit" value="검색">    
                    </form>
                   </div>
                <div>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table-header">
                        <tr>
                            <th width="10%">번호</th>
                            <th width="50%">제목</th>
                            <th>첨부파일</th>
                            <th>조회수</th>
                            <th>등록일자</th>
                        </tr>
                    </table>
                </div>

            </div>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>

</html>