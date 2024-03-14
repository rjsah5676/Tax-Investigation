<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <html>

        <head>
            <meta charset="utf-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <title>YC_login test</title>
            <link rel="stylesheet" type="text/css" href="../css/public.css">
                <link rel="stylesheet" type="text/css" href="../css/admin.css">
                    <script type="text/javascript" src="../js/jquery-1.12.4.min.js"></script>
                    <script type="text/javascript" src="../js/admin.js"></script>
                </head>

                <body onload="init();">
                <form action="/testDB/admin/work.jsp" name='test' method="post"></form>
                    <div class="top" id="top"></div>
                    <div class="nav-wrapper__hd" id="nav"></div>
                    <div class="wrap">
                        <div class="wrap-logo">
                            <img src="../images/public/yctest2.png"></div>
                            <div class="wrap-left">
                                <div class="wrap-left-title">
                                    통지서조회
                                </div>
                                <ul>
                                    <li>
                                        <a onclick="movePage('ad_admin1.jsp')">
                                            법인별/물건별 세무조사결과 및 과세예고 내역
                                        </a>
                                    </li>
                                    <li>
                                        <a onclick="movePage('ad_admin2.jsp')">세무조사결과통지서</a>
                                    </li>
                                    <li>
                                        <a onclick="movePage('ad_admin3.jsp')">지방세 과세예고 통지서</a>
                                    </li>
                                    <li>
                                        <a
                                            href="#"
                                            class="selected_menu">과세예고 통지</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="wrap-right">
                                <div class="wrap-right-img">
                                    <img alt="과세예고 통지" src="../images/admin/admin_title.png">
                                </div>
                                    <div class="wrap-right-sub_depth">
                                        <img alt="처음으로" src="../images/public/btnHomeTest.png" align="absmiddle">
                                            <a onclick="movePage('ad_main.jsp')">Home</a>
                                            > 통지서조회 > 과세예고 통지
                                        </div>
                                        <div class="manage-wrap-right-content">
                                            <form name='frm' action="/work" method="post" style="margin:0">
                                                <div name="sendFormFields" id="sendFormFields" style="display:none;"></div>
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="manage-tb_b">
                                                    <tr>
                                                        <th width="110px"  height="23" ><span class="star_red">*</span> E-mail</th>
                                                        <td>
                                                            <input title="이메일" type="text" id="emailAddr1"   name="emailAddr1" 
                                                             value="" size="20"
                                                            maxlength="20" isCode="N" uRequired="[이메일]" uMinLen="2"/> @
                                                            <input title="이메일" type="text" id="emailAddr2"  name="emailAddr2" 
                                                             value="" size="20"
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
                                                        <th width="110px"  height="23" >
                                                            <span class="star_red">*</span> 첨부하기
                                                        </th>
                                                        <td>
                                                            <input title="첨부" id=""  name="" type="file"/>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <div class="manage-btn_c">
                                                            <input type="button" onclick="executeCMD('SPTICA0U0')" value="통지"/>
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