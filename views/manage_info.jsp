<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <html>

        <head>
            <meta charset="utf-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <title>YC_login test</title>
            <link rel="stylesheet" type="text/css" href="css/public.css">
                <link rel="stylesheet" type="text/css" href="css/mypage.css">
                    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
                    <script type="text/javascript" src="js/public.js"></script>
                </head>

                <body onload="init();">
                <form action="/testDB/work.jsp" name='test' method="post"></form>
                    <div class="top" id="top"></div>
                    <div class="nav-wrapper__hd" id="nav"></div>
                    <div class="wrap">
                        <div class="wrap-logo">
                            <img src="images/public/yctest2.png"></div>
                            <div class="wrap-left">
                                <div class="wrap-left-title">
                                    마이페이지
                                </div>
                                <ul>
                                    <li>
                                        <a href="#" class="selected_menu">정보관리</a>
                                            <div class="manage-wrap-left-title_sub">
															
                                                <ul>
                                                    <li><a href="#" class="selected_menu">기본정보관리</a></li>
                                                    
                                                                        
                                                            <li><a onclick="movePage('views/manage_agent.jsp')">대리인관리</a></li>							
                                                    
                                                    
                                                      <li><a onclick="movePage('views/delete_member.jsp')">회원탈퇴</a></li>
                                                  </ul>
                                                                    
                                        </div>
                                    </li>
                                    <li>
                                        <a onclick="movePage('views/view_report_target.jsp')">
                                            <span>신고대상여부조회</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a onclick="movePage('views/view_submit.jsp')">접수결과조회</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="wrap-right">
                                <div class="manage-wrap-right-img">
                                    <img src="images/mypage/title_5_1_1.gif"></div>
                                    <div class="wrap-right-sub_depth">
                                        <img alt="처음으로" src="images/investigation/home_s.gif" align="absmiddle">
                                            <a onclick="movePage('')">Home</a>
                                            > My Page > 정보관리 > 기본정보관리
                                        </div>
                                        <div class="wrap-right-content">
                                            <img alt="기본정보관리" src="images/mypage/title_5_1_1_1.gif">
                                            <form name='frm' action="/work" method="post" style="margin:0">
                                                <div name="sendFormFields" id="sendFormFields" style="display:none;"></div>
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="manage-tb_b">
                                                    <tr>
                                                        <th width="100px" class="nostar"> 법인여부</th>
                                                        <td><!--법인여부 부분--></td>
                                                    </tr>
                                                
                                                    <tr>
                                                        <th><span class="star_red">*</span> 업 체 명</th>
                                                        <td>
                                                            <input title="업체명" id="sangho" name="sangho" type="text"  size="30" uRequired='[업체명]' isKor="Y" 
                                                            value="#" />
                                                            <span class="org_8">* (주)등의 특수문자는 기술하지 않습니다.</span>
                                                        </td>
                                                    </tr>
                                                
                                                    <tr>
                                                        <th class="nostar">아이디</th>
                                                        <td><!--아이디부분--> </td>
                                                    </tr>
                                                    <tr>
                                                        <th><span class="star_red">*</span> 비밀번호</th>
                                                         <td><div  style="padding-top:3px">
                                                               <input type="radio" id="pwChangeChk"  name="pwChangeChk" value="0" onclick="passwd_input('0')"
                                                               checked     class="input_w" />아니오 &nbsp;
                                                              <input type="radio" id="pwChangeChk" name="pwChangeChk" value="1" onclick="passwd_input('pwlayer')"
                                                                class="input_w"/>예 &nbsp;&nbsp;
                                                            &nbsp;<span class="org_8"> * 비밀번호를 변경하실 경우에만 "예"를 선택하세요.</span>
                                                            </div>
                                                
                                                  <!-- 비빌번호 -->
                                                              <div  id="pwlayer" style="display:none; margin-top:10px; height:30px;">     	          
                                                                <div style="width:200px;float:left;margin-top:4px;"><input title="비밀번호" id="userPw" name="userPw" type="password" size="30" 
                                                                uminlen='10' maxlength="15" uRequired='[패스워드]' value="d1edfce357b5eca1e9014e14cb99b6bb5e6e52573bafcf0d4cc30a1b48ddf03e" autocomplete="off"/></div>
                                                                <div style="width:350px;float:left;margin-left:5px;"><span class="manage-text-org_8">* 영문,숫자,특수문자 세가지 혼합 9~15자,4자 이상의 연속 또는 <br/> &nbsp;&nbsp;&nbsp;&nbsp;반복 문자 및 숫자 사용불가 </span></div>
                                                            </div>
                                                        </td>
                                                    </tr>	
                                                </table>
                                                <div id="pwlayer1" style="position:relative;display:none;margin-top:0px;height:0px;">  
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="manage-tb_b" style="border-top:0">
                                                    <tr>
                                                        <th width="110px"><span class="star_red">*</span> 비밀번호 확인</th>
                                                        <td><input title="패스워드확인" id="userPw2" name="userPw2" type="password" size="30" 
                                                                uminlen='10' maxlength="15" autocomplete="off"/></td>
                                                    </tr>
                                                </table>
                                                </div>
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="manage-tb_b" style="border-top:0" id="bubin_layer">
                                                <tr>
                                                        <th width="110px">
                                                            <span class="star_red">*</span> 법인등록번호
                                                        </th>
                                                        <td width="580px">
                                                            <input  title="법인등록번호앞자리" type="text" id="bubinId1" name="bubinId1" size='7' maxlength='6' uMinLen='6' 
                                                            isOnlyNum="Y" value="#" 
                                                            
                                                             
                                                                class="input_readonly" readonly 
                                                             /> 
                                                              - 
                                                            <input title="법인등록번호뒷자리" type="text" id="bubinId2"  name="bubinId2" size='8' maxlength='7'  uMinLen='7'
                                                            isOnlyNum="Y" value="#" 
                                                            
                                                             
                                                                class="input_readonly" readonly 
                                                             /> 
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="manage-tb_b" style="border-top:0">
                                                    <tr>
                                                        <th width="110px"  ><span class="star_red">*</span> 사업자등록번호</th>
                                                        <td>
                                                            <input type="hidden" id="saupjaId"  name="saupjaId" value="5058301467" />
                                                            <input title="사업자등록번호앞자리"  type="text" id="saupjaId1" name="saupjaId1" class="input_readonly" size='3' 
                                                            maxlength='3' value='#'
                                                            isOnlyNum="Y"  uRequired="[사업자등록번호]" uMinLen="3" readonly/>
                                                            -
                                                            <input title="사업자등록번호중간자리" type="text" id="saupjaId2"  name="saupjaId2" class="input_readonly" size='2' 
                                                            maxlength='2' value='#'
                                                            isOnlyNum="Y"  uRequired="[사업자등록번호]" uMinLen="2" readonly/>
                                                            -
                                                            <input title="사업자등록번호뒷자리" type="text" id="saupjaId3"  name="saupjaId3" class="input_readonly" size='5' 
                                                            maxlength='5' value='#'
                                                            isOnlyNum="Y"  uRequired="[사업자등록번호]" uMinLen="5" readonly/>
                                                        </td>
                                                    </tr>
                                                
                                                    <tr>
                                                        <th width="110px"  height="23" >
                                                            <span class="star_red">*</span> 대 표 자
                                                        </th>
                                                        <td>
                                                            <input title="대표자명" type="text" id="daepyoName"  name="daepyoName"   maxlength='10'
                                                            uRequired='[대표자명]' isKor="Y" value="#"/>
                                                        </td>
                                                    </tr>
                                                
                                                    <tr>
                                                        <th width="110px"  height="23" >
                                                            <span class="star_red">*</span> 상세주소<br/>&nbsp;&nbsp;(상세주소)
                                                        </th>
                                                        <td style="padding-left:0" >
                                                     <!-- 도로명 주소  -->
                                                        <div id="gdlayer2" style="display:block">
                                                            <dl>
                                                            <dd class="manage-under"> 
                                                                   <input id="dMailCd1" name="dMailCd1" type="text" size="6"  style="text-align: center" title="우편번호" 
                                                                   value='#' class="input_readonly" readonly/>	
                                                            <!-- 
                                                                -
                                                                <input id="dMailCd2" name="dMailCd2" type="text" size="3" value='' 
                                                                title="우편번호 뒷자리" class="input_readonly" readonly />
                                                             -->	
                                                                <input type="button" value="우편번호"  onclick="openjusoPopup();" class="manage-juso_btn" />
                                                                  <input id="dDoroAddr" name="dDoroAddr" title="주소검색" type="text" size="50" maxlength="70"  value='#' 
                                                                  class="input_readonly" readonly/>
                                                                  <input id="mailSiguCd" name="mailSiguCd" type="hidden" value="999"/>
                                                                              <input title="우편번호" type="hidden" id="mailAddr"  name="mailAddr"  size="40"
                                                             value="#" uRequired='[우편번호]' class="input_w" readonly/>
                                                                  
                                                              </dd>
                                                            <dd class="manage-under1">
                                                                  <input id="dSidoName" name="dSidoName" type="hidden" value=''/>
                                                                <input id="dSiguName" name="dSiguName" type="hidden" value=''/>
                                                                <input id="dDongName" name="dDongName" type="hidden" value=''/>
                                                                <input id="dBldName"  name="dBldName"  type="hidden" value=''/>
                                                                <input id="dDoroName" name="dDoroName" type="hidden" value=''/>
                                                                <input id="dDoroCd"   name="dDoroCd"   type="hidden" value=''/>
                                                                <input id="dDoroNo"   name="dDoroNo"   type="hidden" value=''/>
                                                                <input id="dBldBon"   name="dBldBon"   type="hidden" value=''/>
                                                                <input id="dBldBu"    name="dBldBu"    type="hidden" value=''/>
                                                                <input id="dUndYn"    name="dUndYn"    type="hidden" value=''/>
                                                            상세주소<input id="dDongho" name="dDongho" type="text" size="20" maxlength="20" title="상세주소"value=''/>
                                                            도로주소참고항목<input id="dReffAddr" name="dReffAddr" type="text" size="40" maxlength="70" value='#'  title="도로주소 참고항목" />
                                                              </dd>	
                                                            </dl>
                                                        </div>
                                                        
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th width="110px"  height="23" ><span class="star_red">*</span> E-mail</th>
                                                        <td>
                                                            <input title="이메일" type="text" id="emailAddr1"   name="emailAddr1" 
                                                             value="#" size="20"
                                                            maxlength="20" isCode="N" uRequired="[이메일]" uMinLen="2"/> @
                                                            <input title="이메일" type="text" id="emailAddr2"  name="emailAddr2" 
                                                             value="#" size="20"
                                                            maxlength="20" isCode="N" uRequired="[이메일]" uMinLen="4"/>
                                                            <select title="이메일선택" id="email"  name="email" onclick="email_change()">
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
                                                            <select id="tel0"  title="지역번호" name="tel0">
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
                                                            <input title="전화번호" id="tel1"  name="tel1" type="text"  size="4" maxlength='4' isOnlyNum="Y" 
                                                            uRequired='[전화번호]' uMinLen='3' value="#"/>
                                                            -
                                                            <input title="전화번호" id="tel2"  name="tel2" type="text"  size="4" maxlength='4' isOnlyNum="Y" 
                                                            uRequired='[전화번호]' uMinLen='4' value="#"/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th width="100px" class="nostar"> 휴대폰 번호</th>
                                                        <td>
                                                            <select title="핸드폰전화번호앞자리" id="hPhone0"  name="hPhone0" >
                                                                <option value='010' >010</option>
                                                                <option value='011' >011</option>
                                                                <option value='016' >016</option>
                                                                <option value='017' >017</option>
                                                                <option value='018' >018</option>
                                                                <option value='019' >019</option>
                                                            </select>
                                                            -
                                                            <input title="전화번호" id="hPhone1"  name="hPhone1" type="text"  size="4" maxlength='4' isOnlyNum="Y" 
                                                             uMinLen='3' value=""/>
                                                            -
                                                            <input title="전화번호" id="hPhone2"  name="hPhone2" type="text"  size="4" maxlength='4' isOnlyNum="Y" 
                                                             uMinLen='4' value=""/>
                                                        </td>
                                                    </tr>
                                                    </table>
                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="manage-tb_b" style="border-top:0" id="damdang_layer">
                                                        <tr>
                                                        <th width="110px" >
                                                            <span class="star_red">* </span>관리자
                                                        </th>
                                                        <td width="580px" >
                                                            <input title="관리자" type="text" id="damdangName"  name="damdangName"   maxlength='10'
                                                            isKor="Y" value="#" 
                                                             uRequired='[관리자]'  />
                                                        </td>
                                                    </tr>
                                                    </table>
                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="manage-tb_b" style="border-top:0">
                                                    <tr>
                                                        <th width="110px" ><span class="star_red">*</span> E-mail 수신</th>
                                                        <td >					
                                                            <input type="radio" id="emailYn"  name="emailYn" value="1"  class="input_w" 
                                                            checked />
                                                            수신
                                                            <input type="radio" id="emailYn"  name="emailYn" value="2"  class="input_w" 
                                                             />
                                                            수신거부 			
                                                        </td>
                                                    </tr>
                                                </table>
                                                <div class="manage-btn_c">
                                                            <input type="button" onclick="executeCMD('SPTICA0U0')" value="저장"/>
                                                            <input type="button" onclick="executeReset()" value="취소"/>
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