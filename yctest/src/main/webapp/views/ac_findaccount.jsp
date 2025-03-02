<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>법인세무조사 인터넷신고시스템</title>
    <link rel="stylesheet" type="text/css" href="css/public.css">
    <link rel="stylesheet" type="text/css" href="css/ac_findaccount.css">
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
                <li><a onclick="movePage('views/ac_login.jsp')">로그인</a></li>
                <li><a href="#" class="selected_menu">아이디/비밀번호찾기</a></li>         
            </ul>
        </div>
        <div class="wrap-right">
            <div class="wrap-right-img">
                <img class="sub-title_img" src="images/sub_title/ac_findaccount_title.png">
            </div>
            <div class="wrap-right-sub_depth">
                <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle">
                <a onclick="movePage('')">Home</a>
                 > utility > 아이디/비밀번호찾기
            </div>
            <div class="findaccount-wrap-right-content">
                <br>
                <form name="findForm">
                    <div class="findaccount-wrap-right-content-box">
                    	<h2>아이디찾기</h2>
                    	<ul>
                         	<li>법인등록번호와 사업자등록번호를 입력하시면 아이디의 일부를 보여드립니다.</li>
                        </ul> 
                        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tbody><tr><td height="34px">&nbsp;</td></tr>
                                                                    
                                   <tr> 
                                       <td class="findaccount-wrap-right-content-box-id_pw_find-id_box-r">법인등록번호 </td>
                                       <td class="findaccount-wrap-right-content-box-id_pw_find-id_box-l"> <input title="법인등록번호" type="text" name="bubinId1" id="bubinId1" size="6" maxlength="6" isonlynum="Y" urequired="법인등록번호" uminlen="6" class="input_0 required left" value="">
                                       - 
                                       <input title="법인등록번호" type="text" name="bubinId2" id="bubinId2" size="7" maxlength="7" isonlynum="Y" urequired="법인등록번호" uminlen="7" class="input_0 required left" value=""> </td>
                                   </tr>
                                   <tr> 
                                       <td class="findaccount-wrap-right-content-box-id_pw_find-id_box-r">사업자등록번호 </td>
                                       <td class="findaccount-wrap-right-content-box-id_pw_find-id_box-l"> <input title="사업자등록번호" type="text" name="saupjaId1" id="saupjaId1" size="3" maxlength="3" isonlynum="Y" urequired="[사업자등록번호]" uminlen="3" class="input_0 required left" value="">
                                       - 
                                       <input title="사업자등록번호" type="text" name="saupjaId2" id="saupjaId2" size="2" maxlength="2" isonlynum="Y" urequired="[사업자등록번호]" uminlen="2" class="input_0 required left" value="">
                                       - 
                                       <input title="사업자등록번호" type="text" name="saupjaId3" id="saupjaId3" size="5" maxlength="5" isonlynum="Y" urequired="[사업자등록번호]" uminlen="5" class="input_0 required left" value=""> 
                                       </td>
                                   </tr>                         
                                       <tr>
                                       <td height="70" colspan="3" class="findaccount-wrap-right-content-box-id_pw_find-id_box-c" style="padding-top:5pt">
                               
                                       <br>                   
                                   <input type="button" onclick="excuteSearcId('SPTIDE1F1')" value="아이디찾기" class="btn_blue left">                                 	                                     
                                                                   
                                       </td>
                                   </tr>
                        	 </tbody>
                         </table>
                    </div>
                    <div class="findaccount-wrap-right-content-box">
                    	<h2>비밀번호찾기</h2>
                    	<ul>
                         	<li>아이디와 법인등록번호, 사업자등록번호, 가입용인증번호를 입력하시면 임시비밀번호를 보여드립니다.</li>
                            <li>변경된 비밀번호로 로그인 한 후 기본정보관리에서 비밀번호를 변경하실 수 있습니다.</li>
                        </ul> 
                        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tbody><tr> 
                            <td class="findaccount-wrap-right-content-box-id_pw_find-id_box-r">아이디 </td>
                            <td class="findaccount-wrap-right-content-box-id_pw_find-id_box-l"><input title="아이디" type="text" name="userId" id="userId" size="14" maxlength="13" urequired="아이디" uminlen="4" class="input_0 required left" value=""> </td>
                            </tr>
                            <tr> 
                            <td class="findaccount-wrap-right-content-box-id_pw_find-id_box-r">법인등록번호 </td>
                            <td class="findaccount-wrap-right-content-box-id_pw_find-id_box-l"> <input title="법인등록번호" type="text" name="bubinIdp1" id="bubinIdp1" size="6" maxlength="6" isonlynum="Y" urequired="법인등록번호" uminlen="6" class="input_0 required left" value="">
                                - 
                                <input title="법인등록번호" type="text" name="bubinIdp2" size="7" id="bubinIdp2" maxlength="7" isonlynum="Y" urequired="법인등록번호" uminlen="7" class="input_0 required left" value=""> </td>
                            </tr>
                            <tr> 
                            <td class="findaccount-wrap-right-content-box-id_pw_find-id_box-r">사업자등록번호 </td>
                            <td class="findaccount-wrap-right-content-box-id_pw_find-id_box-l"> <input title="사업자등록번호" type="text" name="saupjaIdp1" id="saupjaIdp1" size="3" maxlength="3" isonlynum="Y" urequired="[사업자등록번호]" uminlen="3" class="input_0 required left" value="">
                                - 
                                <input title="사업자등록번호" type="text" name="saupjaIdp2" id="saupjaIdp2" size="2" maxlength="2" isonlynum="Y" urequired="[사업자등록번호]" uminlen="2" class="input_0 required left" value="">
                                - 
                                <input title="사업자등록번호" type="text" name="saupjaIdp3" id="saupjaIdp3" size="5" maxlength="5" isonlynum="Y" urequired="[사업자등록번호]" uminlen="5" class="input_0 required left" value="" utype="blur"> 
                            </td>
                            </tr>                                                               
                            <tr> 
                            <td class="findaccount-wrap-right-content-box-id_pw_find-id_box-r">가입용인증번호 </td>
                            <td class="findaccount-wrap-right-content-box-id_pw_find-id_box-l"> <input title="가입용인증번호" type="text" name="certifyNum" id="certifyNum" size="15" maxlength="11" isonlynum="Y" urequired="[가입용인증번호]" uminlen="" class="input_0 required left" value="">
                            </td>
                            <br>
                            <tr>
                            <td height="70" colspan="3" class="findaccount-wrap-right-content-box-id_pw_find-id_box-c" style="padding-top:5pt">                          
                                <input onclick="excuteSearch('SPTIDE1R2')" type="button" value="비밀번호찾기" class="btn_blue left">                                                                                     
                                </td>
                            </tr>
                         </tbody></table>
                    </div>
                    
                </form>
            </div>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>
</html>