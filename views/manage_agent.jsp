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
                                    <img src="images/mypage/title_5_1_1.gif"></div>
                                    <div class="wrap-right-sub_depth">
                                        <img alt="처음으로" src="/images/investigation/home_s.gif" align="absmiddle">
                                            <a onclick="movePage('')">Home</a>
                                            > My Page > 정보관리 > 대리인관리
                                        </div>
                                        <div class="wrap-right-content">
                                            <img alt="대리인관리" src="images/mypage/title_5_1_2_1.gif">

                                                <div class="manage-wrap-right-info">
                                                    <img alt="" src="#" align="absmiddle"/>
                                                    <strong>대리인 지정 방법</strong>
                                                    <ul class="a">
                                                        <li>대리인이 등록되었는지 &quot;조회&quot;버튼을 클릭하시면 알수 있습니다.</li>
                                                        <li>대리인이 등록되어 있지 않을경우 &quot;직접입력&quot;을 체크하시고,
                                                            &quot;사업자등록번호&quot;,&quot;대리종료일자&quot;를 입력하시면 됩니다.</li>
                                                        <li>대리인 정보를 수정하고자 하는 경우 &quot;관계해지&quot;를 먼저 하시고 대리인 지정을 하시기 바랍니다.</li>
                                                    </ul>
                                                    <span class="manage-text-org_8">* 대리인 정보의 직접 입력을 통해 부정확한 정보의유입으로 인한 불이익 책임소재는 법인에게 있습니다.</span>
                                                </div>
                                                <form name='frm' action="/work" method="post">
                                                    <div name="sendFormFields" id="sendFormFields" style="display:none;"></div>
                                                    <br/>
                                                    <img alt="대리인현황" src="images/mypage/title_5_1_2_2.gif"/>

                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="manage-tb_b">
                                                        <tr>
                                                            <td class="manage-tdbb_t_l_star">사업자번호</td>
                                                            <td class="manage-tdw_l" style="padding-left:10px">&nbsp;

                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="130px" class="manage-tdbb_t_l_star">업체명</td>
                                                            <td class="manage-tdw_l" style="padding-left:10px">&nbsp; ==== 현재 대리인이 지정되지 않았습니다. ====

                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="manage-tdbb_t_l_star">주소(동까지 표현)</td>
                                                            <td class="manage-tdw_l" style="padding-left:10">&nbsp;

                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="manage-tdbb_t_l_star">대리인 설정기간</td>
                                                            <td class="manage-tdw_l" style="padding-left:10">&nbsp;

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
                                                                                <option value="sa_ho">업체명</option>
                                                                                <option value="sa_id">사업자번호</option>
                                                                            </select>
                                                                        </td>
                                                                        <td width="200px">
                                                                            <input
                                                                                title="조회"
                                                                                type="text"
                                                                                name="search"
                                                                                id="search"
                                                                                maxlength="20"
                                                                                isKor="Y"
                                                                                onkeydown="if (event.keyCode == 13) openAgent();"/>
                                                                            <input type="button" onclick="openAgent()" value="조회" class="manage-btn_blue"/>
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
                                                <img alt="대리인정보" src="images/mypage/title_5_1_2_1.gif"/>
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
                                                                name="saupjaId1"
                                                                size='3'
                                                                id="saupjaId1"
                                                                maxlength='3'
                                                                value=""
                                                                isOnlyNum="Y"
                                                                uRequired="[사업자등록번호]"
                                                                uMinLen="3"
                                                                readonly="readonly"/>
                                                            -
                                                            <input
                                                                title="사업자등록번호"
                                                                type="text"
                                                                name="saupjaId2"
                                                                size='2'
                                                                id="saupjaId2"
                                                                maxlength='2'
                                                                value=""
                                                                isOnlyNum="Y"
                                                                uRequired="[사업자등록번호]"
                                                                uMinLen="2"
                                                                readonly="readonly"/>
                                                            -
                                                            <input
                                                                title="사업자등록번호"
                                                                type="text"
                                                                name="saupjaId3"
                                                                size='5'
                                                                id="saupjaId3"
                                                                maxlength='5'
                                                                value=""
                                                                isOnlyNum="Y"
                                                                uRequired="[사업자등록번호]"
                                                                uMinLen="5"
                                                                readonly="readonly"/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="manage-tdbb_t_l_star">
                                                            <span class="star_red">*</span>
                                                            대리종료일자</td>
                                                        <td class="manage-tdw_l">&nbsp;
                                                            <input
                                                                title="대리종료일자"
                                                                name="agentDateTo"
                                                                id="agentDateTo"
                                                                type="text"
                                                                size="10"
                                                                maxlength="8"
                                                                uRequired='[대리종료일자]'
                                                                value=""/>
                                                            <span class="manage-text-org_8">* 년월일 8자리입력(ex. 20140101)</span>
                                                        </td>
                                                    </tr>
                                                </table>
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
                                                                    name="daepyoName"
                                                                    id="daepyoName"
                                                                    maxlength='10'
                                                                    isKor="Y"
                                                                    value=""
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
                                                                    name="sangho"
                                                                    id="sangho"
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
                                                                    name="addr"
                                                                    id="addr"
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
                                                                    name="tel0"
                                                                    id="tel0"
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
                                                                    name="tel1"
                                                                    id="tel1"
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
                                                                    name="tel2"
                                                                    id="tel2"
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
                                                        onclick="executeCMD('SPTICA0U1')"
                                                        value="저장"
                                                        class="manage-btn_blue"/>
                                                    <input
                                                        type="button"
                                                        onclick="executeReset()"
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