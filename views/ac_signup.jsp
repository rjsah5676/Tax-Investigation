<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
    <meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>YC_login test</title>
    <link rel="stylesheet" type="text/css" href="css/public.css">
    <link rel="stylesheet" type="text/css" href="css/ac_signup.css">
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
                마이페이지
            </div>
            <ul>
                <li><a href="#" class="selected_menu">회원가입</a></li>      
                <li><a onclick="movePage('views/ac_login.jsp')">로그인</a></li>
                <li><a onclick="movePage('views/ac_findaccount.jsp')">아이디/비밀번호찾기</a></li>         
            </ul>
        </div>
        <div class="wrap-right">
            <div class="wrap-right-img">
                <img src="images/ac_signup/signupImgTest.png">
            </div>
            <div class="wrap-right-sub_depth">
                <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle">
                <a onclick="movePage('')">Home</a>
                 > utility > 회원가입
            </div>
            <div class="signup-wrap-right-content">
                <div class="signup-wrap-right-content-signup_box">	
                    <div class="signup-wrap-right-content-signup_box-bar">
                        <div class="txt">
                            <div class="txt1">가입용 인증번호로 가입</div>
                            <div class="txt2">아이디/비밀번호로 가입하는 경우</div>
                        </div>
                        <a href="ac_signup.jsp" onclick="executeCMD('SPTIDF2R0')"><img src="images/ac_signup/btnSignupTest.png" alt="가입하기">
                        </a>		
                    </div>
                </div>
                <br>
                <br>
                <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tbody><tr> 
                        <td style="padding-left:10" class="signup-wrap-right-content-signup_box-line_dot"><img alt="가입용 인증번호 가입안내" src="images/ac_signup/signupImgTest2.png"></td>
                    </tr>
                    <tr>
                        <td style="padding-top:10px;line-height:180%">                 
                        <div class="signup-wrap-right-content-signup_box-txt">
                            <div class="inner_box">
                    <span class="star_red">가입용 인증번호란?</span><br>
                    당해년도 세무조사 대상법인에게 제공하는 회원가입용 인증번호 입니다.<br>
                    관할시에서 발송한 우편물에 세무조사대상법인과 가입용인증번호가 안내되어 있습니다.
                    </div>	
                        <ul>
                            <li>가입용 인증번호는 관할구청에서 법인에게 우편으로 보내드립니다. 가입용 인증번호를 받지 못한 신고대상 
                                법인은 관할시에 문의 하시기 바랍니다.</li>
                            <li>가입용 인증번호는 XXXXXXXXXXX(X는 숫자 11자리) 형식으로 구성되어 있습니다.</li>
                            <li>가입용 인증번호로 회원가입시 등록한 아이디/비밀번호로 신고서 작성을 할 수 있으므로 아이디/비밀번호 
                                관리에 유의 하시기 바랍니다.</li>                                                   
                        </ul>
                </div>
                </td>
                    </tr>
                    </tbody>
                </table>		
            </div>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>
</html>