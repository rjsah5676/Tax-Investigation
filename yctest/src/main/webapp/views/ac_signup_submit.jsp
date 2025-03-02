<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>법인세무조사 인터넷신고시스템</title>
    <link rel="stylesheet" type="text/css" href="css/public.css">
    <link rel="stylesheet" type="text/css" href="css/ac_signup.css">
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
                <li><a href="#" class="selected_menu">회원가입</a></li>      
                <li><a onclick="movePage('views/ac_login.jsp')">로그인</a></li>
                <li><a onclick="movePage('views/ac_findaccount.jsp')">아이디/비밀번호찾기</a></li>         
            </ul>
        </div>
        <div class="wrap-right">
            <div class="wrap-right-img">
				<img class="sub-title_img"
					src="images/sub_title/ac_signup_info_title.png">
			</div>
            <div class="wrap-right-sub_depth">
                <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle">
                <a onclick="movePage('')">Home</a>
                 > utility > 가입여부및신원확인
            </div>
            <div class="content">
<div class="in_mem">
	<p>
		  <img alt="가입여부 및 신원확인" src="https://biztax.hscity.go.kr/hwaseong/image/01_01.gif">
          <img alt="" src="https://biztax.hscity.go.kr/hwaseong/image/icon_arr_green.gif">
          <img alt="이용약관" src="https://biztax.hscity.go.kr/hwaseong/image/01_02_o.gif">
          <img alt="" src="https://biztax.hscity.go.kr/hwaseong/image/icon_arr_gray.gif">
          <img alt="정보입력" src="https://biztax.hscity.go.kr/hwaseong/image/01_03_o.gif">
          <img alt="" src="https://biztax.hscity.go.kr/hwaseong/image/icon_arr_gray.gif">
          <img alt="가입완료" src="https://biztax.hscity.go.kr/hwaseong/image/01_04_o.gif">
	</p>
	<p><img alt="" src="https://biztax.hscity.go.kr/hwaseong/image/line01.gif"></p>
	<div class="in_imgtxt">
		<div class="img_imgtxt"><img alt="" src="https://biztax.hscity.go.kr/hwaseong/image/st_01img.gif"></div>
		<div class="imgtxt">
		
		
		
		    가입용 인증번호로 회원가입을 하기 위해서는
		      <span class="star_red">[가입용인증번호]</span>가 필요합니다.<br>
		      화성시 법인세무조사 인터넷신고
		      시스템의 회원으로 가입하시면 신고 대상의 여부 및 신고서 작성, 자료 제출 여부 등의 상황을 손쉽게 확인하실 수 있으며, My
		      Page, 내 대리인관리 등 회원을 위한 서비스를 이용하실 수 있습니다.

		
		
		</div>
	</div>
</div>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
      <td> <br>
           <br>
           <img alt="가입용인증번호로 가입" src="images/ac_signup/ac_signup_submit_1.png" width="191" height="21"></td>
  </tr>
</tbody></table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td height="30"><img alt="가입여부 및 신원확인" src="images/ac_signup/ac_signup_submit_2.png"></td>
  </tr>
  <tr>
    <td class="txt_s11" style="padding-left:10pt"><img alt="" src="images/ac_signup/ac_signup_info_arrow.png" width="6" height="7" align="absmiddle"> 인증서의
      신원확인 검증을 위해 <span class="txt_o11_t">가입용인증번호, 법인등록번호, 사업자등록번호</span>를 정확히 입력하여
      주시기 바랍니다.</td>
  </tr>
</tbody></table>
<form name="signupForm" action="">
    <div id="sendFormFields" style="display:none;"></div>
  <div class="signup_box">
  		<div class="signup_in">
            <div class="bubin" style="display: block;">
                            </div><table width="300px" border="0" align="center" cellpadding="1" cellspacing="0">
			
            				<tbody><tr>
            				 <td colspan="3" height="40" style="padding-left:20">
            				 	&nbsp;<input title="법인" type="radio" name="agent" id="agent" value="no" checked="true" onclick="chk_agent()" style="border:0" class=" left">법인  &nbsp;&nbsp;&nbsp;
								<input title="세무대리인" type="radio" name="agent" id="agent" value="yes" onclick="chk_agent()" style="border:0" class=" left">세무대리인
            				 </td>
            				</tr>
			

                            <tr> 
                              <td class="td_t_r">가입용인증번호 </td>
                              <td class="td_t_l"> <input title="가입용인증번호" type="text" name="certifyNum" id="certifyNum" size="14" maxlength="11" isonlynum="Y" urequired="가입용인증번호" value="" class=" required left"> 
                              </td>
                            </tr>
							<tr>
                              <td class="td_t_r">법인등록번호 </td>
                              <td class="td_t_l"> <input title="법인등록번호" type="text" name="bubinId1" id="bubinId1" size="7" maxlength="6" isonlynum="Y" urequired="법인등록번호" uminlen="6" value="" class=" required left">
                                - 
                                <input title="법인등록번호" type="text" name="bubinId2" id="bubinId2" size="8" maxlength="7" isonlynum="Y" urequired="법인등록번호" uminlen="7" value="" class=" required left"> 
                              </td>
                            </tr>
                            
                            <tr> 
                              <td class="td_t_r">사업자등록번호 </td>
                              <td class="td_t_l"> <input title="사업자등록번호1" type="text" name="saupjaId11" id="saupjaId11" size="3" maxlength="3" isonlynum="Y" urequired="[사업자등록번호]" uminlen="3" value="" class=" required left">
                                - 
                                <input title="사업자등록번호2" type="text" name="saupjaId12" id="saupjaId12" size="2" maxlength="2" isonlynum="Y" urequired="[사업자등록번호]" uminlen="2" value="" class=" required left">
                                - 
                                <input title="사업자등록번호3" type="text" name="saupjaId13" id="saupjaId13" size="6" maxlength="5" isonlynum="Y" urequired="[사업자등록번호]" uminlen="5" value="" onkeydown="if (event.keyCode == 13) executeCMD('SPTIDF2R2');" class=" required left"> 
                              </td>
                            </tr>
                          </tbody></table>
                    </div>                 
  </div>
  
</form>
  		<div class="btn_c">

  			<button onclick="movePage('views/ac_signup_info.jsp')" class=" left" >가입여부확인하기</button>
  		</div>   
</div>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>
</html>