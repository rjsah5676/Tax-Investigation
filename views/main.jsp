<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
    <meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>YC_login test</title>
    <link rel="stylesheet" type="text/css" href="css/public.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="js/public.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
</head>

<body onload="init();">
    <form action="/testDB/work.jsp" name='test' method="post"></form>
    <div class="top" id="top"></div>
    <div class="nav-wrapper__hd" id="nav"></div>
    <div class="main-wrap">
        <div class="main-wrap__conleft">
            <div class="main-wrap__conleft__log">
                <form name="main-wrap__conleft__log__mainform" method="post" action="/">
                    <!-- 로그인 후 히든 리스트 -->
                    <dl>
                        <dt><label for="userId">아이디</label></dt>
                        <dd><input name="userId" class="main-wrap__conleft__log__userId" maxlength="13"/></dd>
                        <dt><label for="userPw">비밀번호</label></dt>
                        <dd><input name="userPw" class="main-wrap__conleft__log__userPw" maxlength="15"/></dd>
                    </dl>
                    <button class="main-wrap__conleft__log__logbtn">로그인</button>
                    <div class="main-wrap__conleft__log__find">
                        <ul>
                            <li><a onclick="movePage('/views/ac_signup.jsp');">회원가입</a></li>
                            <li><a onclick="movePage('/views/ac_findaccount.jsp');">아이디/비밀번호찾기</a></li>
                        </ul>                        
                    </div>
                    <!-- 로그인 이미지, 회원가입, 아이디/비밀번호 찾기 버튼으로 바꾸고, 온클릭 추가해야함 -->
                    <!-- <input type="hidden" name="src"  id="src" size="40" value="" /> -->
            </div>
            <div class="main-wrap__conleft__icon">
                <div class="main-wrap__conleft__icon__img">
                    <div class="main-wrap__conleft__icon__img1"><img src="images/main/m_icon1.gif" alt="담당자안내"></div>
                    <div class="main-wrap__conleft__icon__img2" style="display:none"><img src="images/main/m_icon4.gif" alt="Q&amp;A"></div>
                    <div class="main-wrap__conleft__icon__img3" style="display:none"><img src="images/main/m_icon2.gif" alt="서식자료"></div>
                </div>
                <ul class="main-wrap__conleft__icon__text">
                    <li><a onclick="movePage('views/sc_manager.jsp')" onmouseover="menuclick('img1')">담당자 안내</a></li>
                    <li><a onclick="movePage('views/sc_qna.jsp')" onmouseover="menuclick('img2')">Q&amp;A</a></li>
                    <li><a onclick="movePage('views/iv_archives.jsp')" onmouseover="menuclick('img3')">서식자료</a></li>
                </ul>
            </div>
            <div class="main-wrap__conleft__bann">
                <div class="main-wrap__conleft__bann__tot">
                    <div class="main-wrap__conleft__bann__tot__a1_1">
                        <!-- 온클릭 -->
                        <a href="#">
                            <span class="main-wrap__conleft__bann__tot__a1_1__sp1" > 처음 신고하시면 꼭 보세요!</span><br>
                            인터넷신고<span class="main-wrap__conleft__bann__tot__a1_1__sp2">동영상 보기</span>
                        </a>
                    </div>
                    <div class="main-wrap__conleft__bann__tot__a1">
                        <div class="main-wrap__conleft__bann__tot__a1_2">
                            <span style="color:#F78102">회계프로그램자료</span><br>
                            <a href="#" onclick="">PDF파일변환 안내보기</a>
                        </div>
                        <div class="main-wrap__conleft__bann__tot__a1_3">
                            <a href="">매직 PDF설치</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="main-wrap__concenter">
            <div class="main-wrap__concenter__report">
                <div class="main-wrap__concenter__report__title">
                    <span>볍인세무조사 인터넷 신고 바로가기</span>
                </div>
                <div class="main-wrap__concenter__report__list">
                    <ul>
                        <!-- 온클릭 추가 -->
                        <li><a onclick="movePage('views/view_report_target.jsp')"><img src="images/main/01.png" alt="1.신고대상확인"></a></li>
                        <li><a onclick="movePage('views/fr_corpstat.jsp')"><img src="images/main/02.png" alt="2.신고서작성"></a></li>
                        <li><a onclick="movePage('views/lr_print.jsp')"><img src="images/main/03.png" alt="3.신고서출력"></a></li>
                        <li><a onclick="movePage('views/lr_result.jsp')"><img src="images/main/04.png" alt="4.세무조사결과확인"></a></li>
                    </ul>	
                </div>
            </div>
            <div class="main-wrap__concenter__notice">
                <div class="main-wrap__concenter__notice__gqlayer">
                    <div class="main-wrap__concenter__notice__gqlayer__bar">
                        <div class="main-wrap__concenter__notice__gqlayer__bar__tap1">
                            <!-- onclick -->
                            <a onclick="movePage('views/sc_notice.jsp')">공지사항</a>
                        </div>
                        <div class="main-wrap__concenter__notice__gqlayer__bar__tap2">
                            <a onclick="movePage('views/sc_question.jsp')">자주묻는질문</a>
                        </div>
                        <span class="main-wrap__concenter__notice__gqlayer__bar__more">
                            <a href="#" title="공지사항 more">
                                <img src="images/main/more.gif" alt="공지사항 more">
                            </a>
                        </span>
                    </div>
                    <!-- 서버에서 가지고 오고 실험 -->
                    <!-- layer하나 더있어야함 -->
                </div>

            </div>
            <div class="main-wrap__concenter__useinfo">
                <div class="main-wrap__concenter__useinfo__tot">
                    <div class="main-wrap__concenter__useinfo__tot__a1">
                        <div class="main-wrap__concenter__useinfo__tot__a1_2">
                            시스템 <span style="color:#0B80CF">메뉴얼</span><br>
                            <a href="#" target="_blank" rel="noreferrer" title="새창으로 가기">인터넷 신고 시스템 안내서</a>
                        </div>
                        <div class="main-wrap__concenter__useinfo__tot__a1_3">
                            <a href="#" >PDF뷰어설치</a>
                        </div>
                    </div>
                    <div class="main-wrap__concenter__useinfo__tot__a1_1">
                        <!-- 온클릭 -->
                        <a href="#">
                            세무조사신고 <span style="color:#0B80CF">이용안내</span> <br/><span class="main-wrap__concenter__useinfo__tot__a1_1__sp1">인터넷으로 빠르고 편리하게</span>
                        </a>
                    </div>
                </div>

            </div>

        </div>
        <div class="main-wrap__conright">
			<div class="main-wrap__conright_r">
				<img src="images/main/topLogo.png" alt="영천시청"/>
			</div>
		</div>
    </div>
    <div class="footer" id="footer"></div>
</body>

</html>