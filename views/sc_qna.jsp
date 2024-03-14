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
                <li><a onclick="movePage('views/sc_notice.jsp')">공지사항</a></li>      
                <li><a onclick="movePage('views/sc_question.jsp')">자주묻는질문</a></li>
                <li><a href="#" class="selected_menu">Q&A</a></li>         
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
                > 고객센터 > Q&A
            </div>
            <br>
            <div>
                <div style="text-align: right;">
                    <form action="">
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
                            <th>조회수</th>
                            <th>등록일자</th>
                        </tr>
                         <!--  검색된 결과가 없을 경우 - 여기부터  -->

                         <tr>
                            <td colspan="5">&nbsp;
                                * 검색된 결과가 없습니다.
                            </td>
                        </tr>

                        <!--  검색된 결과가 없을 경우 - 여기까지  -->
                    </table>
                    <div class="img_re">
                        <img alt="답변달린글" src="https://biztax.hscity.go.kr/hwaseong/image/ic_reply.gif">: 답변달린글&nbsp;&nbsp;
                        <img alt="비밀글" src="	https://biztax.hscity.go.kr/hwaseong/image/ic_password.gif">:비밀글
                    </div>
                    <div class="btn_r_org">
                        <input type="button" onclick="executeCMD('SPTIBC0F0')" value="쓰기" class="btn_org">
                    </div>
                    <div id="paging">

                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>

</html>