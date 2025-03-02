<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <html>

        <head>
            <meta charset="utf-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <title>법인세무조사 인터넷신고시스템</title>
            <link rel="stylesheet" type="text/css" href="css/public.css">
                <link rel="stylesheet" type="text/css" href="css/mypage.css">
                    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
                    <script type="text/javascript" src="js/public.js"></script>
                    <script type="text/javascript" src="js/signup.js"></script>
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
                            <img src="images/public/yctest4.png"></div>
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
                                            > utility > 정보입력
                                        </div>
                                        <div class="wrap-right-content">
                                            <form action="<%=cur_path %>/work.jsp" method="post" style="margin:0" name="write">
                                                <div name="sendFormFields" id="sendFormFields" style="display:none;"></div>
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="manage-tb_b">
                                                    <tr>
                                                        <th width="100px"><span class="star_red">*</span> 관할</th>
                                                        <td><input name="Jurisdic" required></td>
                                                    </tr>
                                                    <tr>
                                                        <th width="100px"><span class="star_red">*</span> 조사년도</th>
                                                        <td><input name="Sur_year" required></td>
                                                    </tr>
                                                    <tr>
                                                        <th width="100px"><span class="star_red">*</span> 조사사업기간</th>
                                                        <td><input name="Invest_pp" required></td>
                                                    </tr>
                                                    <tr>
                                                        <th width="100px"><span class="star_red">*</span> 법인명</th>
                                                        <td><input name="Cor_name" required></td>
                                                    </tr>
                                                    <tr>
                                                        <th class="nostar">아이디</th>
                                                        <td><input name="Prv_id" required></td>
                                                    </tr>
                                                    <tr>
                                                        <th class="nostar">비밀번호</th>
                                                        <td><input type="password" name="Prv_passw" required></td>
                                                    </tr>
                                                
                                                    <tr>
                                                        <th><span class="star_red">*</span> 업 체 명</th>
                                                        <td>
                                                            <input name="Prv_company_name" required>
                                                            <span class="org_8">* (주)등의 특수문자는 기술하지 않습니다.</span>
                                                        </td>
                                                    </tr>
                                                
                                                    	
                                                	<tr>
                                                        <th width="110px">
                                                            <span class="star_red">*</span> 법인등록번호
                                                        </th>
                                                        <td width="580px">
                                                            <input  title="법인등록번호앞자리" type="text" name="Cor_Reg_Number1" size='7' maxlength='6' uMinLen='6' 
                                                            isOnlyNum="Y" required
                                                             /> 
                                                              - 
                                                            <input title="법인등록번호뒷자리" type="text" name="Cor_Reg_Number2" size='8' maxlength='7'  uMinLen='7'
                                                            isOnlyNum="Y" required
                                                             /> 
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="manage-tb_b" style="border-top:0">
                                                    <tr>
                                                        <th width="110px"  ><span class="star_red">*</span> 사업자등록번호</th>
                                                        <td>
                                                            <input type="hidden" id="saupjaId"  name="saupjaId" value="5058301467" />
                                                            <input title="사업자등록번호앞자리"  type="text" id="saupjaId1" name="Prv_company_reg_num1" class="input_readonly" size='3' 
                                                            maxlength='3'
                                                            isOnlyNum="Y"  uRequired="[사업자등록번호]" uMinLen="3" required/>
                                                            -
                                                            <input title="사업자등록번호중간자리" type="text" id="saupjaId2"  name="Prv_company_reg_num2" class="input_readonly" size='2' 
                                                            maxlength='2' 
                                                            isOnlyNum="Y"  uRequired="[사업자등록번호]" uMinLen="2" required/>
                                                            -
                                                            <input title="사업자등록번호뒷자리" type="text" id="saupjaId3"  name="Prv_company_reg_num3" class="input_readonly" size='5' 
                                                            maxlength='5' 
                                                            isOnlyNum="Y"  uRequired="[사업자등록번호]" uMinLen="5" required/>
                                                        </td>
                                                    </tr>
                                                
                                                    <tr>
                                                        <th width="110px"  height="23" >
                                                            <span class="star_red">*</span> 대 표 자
                                                        </th>
                                                        <td>
                                                            <input title="대표자명" type="text" id="daepyoName"  name="Prv_cor_repre"   maxlength='10'
                                                            uRequired='[대표자명]' isKor="Y" required/>
                                                        </td>
                                                    </tr> 
                                                
                                                   <tr>
                                                        <th class="nostar">상세주소</th>
                                                        <td><input name="Prv_detail_addr" required></td>
                                                    </tr>
                                                    <tr>
                                                        <th width="110px"  height="23" ><span class="star_red">*</span> E-mail</th>
                                                        <td>
                                                            <input title="이메일" type="text" id="emailAddr1"   name="Prv_email1" 
                                                             size="20"
                                                            maxlength="20" isCode="N" uRequired="[이메일]" uMinLen="2" required/> @
                                                            <input title="이메일" type="text" id="emailAddr2"  name="Prv_email2" 
                                                             size="20"
                                                            maxlength="20" isCode="N" uRequired="[이메일]" uMinLen="4" required/>
                                                            <select title="이메일선택" id="email"  name="Prv_email3" onclick="email_change()">
                                                                <option value="" selected="seletecd">직접입력</option>
                                                                
                                                                    <option value="citizen.seoul.kr" 
                                                                     >
                                                                        서울시전자우편서비스
                                                                    </option>
                                                                
                                                                    <option value="hanafos.com" 
                                                                     >
                                                                        하나포스닷컴
                                                                    </option>
                                                                
                                                                    <option value="chollian.net" 
                                                                     >
                                                                        천리안
                                                                    </option>
                                                                
                                                                    <option value="orgio.net" 
                                                                     >
                                                                        오르지오
                                                                    </option>
                                                                
                                                                    <option value="korea.com" 
                                                                     >
                                                                        코리아닷컴
                                                                    </option>
                                                                
                                                                    <option value="freechal.com" 
                                                                     >
                                                                        프리챌
                                                                    </option>
                                                                
                                                                    <option value="hitel.net" 
                                                                     >
                                                                        하이텔
                                                                    </option>
                                                                
                                                                    <option value="hanmir.com" 
                                                                     >
                                                                        한미르
                                                                    </option>
                                                                
                                                                    <option value="hotmail.com" 
                                                                     >
                                                                        핫메일
                                                                    </option>
                                                                
                                                                    <option value="unitel.co.kr" 
                                                                     >
                                                                        유니텔
                                                                    </option>
                                                                
                                                                    <option value="nate.com" 
                                                                     >
                                                                        네이트
                                                                    </option>
                                                                
                                                                    <option value="empal.com" 
                                                                     >
                                                                        엠파스/엠팔
                                                                    </option>
                                                                
                                                                    <option value="nownuri.net" 
                                                                     >
                                                                        나우누리
                                                                    </option>
                                                                
                                                                    <option value="hananet.net" 
                                                                     >
                                                                        하나넷
                                                                    </option>
                                                                
                                                                    <option value="kornet.net" 
                                                                     >
                                                                        코넷
                                                                    </option>
                                                                
                                                                    <option value="naver.com" 
                                                                     >
                                                                        네이버
                                                                    </option>
                                                                
                                                                    <option value="netian.com" 
                                                                     >
                                                                        네띠앙
                                                                    </option>
                                                                
                                                                    <option value="dreamwiz.com" 
                                                                     >
                                                                        드림위즈
                                                                    </option>
                                                                
                                                                    <option value="paran.com" 
                                                                     >
                                                                        파란
                                                                    </option>
                                                                
                                                                    <option value="lycos.co.kr" 
                                                                     >
                                                                        라이코스코리아
                                                                    </option>
                                                                
                                                                    <option value="yahoo.co.kr" 
                                                                     >
                                                                        야후코리아
                                                                    </option>
                                                                
                                                                    <option value="yahoo.com" 
                                                                     >
                                                                        야후
                                                                    </option>
                                                                
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th width="110px"  height="23" >
                                                            <span class="star_red">*</span> 전화번호
                                                        </th>
                                                        <td  >
                                                            <select id="tel0"  title="지역번호" name="Prv_phonenum1">
                                                            <!-- 서울 --><option value="02"
                                                                 >02
                                                            <!-- 경기도 --><option value="031"
                                                                >031
                                                            <!-- 인천 -->    <option value="032"
                                                                >032
                                                            <!-- 강원도 --><option value="033"
                                                                >033
                                                            <!-- 충청남도 --><option value="041"
                                                                >041
                                                            <!-- 대전 --><option value="042"
                                                                >042
                                                            <!-- 충청북도 --><option value="043"
                                                                >043
                                                            <!-- 부산 --><option value="051"
                                                                >051
                                                            <!-- 울산 --><option value="052"
                                                                >052
                                                            <!-- 대구 --><option value="053"
                                                                 >053
                                                            <!-- 경상북도 --><option value="054"
                                                                >054
                                                            <!-- 경상남도 --><option value="055"
                                                                >055
                                                            <!-- 전라남도 --><option value="061"
                                                                >061
                                                            <!-- 광주 --><option value="062"
                                                                >062
                                                            <!-- 전라북도 --><option value="063"
                                                                >063
                                                            <!-- 제주 --><option value="064"
                                                                >064
                                                            <!-- 인터넷폰 --><option value="070"
                                                                >070
                                                            </select>
                                                            <input title="전화번호" id="tel1"  name="Prv_phonenum2" type="text"  size="4" maxlength='4' isOnlyNum="Y" 
                                                            uRequired='[전화번호]' uMinLen='3' value="" required />
                                                            -
                                                            <input title="전화번호" id="tel2"  name="Prv_phonenum3" type="text"  size="4" maxlength='4' isOnlyNum="Y" 
                                                            uRequired='[전화번호]' uMinLen='4' value="" required />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th width="100px" class="nostar"> 휴대폰 번호</th>
                                                        <td>
                                                            <select title="핸드폰전화번호앞자리" id="hPhone0"  name="Prv_mphonenum1">
                                                                <option value='010' >010</option>
                                                                <option value='011' >011</option>
                                                                <option value='016' >016</option>
                                                                <option value='017' >017</option>
                                                                <option value='018' >018</option>
                                                                <option value='019' >019</option>
                                                            </select>
                                                            -
                                                            <input title="전화번호" id="hPhone1"  name="Prv_mphonenum2" type="text"  size="4" maxlength='4' isOnlyNum="Y" 
                                                             uMinLen='3' value="" required/>
                                                            -
                                                            <input title="전화번호" id="hPhone2"  name="Prv_mphonenum3" type="text"  size="4" maxlength='4' isOnlyNum="Y" 
                                                             uMinLen='4' value="" required/>
                                                        </td>
                                                    </tr>
                                                    </table>
                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="manage-tb_b" style="border-top:0" id="damdang_layer">
                                                        <tr>
                                                        <th width="110px" >
                                                            <span class="star_red">* </span>관리자
                                                        </th>
                                                        <td width="580px" >
                                                            <input title="관리자" type="text" id="damdangName"  name="Prv_manager"   maxlength='10'
                                                            isKor="Y" value="" 
                                                             uRequired='[관리자]'  />
                                                        </td>
                                                    </tr>
                                                    </table>
                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="manage-tb_b" style="border-top:0">
                                                    <tr>
                                                        <th width="110px" ><span class="star_red">*</span> E-mail 수신</th>
                                                        <td >					
                                                            <input type="radio" id="emailYn"  name="Prv_email_recep" value="1"  class="input_w" 
                                                            checked />
                                                            수신
                                                            <input type="radio" id="emailYn"  name="Prv_email_recep" value="0"  class="input_w" 
                                                             />
                                                            수신거부 			
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- <div class="manage-btn_c">
                                                            <input type="button" onclick="executeCMD('SPTICA0U0')" value="저장"/>
                                                            <input type="button" onclick="executeReset()" value="취소"/>
                                                </div> -->	
                                                <input type="hidden" name="actionName" value="action/ac_signup_info_action.jsp"/>
                                                <div class="btn__">
													<input type="submit" value="저장"
														class=" left">
												</div>
                                                </form>

                                        </div>

                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="footer" id="footer"></div>
                </body>

            </html>