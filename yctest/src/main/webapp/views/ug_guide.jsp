<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
    <html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>법인세무조사 인터넷신고시스템</title>
        <link rel="stylesheet" type="text/css" href="css/public.css">
        <link rel="stylesheet" type="text/css" href="css/ug_guide.css">
        <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
        <script type="text/javascript" src="js/public.js"></script>
        <title>Document</title>
    </head>

    <body onload="init();">
	<% String cur_path = request.getContextPath(); 
		String isLogin = (String) session.getAttribute("userId");
	%>
	<c:set var="isLogin" value="<%=isLogin %>"/>
<div id="formSet"></div>
<form action="<%=cur_path %>/work.jsp" name='pdfPage' method="post"></form>
        <div class="top" id="top" value="<%= isLogin %>"></div>
        <div class="nav-wrapper__hd" id="nav"></div>
        <div class=wrap>
            <div class="wrap-logo">
                <img src="images/public/yctest4.png">
            </div>
            <div class=wrap-left>
                <div class="wrap-left-title">
                    이용안내
                </div>
                <ul>
                    <li><a onclick="movePage('views/ug_clause.jsp')">이용약관</a></li>
                    <li><a href="#" class="selected_menu">이용안내</a></li>
                    <li><a onclick="movePage('views/ug_sitemap.jsp')">사이트맵</a></li>
                    <li><a onclick="movePage('views/ug_site.jsp')">관련사이트</a></li>
                    <li><a onclick="pdfPages('1')">PDF파일변환안내</a></li>
                </ul>
            </div>
            <div class="wrap-right">
                <div class="wrap-right-img">
                    <img class="sub-title_img" alt="서브타이틀" src="images/sub_title/ug_guide_title.png">
                </div>
                <div class="wrap-right-sub_depth">
                    <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle"><a onclick="movePage('')">
                        Home</a> &gt; 이용안내 &gt;
                    이용약관
                </div>
                <script language="javascript">
                    var old_menu = '';
                    function menuclick(submenu) {
                        if (old_menu != submenu) {
                            if (old_menu != '') {
                                old_menu.style.display = 'none';
                            }
                            submenu.style.display = 'block';
                            old_menu = submenu;
                        } else {
                            submenu.style.display = 'none';
                            old_menu = '';
                        }
                    }
                </script>
                <div id="sitemap-wrap-right-content">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td style="padding:0 0 5 10">
                                    <img src="images/ug_guide/guide_tit.gif">
                                </td>
                                <map name="Map">
                                    <area shape="rect" coords="145,41,219,62" href="javascript:window.scrollTo(0,500);"
                                        onclick="menuclick(submenu1);" style="cursor:hand;" onfocus="blur();">
                                    <!--          <area shape="rect" coords="34,100,106,133" href="javascript:window.scrollTo(0,500);" onClick="menuclick(submenu2);" style="cursor:hand;" onfocus="blur();">  -->
                                    <area shape="rect" coords="33,100,130,132" href="javascript:window.scrollTo(0,500);"
                                        onclick="menuclick(submenu3);" style="cursor:hand;" onfocus="blur();">
                                    <area shape="rect" coords="138,100,235,132"
                                        href="javascript:window.scrollTo(0,500);" onclick="menuclick(submenu4);"
                                        style="cursor:hand;" onfocus="blur();">
                                    <area shape="rect" coords="245,100,341,132"
                                        href="javascript:window.scrollTo(0,500);" onclick="menuclick(submenu5);"
                                        style="cursor:hand;" onfocus="blur();">
                                    <area shape="rect" coords="145,150,220,169"
                                        href="javascript:window.scrollTo(0,500);" onclick="menuclick(submenu6);"
                                        style="cursor:hand;" onfocus="blur();">
                                    <area shape="rect" coords="140,183,226,203"
                                        href="javascript:window.scrollTo(0,500);" onclick="menuclick(submenu7);"
                                        style="cursor:hand;" onfocus="blur();">
                                    <area shape="rect" coords="129,13,234,33" href="javascript:window.scrollTo(0,500);"
                                        onclick="menuclick(submenu11);" style="cursor:hand;" onfocus="blur();">
                                </map>
                            </tr>
                        </tbody>
                    </table>

                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td style="padding:0 0 5 10">
                                    <img src="images/ug_guide/guide_txt01.png">
                                </td>

                            </tr>
                        </tbody>
                    </table>

                    <tr style="padding-top:5pt">
                        <td width="342" style="padding-right:5pt"><img src="images/ug_guide/guide_img01.png"
                                border="0" usemap="#Map"></td>
                        <td width="270"><img src="images/ug_guide/guide_img02.gif" border="0" usemap="#Map2"></td>
                    </tr>


                    <tr style="padding-top:5pt"> <br>
                        <td colspan="2" class="txt_s12" style="padding-right:5pt"><img
                                src="images/ug_guide/ic_box01.gif" width="9" height="9">
                            조사자료작성메뉴는
                            해당년도 조사대상으로 선정된 법인 또는 해당 법인의 대리인만 이용할 수 있습니다.<br> </td>
                    </tr>

                    <tr style="padding-top:5pt">
                        <td colspan="2" class="txt_s12" style="padding-right:5pt"><img
                                src="images/ug_guide/ic_box01.gif" width="9" height="9"> 대상
                            법인이 조사자료를 작성하기 위해서는 로그인이 필요합니다..<br> </td>
                    </tr>

                    <tr style="padding-top:5pt">
                        <td colspan="2" style="padding-right:5pt"><img src="images/ug_guide/ic_box01.gif" width="9"
                                height="9"> 로그인
                            이후 작성할 법인을 선택 후 다음과 같은 과정에 따라 조사자료를 작성 제출하시면 됩니다.<br> </td>
                    </tr>


                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td>
                                    <div id="submenu1" style="display: none;">
                                        <!-- <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="24A3DB">
                                            <tbody>
                                                <tr height="5">
                                                    <td></td>
                                                </tr>
                                            </tbody>
                                        </table> -->
                                        <!-- <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                            <tbody>
                                                <tr class="txt_s11">
                                                    <td valign="top"><img src="/hwaseong/image/guide_txt_01.gif"
                                                            width="65" height="62"></td>
                                                    <td style="padding-top:5pt">
                                                        <ul>
                                                            <li>조사대상 법인의 조사자료 작성 전 필수 입력 항목으로 법인현황의 작성 없이는
                                                                관련 메뉴를 작성하실 수 없습니다. 최우선으로 법인현황부터 작성하세요.</li>
                                                            <li>기존의 조사 항목에 법인의 분할/ 합병여부를 추가하였습니다. 이는 정확한 과세추정 참고 자료로 공정한
                                                                세무행정이 될 수 있도록
                                                                기존 법인과의 이력을 관리할
                                                                수 있도록 하기 위해서입니다. 이점 유념하시어 누락 없이 작성해 주시기 바랍니다.</li>
                                                            <li>해당 화면마다 상단에 작성중인 법인정보 및 관할, 조사년도, 조사사업기간 정보를 확인할 수 있습니다.
                                                            </li>
                                                            <img src="/hwaseong/image/guide_img1_01.gif"><br>
                                                            <img src="/hwaseong/image/guide_img1_02.gif"><br>
                                                            ① 기술된 법인 주소가 변경되었을 때에는 변경된 주소로 작성하시고, 설립 년, 월, 일 등은 달력을 클릭하여
                                                            해당 날짜를 입력합니다.<br>
                                                            ② 하단의 분할/합병 유무의 체크를 통해 하단에 분할 전 또는 합병 전 법인번호를 입력 하세요.<br>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr class="txt_s11">
                                                    <td height="5px" colspan="2" valign="top">
                                                        <table width="100%" border="0" cellpadding="0" cellspacing="0"
                                                            bgcolor="#24A3DB">
                                                            <tbody>
                                                                <tr height="5px">
                                                                    <td></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr class="txt_s11">
                                                    <td valign="top"><img src="/hwaseong/image/guide_txt_02.gif"
                                                            width="65px" height="62px"></td>
                                                    <td style="padding-top:5pt">
                                                        <ul>
                                                            <li>본점의 사업장 현황 작성 이후 [저장] 버튼 클릭
                                                                후 저장확인 Alert 창의
                                                                [확인] 버튼 클릭으로 작성 자료는 저장됩니다.<br>
                                                                <img src="/hwaseong/image/guide_img1_03.gif">
                                                            </li>
                                                            <li>추가 사업장이 있다면 저장 버튼 이후 clear 된 화면에 신규 사업장의 등록번호 및
                                                                기타 정보를 입력하여 사업장현황을 추가합니다.<br><img
                                                                    src="/hwaseong/image/guide_img1_04.gif">
                                                                <a class="txt_o11">Tip )</a> 본점 이하 전 사업장의 등록 정보는 이후
                                                                지방소득세특별징수 및 기타 화면에서 사업장리스트로 제공되어 먼저 등록해 두면 훨씬 편하게
                                                                조사자료를 작성할 수 있습니다.<br>
                                                                <br>
                                                                특히 작성 중 주의하실 사항은 조사 기간 내 사업장의 건물면적 및 근무인원에 대한 변경 이력을
                                                                확인하여 해당 사업장의 정보를 정확히 작성할
                                                                수 있도록 합니다.
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table> -->
                                    </div>
                                    <div id="submenu2" style="display:none;">
                                        
                                    </div>
                                    <div id="submenu4" style="display: block;">
                                        
                                    </div>
                                    <div id="submenu5" style="display:none;">
                                       
                                    </div>

                                    <div id="submenu6" style="display:none;">
                                        
                                    </div>
                                    <div id="submenu7" style="display:none;">
                                        
                                    </div>
                                    <div id="submenu8" style="display:none;">
                                        
                                    </div>
                                    <div id="submenu9" style="display:none;">
                                        
                                    </div>
                                    <div id="submenu10" style="display:none;">
                                       
                                    </div>
                                    <div id="submenu11" style="display: none;">
                                        
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        </div>
        <map name="Map2">
            <area shape="rect" coords="12,69,93,88" href="javascript:window.scrollTo(0,400);"
                onclick="menuclick(submenu8);" style="cursor:hand;" onfocus="blur();">
            <area shape="rect" coords="176,70,256,90" href="javascript:window.scrollTo(0,300);"
                onclick="menuclick(submenu9);" style="cursor:hand;" onfocus="blur();">
            <area shape="rect" coords="86,91,183,110" href="javascript:window.scrollTo(0,400);"
                onclick="menuclick(submenu10);" style="cursor:hand;" onfocus="blur();">
        </map>
        <div class="footer" id="footer"></div>
    </body>

    </html>