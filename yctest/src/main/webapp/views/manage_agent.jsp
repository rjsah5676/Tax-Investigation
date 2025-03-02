<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="company.company_table_DAO"%>
<%@ page import="company.companyVO"%>
<%@ page import="agent.agentDAO"%>
<%@ page import="agent.agentVO"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.Date"%>
<%@ page import="java.text.SimpleDateFormat"%> 
    <html>

        <head>
            <meta charset="utf-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <title>법인세무조사 인터넷신고시스템</title>
            <link rel="stylesheet" type="text/css" href="css/public.css">
                <link rel="stylesheet" type="text/css" href="css/mypage.css">
                    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
                    <script type="text/javascript" src="js/public.js"></script>
                    <script type="text/javascript">
                    function search_agent()
                    {
                    	let option = "width = 800, height = 410, top = 100, left = 200, location = no";
                    	window.name = "parentForm";
                        openWin = window.open('../views/search_agent.jsp',
                        		"window_agent", option);
                    }
                    function myAgent(){
                    	var chk = document.getElementById("myControl");
                    	var list1 = document.getElementById("Prv_company_reg_num1");
                    	var list2 = document.getElementById("Prv_company_reg_num2");
                    	var list3 = document.getElementById("Prv_company_reg_num3");
                    	var JB = document.getElementById("gulmoID");
                    		
                    	if(chk.checked==true){		
                    		document.all['table_layer1'].style.display = "none";	
                    		document.all['table_layer2'].style.display = "none";	
                    		document.all['table_layer3'].style.display = "none";	
                    		document.all['table_layer4'].style.display = "none";	

                    		list1.readOnly = false;
                    		list2.readOnly = false;
                    		list3.readOnly = false;
                    		list1.style.backgroundColor='#FFFFFF';		
                    		list2.style.backgroundColor='#FFFFFF';		
                    		list3.style.backgroundColor='#FFFFFF';		

                    		list1.focus();
                    		JB.reset();
                    		chk.checked=true;
                    		
                    	}else{
                    	
                    		document.all['table_layer1'].style.display = "block";	// 화면에 보여준다.
                    		document.all['table_layer2'].style.display = "block";	// 화면에 보여준다.
                    		document.all['table_layer3'].style.display = "block";	// 화면에 보여준다.
                    		document.all['table_layer4'].style.display = "block";	

                    		list1.readOnly = true;
                    		list2.readOnly = true;
                    		list3.readOnly = true;
                    		JB.reset();
                    		list1.style.backgroundColor='#DFE9F0';		
                    		list2.style.backgroundColor='#DFE9F0';		
                    		list3.style.backgroundColor='#DFE9F0';		

                    		chk.checked=false;
                    	}	
                    }
                    </script>
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
                            <div class="wrap-left">
                                <div class="wrap-left-title">
                                    마이페이지
                                </div>
                                <ul>
                                    <li>
                                        <a href="#" class="selected_menu">정보관리</a>
                                        <div class="manage-wrap-left-title_sub">

                                            <ul>
                                                <li>
                                                    <a onclick="movePage('views/manage_info.jsp')">기본정보관리</a>
                                                </li>

                                                <li>
                                                    <a href="#" class="selected_menu">대리인관리</a>
                                                </li>

                                                <li>
                                                    <a onclick="movePage('views/delete_member.jsp')">회원탈퇴</a>
                                                </li>
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
                                    <img  class="sub-title_img" src="images/sub_title/my_manage_title.png"></div>
                                    <div class="wrap-right-sub_depth">
                                        <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle">
                                            <a onclick="movePage('')">Home</a>
                                            > My Page > 정보관리 > 대리인관리
                                        </div>
                                        <div class="wrap-right-content">
                                            <img alt="대리인관리" src="images/mypage/title_5_1_2_1.gif">

                                                <div class="manage-wrap-right-info">
                                                    <img alt="" src="#" align="absmiddle"/>
                                                    <strong>대리인 지정 방법</strong>
                                                     <ul style="padding-left:20pt;">
                                                        <li>대리인이 등록되었는지 &quot;조회&quot;버튼을 클릭하시면 알수 있습니다.</li>
                                                        <li>대리인이 등록되어 있지 않을경우 &quot;직접입력&quot;을 체크하시고,
                                                            &quot;사업자등록번호&quot;,&quot;대리종료일자&quot;를 입력하시면 됩니다.</li>
                                                        <li>대리인 정보를 수정하고자 하는 경우 &quot;관계해지&quot;를 먼저 하시고 대리인 지정을 하시기 바랍니다.</li>
                                                    </ul>
                                                    <span class="manage-text-org_8">* 대리인 정보의 직접 입력을 통해 부정확한 정보의유입으로 인한 불이익 책임소재는 법인에게 있습니다.</span>
                                                </div>
                                                    <div name="sendFormFields" id="sendFormFields" style="display:none;"></div>
                                                    <br/>
                                                    <%
										    company_table_DAO companyDAO = new company_table_DAO();
										    String ret = companyDAO.findId(isLogin);
										    agentVO agent_ret = agentDAO.findAgent(ret);
										    String inp1 = "";
										    String inp2 = " ==== 현재 대리인이 지정되지 않았습니다. ====";
										    String inp3 = "";
										    String inp4 = "";
