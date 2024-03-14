<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <html>

        <head>
            <meta charset="utf-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <title>YC_login test</title>
            <link rel="stylesheet" type="text/css" href="../css/public.css">
            <link rel="stylesheet" type="text/css" href="../css/admin.css">
            <script type="text/javascript" src="../js/admin.js"></script>
        </head>
                <body>
                <form action="/testDB/admin/work.jsp" name='test' method="post"></form>
                    <div class="ad_login-wrap">
                        <div class="ad_login-wrap-login_box">
                            <h2>Log-in</h2>
                            <div class="login_id">
                                <h4>아이디</h4>
                                <input type="text" name="" id="" placeholder="아이디">
                            </div>
                            <div class="login_pw">
                                <h4>비밀번호</h4>
                                <input type="password" name="" id="" placeholder="비밀번호">
                            </div>
                            <div class="login_etc">
                                <div class="checkbox">
                                <input type="checkbox" name="" id=""> Remember Me?
                                </div>
                                <div class="forgot_pw">
                                <a href="">Forgot Password?</a>
                            </div>
                            </div>
                            <div class="submit">
                                <input type="submit" value="Login" onclick="movePage('ad_main.jsp')">
                            </div>
                        </div>
                    </div>
                </body>
            </html>