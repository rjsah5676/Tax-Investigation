<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>법인세무조사 인터넷신고시스템</title>
    <link rel="stylesheet" type="text/css" href="css/public.css">
    <link rel="stylesheet" type="text/css" href="css/ac_login.css">
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="js/public.js"></script>
</head>

<body onload="init();">
	<% String cur_path = request.getContextPath(); 
		String isLogin = (String) session.getAttribute("userId");
	%>
	<c:set var="isLogin" value="<%=isLogin %>"/>
<div id="formSet"></div>
    <div class="top" id="top" value="<%= isLogin %>"></div>
    <div class="nav-wrapper__hd" id="nav"></div>
    <div class="wrap">
        <div class="wrap-logo">
            <img src="images/public/yctest4.png">
        </div>
        <div class=wrap-left>
            <div class="wrap-left-title">
                마이페이지
            </div>
            <ul>
                <li><a onclick="movePage('views/ac_signup.jsp')">회원가입</a></li>      
                <li><a href="#" class="selected_menu">로그인</a></li>
                <li><a onclick="movePage('views/ac_findaccount.jsp')">아이디/비밀번호찾기</a></li>         
            </ul>
        </div>
        <div class="wrap-right">
            <div class="wrap-right-img">
                <img class="sub-title_img" src="images/sub_title/ac_login_title.png">
            </div>
            <div class="wrap-right-sub_depth">
                <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle">
                <a onclick="movePage('')">Home</a>
                 > utility > 로그인
            </div>
            <form action="<%=cur_path %>/work.jsp" method="post" id="login">
                <div class="login-wrap-right-login_box">
                    <p>
                    	<img width = "641px" height = "111px" src="images/ac_login/logLogoTest.png">
                    </p>
                    <table width="300px" border="0" cellpadding="0" cellspacing="0">
                        <tbody>
                            <tr>
                                <td width="150px" class="login-wrap-right-td_left">아이디</td>
                                <td width="150px">
                                    <input title="아이디" id="userId" type="text" name="userId" value="" size="18" uminlen="5" maxlength="13" class="login-wrap-right-input required left" uime="inactive" urequired="[아이디]">
                                </td>
                            </tr>
                            <tr>
                                <td width="150px" class="login-wrap-right-td_left">비밀번호</td>
                                <td width="150px">
                                    <input title="비밀번호" name="userPw" id="userPw" type="password" class="login-wrap-right-input required left" size="18" uminlen="9" maxlength="15" urequired="[패스워드]" onkeydown="if (event.keyCode == 13) executeCMD('SPTIDE2R1');" autocomplete="off">        
                                </td>
                            </tr>
                            <tr> 
                                <td colspan="2" style="padding-left:20px"><br><a onclick="doAction('action/login_action.jsp', 'login')"> 
                                    <img alt="가입용인증번호로그인" src="images/ac_login/btnLoginTest.png" vspace="10"></a><br>
                                </td>
                           </tr>
                        </tbody>
                    </table>
                </div>
            </form>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>

</html>