// 최근에 등록된 대리인 불러오게 구현되어있음
											if(agent_ret!=null){
												companyVO company_ret = companyDAO.loadList(agent_ret.getAgent_Cor_Reg_Number());
												inp1 = company_ret.getPrv_company_reg_num();
												inp2 = company_ret.getPrv_company_name();
												inp3 = company_ret.getPrv_detail_addr();
												SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
												String tmp = transFormat.format(agent_ret.getEnd_date());
												String[] strArray = tmp.split(" ");
												inp4=strArray[0];
											}
											%>
                                                    <img alt="대리인현황" src="images/mypage/title_5_1_2_2.gif"/>

                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="manage-tb_b">
                                                        <tr>
                                                            <td class="manage-tdbb_t_l_star">사업자번호</td>
                                                            <td class="manage-tdw_l" style="padding-left:10px">
                                                            	<%=inp1%>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="130px" class="manage-tdbb_t_l_star">업체명</td>
                                                            <td class="manage-tdw_l" style="padding-left:10px">
																<%=inp2 %>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="manage-tdbb_t_l_star">주소(동까지 표현)</td>
                                                            <td class="manage-tdw_l" style="padding-left:10">
                                                            	<%=inp3 %>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="manage-tdbb_t_l_star">대리인 설정기간</td>
                                                            <td class="manage-tdw_l" style="padding-left:10">
                                                            	<%=inp4 %>
                                                            </td>
                                                        </tr>
                                                    </table>

                                                    <div class="manage-btn_r"></div>
                                                    <img alt="대리인설정(상세보기)" src="images/mypage/title_5_1_2_3.gif"/>
                                                    <table
                                                        width="100%"
                                                        border="0"
                                                        cellspacing="1"
                                                        cellpadding="0"
                                                        class="manage-table_gray">
                                                        <tr>
                                                            <td
                                                                class="manage-tdg_l"
                                                                style="padding-top:5pt;padding-bottom:5pt;padding-left:10pt;padding-right:5pt;">

                                                                <table width="100%" border="0" cellspacing="2" cellpadding="0">
                                                                    <tr>
                                                                        <td width="100px" class="manage-txt_detail_u">
                                                                            <select title="선택" name="searchAgent" onchange="agentChk()">
                                                                                <option value="1">업체명</option>
                                                                                <option value="2">사업자번호</option>
                                                                            </select>
                                                                        </td>
                                                                        <td width="200px">
                                                                            <input
                                                                                title="조회"
                                                                                type="text"
                                                                                name="search"
                                                                                id="search"
                                                                                maxlength="20"
                                                                                onkeydown="if (event.keyCode == 13) onclick="search_agent()""/>
                                                                            <input type="button" onclick="search_agent()" value="조회" class="manage-btn_blue"/>
                                                                        </td>
                                                                        <td>
                                                                            * 업체명이나 사업자등록번호를 모르실 경우 조회버튼을 클릭하여 조회하실 수 있습니다.
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>

                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <br>
                                            <form action="<%=cur_path %>/work.jsp" method="post" style="margin:0" name="write" id="gulmoID">
                                            <input type="hidden" name ="Cor_Reg_Number" value = "<%=ret %>"/>

                                                <img alt="대리인정보" src="images/mypage/title_5_1_2_4.gif"/>
                                                <input
                                                    title="체크박스"
                                                    type="checkbox"
                                                    name="myControl"
                                                    id="myControl"
                                                    value="checkbox"
                                                    onclick="myAgent()"
                                                    style="border:0"/>직접지정
                                                <span class="manage-text-org_8">* 직접지정을 체크 하시면 아래 사업자 등록 번호를 직접 입력 하여 대리인을 설정할 수 있습니다.
                                                </span>
                                                <br/>
                                                <table
                                                    width="100%"
                                                    border="0"
                                                    cellspacing="0"
                                                    cellpadding="0"
                                                    class="manage-t_blue_d1">
                                                    <tr>
                                                        <td width="105" class="manage-tdbb_t_l_star">
                                                            <span class="star_red">*</span>
                                                            사업자등록번호</td>
                                                        <td width="559" class="manage-tdw_l">&nbsp;
                                                            <input
                                                                title="사업자등록번호"
                                                                type="text"
                                                                name="Prv_company_reg_num1"
                                                                size='3'
                                                                id="Prv_company_reg_num1"
                                                                maxlength='3'
                                                                value=""
                                                                isOnlyNum="Y"
                                                                uRequired="[사업자등록번호]"
                                                                uMinLen="3"
                                                                readonly="readonly"
                                                                placeholder = "000"/>
                                                            -
                                                            <input
                                                                title="사업자등록번호"
                                                                type="text"
                                                                name="Prv_company_reg_num2"
                                                                size='2'
                                                                id="Prv_company_reg_num2"
                                                                maxlength='2'
                                                                value=""
                                                                isOnlyNum="Y"
                                                                uRequired="[사업자등록번호]"
                                                                uMinLen="2"
                                                                readonly="readonly"
                                                                placeholder = "00"/>
                                                            -
                                                            <input
                                                                title="사업자등록번호"
                                                                type="text"
                                                                name="Prv_company_reg_num3"
                                                                size='5'
                                                                id="Prv_company_reg_num3"
                                                                maxlength='5'
                                                                value=""
                                                                isOnlyNum="Y"
                                                                uRequired="[사업자등록번호]"
                                                                uMinLen="5"
                                                                readonly="readonly"
                                                                placeholder = "00000"/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="manage-tdbb_t_l_star">
                                                            <span class="star_red">*</span>
                                                            대리종료일자</td>
                                                        <td class="manage-tdw_l">&nbsp;
                                                            <input
                                                                title="대리종료일자"
                                                                name="end_date"
                                                                id="end_date"
                                                                type="date"
                                                                size="10"
                                                                maxlength="8"
                                                                uRequired='[대리종료일자]'
                                                                value=""/>
                                                        </td>
                                                    </tr>
                                                </table>
                                                </form>
                                                <div id="table_layer1">
                                                    <table
                                                        width="100%"
                                                        border="0"
                                                        cellspacing="0"
                                                        cellpadding="0"
                                                        class="manage-t_blue_d">
                                                        <tr>
                                                            <td class="manage-tdbb_t_l" width="100px">
                                                                대리인명</td>
                                                            <td class="manage-tdw_l">&nbsp;
                                                                <input
                                                                    title="대리인명"
                                                                    type="text"
                                                                    name="Prv_manager"
                                                                    id="Prv_manager"
                                                                    maxlength='10'
                                                                    isKor="Y"
                                                                    value=""
                                                                	readonly="readonly"
                                                                    class="input_readonly"
                                                                    readonly="readonly"/>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <div id="table_layer2">
                                                    <table
                                                        width="100%"
                                                        border="0"
                                                        cellspacing="0"
                                                        cellpadding="0"
                                                        class="manage-t_blue_d">
                                                        <tr>
                                                            <td class="manage-tdbb_t_l" width="100px">
                                                                업체명</td>
                                                            <td class="manage-tdw_l">&nbsp;
                                                                <input
                                                                    title="업체명"
                                                                    name="Prv_company_name"
                                                                    id="Prv_company_name"
                                                                    type="text"
                                                                    size="30"
                                                                    isKor="Y"
                                                                    value=""
                                                                    class="input_readonly"
                                                                    readonly="readonly"/>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <div id="table_layer3">
                                                    <table
                                                        width="100%"
                                                        border="0"
                                                        cellspacing="0"
                                                        cellpadding="0"
                                                        class="manage-t_blue_d">
                                                        <tr>
                                                            <td class="manage-tdbb_t_l" width="100px">
                                                                주소</td>
                                                            <td class="manage-tdw_l">&nbsp;
                                                                <input
                                                                    title="주소"
                                                                    name="Prv_detail_addr"
                                                                    id="Prv_detail_addr"
                                                                    type="text"
                                                                    size="60"
                                                                    value=""
                                                                    isKor="Y"
                                                                    class="input_readonly"
                                                                    readonly="readonly"/>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <div id="table_layer4">
                                                    <table
                                                        width="100%"
                                                        border="0"
                                                        cellspacing="0"
                                                        cellpadding="0"
                                                        class="manage-t_blue_d">
                                                        <tr>
                                                            <td class="manage-tdbb_t_l" width="100px">
                                                                연락처</td>
                                                            <td class="manage-tdw_l">&nbsp;
                                                                <input
                                                                    title="연락처"
                                                                    name="Prv_mphonenum1"
                                                                    id="Prv_mphonenum1"
                                                                    type="text"
                                                                    size="4"
                                                                    maxlength='4'
                                                                    isOnlyNum="Y"
                                                                    uMinLen='2'
                                                                    value=""
                                                                    class="input_readonly"
                                                                    readonly="readonly"/>
                                                                -
                                                                <input
                                                                    title="연락처"
                                                                    name="Prv_mphonenum2"
                                                                    id="Prv_mphonenum2"
                                                                    type="text"
                                                                    size="4"
                                                                    maxlength='4'
                                                                    isOnlyNum="Y"
                                                                    uMinLen='3'
                                                                    value=""
                                                                    class="input_readonly"
                                                                    readonly="readonly"/>
                                                                -
                                                                <input
                                                                    title="연락처"
                                                                    name="Prv_mphonenum3"
                                                                    id="Prv_mphonenum3"
                                                                    type="text"
                                                                    size="4"
                                                                    maxlength='4'
                                                                    isOnlyNum="Y"
                                                                    uMinLen='4'
                                                                    value=""
                                                                    class="input_readonly"
                                                                    readonly="readonly"/>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>

                                                <div class="manage-btn_r">
                                                    <input
                                                        type="button"
                                                        onclick="doWrite('action/agent_action.jsp')"
                                                        value="저장"
                                                        class="manage-btn_blue"/>
                                                    <input
                                                        type="button"
                                                        onclick="movePage('')"
                                                        value="취소"
                                                        class="manage-btn_blue"/>
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