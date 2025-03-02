<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
    <html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>법인세무조사 인터넷신고시스템</title>
        <link rel="stylesheet" type="text/css" href="css/public.css">
        <link rel="stylesheet" type="text/css" href="css/ug_clause.css">
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
                    <li><a href="#" class="selected_menu">이용약관</a></li>      
                    <li><a onclick="movePage('views/ug_guide.jsp')">이용안내</a></i>
                    <li><a onclick="movePage('views/ug_sitemap.jsp')">사이트맵</a></li>         
                    <li><a onclick="movePage('views/ug_site.jsp')">관련사이트</a></li>
                    <li><a onclick="pdfPages('1')">PDF파일변환안내</a></li>
                </ul>
            </div>
            <div class="wrap-right">
                <div class="wrap-right-img">
                     <img class="sub-title_img" alt="서브타이틀" src="images/sub_title/ug_clause_title.png">
                </div>
                <div class="wrap-right-sub_depth">
                    <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle"><a
                        onclick="movePage('')"> Home</a> &gt; 이용안내 &gt;
                    이용약관
                </div>
                <div id="sitemap-wrap-right-content">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>

                            <tr>

                                <td valign="top"><br>
                                    <strong>제 1장 총칙</strong><br><br>
                                    <div class="txt_detail">제 1조(목적)</div>
                                    <div style="margin:10px">



                                        이 약관은 인터넷을 통하여 지방세 법인세무조사 신고시스템 서비스(이하 ”서비스”라 한다)를 제공받고자 하는 이용자(이하 "사용자"라


                                        한다)와 서비스를 제공하는 영천시(이하 "영천시"라 한다)
                                        사이에 서비스 이용에 관하여 필요한 사항을 규정함을 목적으로 합니다.
                                    </div>

                                    <div class="txt_detail">제2조 (약관의 효력 및 변경)</div>
                                    <ul list-style:none;>
                                        <li class="no_style">
                                            ① 이 약관은 서비스 화면에 게시하거나 기타의 방법으로 공지함으로써 사용자에게 공시하고, 이에 동의한 사용자가 서비스에 가입함으로써
                                            효력이 발생합니다.</li>
                                        <li class="no_style">② 영천시는 필요하다고 인정되는 경우 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 서비스 화면에
                                            공지함으로써
                                            사용자가 직접 확인할 수 있도록 할 것입니다.</li>
                                        <li class="no_style">③ 사용자는 변경된 약관에 동의하지 않으실 경우 서비스 이용을 중단하고 사용자의 회원등록을 취소할 수
                                            있으며, 계속
                                            사용하시는 경우에는 약관 변경에 동의한 것으로 간주되며 변경된 약관은 전항과 같은 방법으로 효력이 발생합니다.</li>
                                        <li class="no_style">④ 사용자가 이 약관의 내용에 동의하는 경우 영천시의 서비스 제공행위 및 사용자의 서비스 이용행위에는 이
                                            약관이
                                            우선적으로 적용될 것입니다.</li>
                                    </ul>

                                    <div class="txt_detail" style="margin-top:10px">제3조 (용어의 정의)</div>
                                    <ul list-style:none;>
                                        <li class="no_style">
                                            ① 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.</li>
                                        <ul>
                                            <li class="disc">사용자 : 서비스에 접속하여 영천시가 제공하는 서비스를 받는 회원 및 비회원</li>
                                            <li class="disc">회원 : 서비스에 접속하여 이 약관에 동의하고, 사업자등록번호 및 법인공인인증서를 발급 또는 제출 절차를
                                                거친
                                                자</li>
                                            <li class="disc">비회원 : 회원가입을 하지 않고 영천시가 제공하는 서비스를 이용하는 자</li>
                                            <li class="disc">이용해지 : 영천시 또는 회원이 서비스 이용 이후 그 이용계약을 종료시키는 의사표시</li>
                                        </ul>
                                        <li class="no_style">② 이 약관에서 사용하는 용어의 정의는 제1항에서 정하는 것을 제외하고는 관계법령 및 서비스별 안내에서
                                            정하는
                                            바에 의합니다.</li>
                                    </ul>

                                    <p><strong>제 2장 서비스 이용계약</strong></p>
                                    <div class="txt_detail">제4조 (이용계약의 성립)</div>
                                    <div style="margin:10px">
                                        이용계약은 사용자의 약관내용에 대한 동의와 사용자의 이용신청에 대한 영천시의 승낙으로
                                        성립합니다.</div>
                                    <div class="txt_detail">제5조 (이용신청)</div>
                                    <div style="margin:10px">
                                        이용신청은 서비스의 회원정보 화면에서 사용자가 영천시에서 요구하는 가입신청 양식에 회사(개인/법인)의
                                        정보를 기록하는 방식으로 신청합니다.</div>
                                    <div class="txt_detail">제6조 (이용신청의 승낙)</div>
                                    <ul list-style:none;>
                                        <li class="no_style">
                                            ① 영천시는 제5조에서 정한 사항을 정확히 기재하여 이용신청을 하였을 경우 특별한 사정이 없는 한 서비스 이용신청을
                                            승낙합니다.</li>
                                        <li class="no_style">② 영천시는 다음 각 호에 해당하는 경우에 대하여는 그 신청에 대한 제한 사유가 해소될 때까지 승낙을 유보
                                            또는
                                            일부 서비스 이용을 제한할 수 있습니다.</li>
                                    </ul>
                                    <ul list-style:none;>
                                        <li class="disc">내용이 허위(사업자등록번호 도용, 공인인증절차 누락 등)인 것으로 판명되거나, 그러하다고 의심할만한 합리적인
                                            사유가 발생할 경우</li>
                                        <li class="disc">기타 영천시가 필요하다고 인정되는 경우</li>
                                    </ul>
                                    ③ 영천시는 다음에 해당하는 경우에는 이용신청을 승낙하지 아니할 수 있습니다.<br>
                                    <ul list-style:none;>
                                        <li class="disc">신청서의 내용을 허위로 기재하였을 때</li>
                                        <li class="disc">기타 영천시가 정한 이용신청 요건이 미비 되었을 때</li>
                                    </ul>
                                    <div class="txt_detail">제7조 (계약사항의 변경)</div>
                                    <div style="margin:10px">
                                        회원은 회원정보관리를 통해 언제든지 자신의 정보를 열람하고 수정할 수 있습니다. 회원은
                                        이용신청 시 기재한 사항이 변경되었을 때에는 수정을 하여야 하며, 수정하지 아니하여 발생하는 문제의 책임은 회원에게
                                        있습니다.
                                    </div>
                                    <p><strong>제 3장 서비스 제공 및 이용</strong></p>
                                    <div class="txt_detail">제 8조(서비스의 종류)</div>
                                    <div style="margin:10px">
                                        영천시에서 제공하는 서비스의 종류는 다음 각 호와 같습니다.<br>



                                        1. 신고대상으로 선정된 법인의 지방세 법인세무조사 신고서의 신고, 조회 <br>


                                        2. 세무조사 결과 내역 조회<br>
                                        3. 세무대리인의 지정
                                    </div>
                                    <div class="txt_detail">제9조 (서비스 이용)</div>
                                    <ul list-style:none;>
                                        <li class="no_style">① 영천시는 회원의 이용신청을 승낙한 때부터 서비스를 개시합니다.
                                            단, 일부 서비스의 경우에는 지정된 일자부터 서비스를 개시합니다.</li>
                                        <li class="no_style">② 영천시의 업무상 또는 기술상의 장애로 인하여 서비스를 개시하지
                                            못하는 경우에는 사이트에 공시하거나 회원에게 이를 통지합니다.</li>
                                        <li class="no_style">③ 서비스의 이용은 연중무휴 1일 24시간을 원칙으로 합니다. 다만, 영천시의
                                            업무상 또는 기술상의 이유로 서비스가 일시 중지될 수 있고, 또한 정기점검 등 운영상의 목적으로 영천시가
                                            정한 기간에는 서비스가 일시 중지될 수 있습니다. 이러한 경우 영천시는 사전 또는 사후에 이를 공지합니다.</li>
                                        <li class="no_style">④ 회원에 가입한 후라도 일부 서비스 이용 시 서비스 제공자의 요구에 따라 특정 회원에게만 서비스를 제공할
                                            수도
                                            있습니다.</li>
                                        <li class="no_style">⑤ 영천시는 서비스를 일정범위로 분할하여 각 범위별로 이용가능 시간을 별도로 정할 수 있습니다.
                                            이 경우 그 내용을 사전에 공지합니다.</li>
                                        <li class="no_style">⑥ 사용자가 제3조의 각 호에 규정된 서비스를 이용하고자 하는 때에는 거래금융기관의 인터넷 뱅킹에 가입하고
                                            금융결재원의
                                            공인인증을 받아야 합니다.</li>
                                        <li class="no_style">⑦ 사용자가 제6항의 규정에 의한 공인인증 및 사용자등록을 하지 아니하는 경우에는 제공되는 서비스 중 일부
                                            사용이
                                            제한됩니다.</li>
                                    </ul>
                                    <div class="txt_detail" style="margin-top:10px">제 10조(이용시간)</div>
                                    <ul list-style:none;>
                                        <li class="no_style">① 영천시는 회원의 이용신청을 승낙한 때부터 서비스를 개시합니다. 단, 일부 서비스의
                                            경우에는 지정된 일자부터 서비스를 개시합니다.</li>
                                        <li class="no_style">② 영천시의 업무상 또는 기술상의 장애로 인하여 서비스를 개시하지 못하는 경우에는 사이트에 공시하거나
                                            회원에게 이를
                                            통지합니다.</li>
                                        <li class="no_style">③ 서비스의 이용은 연중무휴 1일 24시간을 원칙으로 합니다. 다만, 영천시의 업무상 또는
                                            기술상의 이유로 서비스가 일시 중지될 수 있고, 또한 정기점검 등 운영상의 목적으로 영천시가 정한
                                            기간에는 서비스가 일시 중지될 수 있습니다. 이러한 경우 영천시는 사전 또는 사후에 이를
                                            공지합니다.</li>
                                        <li class="no_style">④ 회원에 가입한 후라도 일부 서비스 이용 시 서비스 제공자의 요구에 따라 특정 회원에게만 서비스를 제공할
                                            수도
                                            있습니다.</li>
                                    </ul>
                                    <p></p>
                                    <div class="txt_detail">제 11조 (서비스의 변경, 중지 및 정보의 저장과 사용)</div>
                                    <ul list-style:none;>
                                        <li class="no_style">① 회원은 본 서비스에 보관되거나 전송된 메시지 및 기타 통신 메시지 등의 내용이 국가의 비상사태, 정전,
                                            영천시의
                                            관리범위 외의 서비스 설비 장애 및 기타 불가항력에 의하여 보관되지 못하였거나 삭제된 경우, 전송되지 못한 경우 및 기타 통신 데이터의
                                            손실에
                                            대해 영천시가 아무런 책임을 지지 않음에 동의합니다.</li>
                                        <li class="no_style">② 영천시가 정상적인 서비스 제공의 어려움으로 인하여 일시적으로 서비스를
                                            중지하여야 할 경우에는 서비스 중지 1주일전에 고지 후 서비스를 중지할 수 있으며, 이 기간동안 회원이 고지내용을 인지하지 못한데 대하여
                                            영천시는 책임을 부담하지 아니합니다. 상당한 이유가 있을 경우 위 사전 고지기간은 감축되거나
                                            생략될 수 있습니다.<br>
                                            또한 위 서비스 중지에 의하여 본 서비스에 보관되거나 전송된 메시지 및 기타 통신 메시지 등의 내용이 보관되지 못하였거나 삭제된 경우,
                                            전송되지 못한 경우 및 기타 통신 데이터의 손실이 있을 경우에 대하여도 영천시는 책임을 부담하지
                                            아니합니다.</li>
                                        <li class="no_style">③ 영천시의 사정으로 서비스를 영구적으로 중단하여야 할 경우 제2항을 준용합니다.
                                            다만, 이 경우 사전 고지기간은 1개월로 합니다.</li>
                                        <li class="no_style">④ 영천시는 사전 고지 후 서비스를 일시적으로 수정, 변경 및 중단할 수 있으며,
                                            이에 대하여 회원 또는 제3자에게 어떠한 책임도 부담하지 아니합니다.</li>
                                        <li class="no_style">⑤ 영천시는 회원이 이 약관의 내용에 위배되는 행동을 한 경우, 임의로 서비스
                                            사용을 중지할 수 있습니다. 이 경우 영천시는 회원의 접속을 금지할 수 있으며, 회원이 게시한 내용의
                                            전부 또는 일부를 임의로 삭제할 수 있습니다.</li>
                                    </ul>

                                    <div class="txt_detail" style="margin-top:10px">제12조 (정보의 제공)</div>
                                    <div style="margin:10px">영천시는 회원이 서비스 이용 중 필요가 있다고 인정되는 다양한 정보 및 사용자 의견 질의에
                                        대해서는 전자우편이나 서신우편 등의 방법으로 회원에게 제공 및 문의할 수 있으며, 만약 원치 않는 정보를 수신한 경우 회원은 이를
                                        수신거부 할 수 있습니다.
                                    </div>
                                    <div class="txt_detail" style="margin-top:10px">제13조 (게시물 또는 내용물의 삭제)</div>

                                    <ul list-style:none;>
                                        <li class="no_style">① 영천시는 회원이 게시하거나 등록하는 서비스 내의 모든 내용물이 다음 각 호의 경우에
                                            해당된다고 판단되는 경우 사전 통지 없이 삭제할 수 있으며, 이에 대해 영천시는 어떠한 책임도 지지 않습니다.</li>
                                        <ul>
                                            <li class="disc">영천시, 다른 회원 또는 제3자를 비방하거나 중상 모략으로 명예를 손상시키는 내용인 경우</li>
                                            <li class="disc">공공질서 및 미풍양속에 위반되는 내용인 경우</li>
                                            <li class="disc">범죄적 행위에 결부된다고 인정되는 내용일 경우</li>
                                            <li class="disc">제3자의 저작권 등 기타 권리를 침해하는 내용인 경우</li>
                                            <li class="disc">서비스 성격에 부합하지 않는 정보의 경우</li>
                                            <li class="disc">기타 관계 법령 및 영천시에서 정한 규정 등에 위배되는 경우</li>
                                        </ul>
                                        <li class="no_style">② 영천시는 서비스에 게시된 내용을 사전 통지없이 편집, 이동, 삭제할 수 있는 권리를 보유하며,
                                            게시된 내용이 이 약관에 위배되거나 상용 또는 비합법적, 불건전한 내용일 경우 및 해지 회원이 게시한 게시물은 사전통보 없이 삭제할 수
                                            있습니다.</li>
                                        <li class="no_style">③ 영천시는 게시된 내용이 일정기간 이상 경과되어, 게시물로써의 효력을 상실하여 그 존치 목적이
                                            불분명한 경우 공지사항 발표 후 1주일간의 통지기간을 거쳐 해당 게시물을 삭제할 수 있습니다.</li>
                                    </ul>
                                    <p><strong>제 4장 계약 당사자의 의무</strong></p>
                                    <div class="txt_detail">제14조 (회원의 의무 및 정보보안)</div>
                                    <ul list-style:none;>
                                        <li class="no_style">① 회원은 서비스 이용을 위해 가입할 경우 현재의 사실과 일치하는 완전한 정보(이하 "가입정보"라
                                            한다)를 제공하셔야 합니다. 또한 가입정보에 변경이 발생할 경우 즉시 갱신하셔야 합니다.</li>
                                        <li class="no_style">② 회원이 서비스 사용을 위한 가입절차를 완료하시면 사업자등록번호와 공인인증서로 관리 됩니다. 이의 관리를
                                            위해</li>

                                        <ul>
                                            <li class="disc">회원의 승인 없이 공인인증, 사업자등록번호가 사용되는 문제가 발생되면 즉시 영천시
                                                에 신고하셔야 하고</li>
                                            <li class="disc">매 접속 종료 시 확실히 로그아웃을 하셔야 합니다.</li>
                                        </ul>
                                        <li class="no_style">③ 회원은 서비스를 이용하면서 다음과 같은 행위를 하지 않기로 동의합니다.</li>
                                        <ul>
                                            <li class="disc"> 범죄행위를 목적으로 하거나 범죄행위를 교사하는 행위 </li>
                                            <li class="disc"> 반국가적 행위의 수행을 목적으로 하는 행위 </li>
                                            <li class="disc"> 선량한 풍속, 기타 사회질서를 해하는 행위 </li>
                                            <li class="disc"> 타인의 명예를 손상시키거나 불이익을 주는 행위 </li>
                                            <li class="disc"> 정보통신설비의 오동작이나 정보 등의 파괴를 유발시키는 해킹,컴퓨터 바이러스 프로그램 등의 유포 행위
                                            </li>
                                            <li class="disc"> 다른 사용자 또는 제3자의 지적재산권을 침해하는 행위 </li>
                                            <li class="disc"> 수신자의 의사에 반하여 광고성 정보를 지속적으로 전송하거나 서비스의 안정적 운영에 지장을 초래하는 다량의
                                                자료
                                                송수신, 게시물 등록, 기타 건전한 서비스 이용에 반하는 행위 </li>
                                        </ul>
                                        <li class="no_style">④ 회원은 이 약관 및 관계법령에서 규정한 사항을 준수하여야 합니다.</li>
                                    </ul>
                                    <div class="txt_detail" style="margin-top:10px">제 15조 세무 대리인 활동요청의 의미</div>
                                    <ul list-style:none;>
                                        <li class="no_style">① 회원가입시 개인/개인회사 또는 법인 중 세무대리인 활동요청을 한 회원에 대해서는 세무대리인(이하
                                            “대리인”이라
                                            한다)이라 정의한다.</li>
                                        <li class="no_style">② 세무대리인은 사이트내 해당 회원을 세무대리인으로 지정한 법인의 허용에 의해 대리인 활동을 할 수 있다.
                                        </li>
                                        <li class="no_style">③ 법인과 대리인간의 관계는 법인이 대리인을 지정하며, 대리인은 해당 법인과의 대리인 관계 해지를 요청할
                                            수 있으며,
                                            대리관계 해지는 법인에 의해 대리인을 해지 또는 다른 대리인으로의 변경에 의해 그 계약관계가 해지된다.</li>
                                        <li class="no_style">④ 세무대리인 활동 요청을 한 회원(개인회사/법인)은 사이트내에서 대리인 정보 검색을 위해 회원의 특정
                                            정보를
                                            제공하겠다는 사전 동의를 의미하며, 해당 정보의 제공으로 일어날 수 있는 어떠한 사항에 대해서는 영천시는
                                            법적 책임을 지지 않는다.</li>
                                    </ul>
                                    <div class="txt_detail" style="margin-top:10px">제 16조 (개인정보보호정책)</div>
                                    <ul list-style:none;>
                                        <li class="no_style">① 영천시는 이용 신청 시 회원이 제공하는 정보를 통하여 회원에 관한 정보를 수집하며, 회원의 개인정보는
                                            본 이용계약의 이행과 본 이용계약상의 서비스제공을 위한 목적으로 이용합니다.</li>
                                        <li class="no_style">② 영천시는 서비스 제공과 관련하여 취득한 회원의 정보를 본인의 승낙 없이 제3자에게 누설 또는 배포할 수
                                            없으며 상업적 목적으로 사용할 수 없습니다. 다만, 다음의 각 호의 경우에는 그러하지 아니합니다.</li>
                                    </ul>
                                    <ul list-style:none;>
                                        <li class="disc"> 관계 법령에 의하여 수사상의 목적으로 관계기관으로부터 요구가 있는 경우</li>
                                        <li class="disc"> 정보통신윤리위원회의 요청이 있는 경우</li>
                                        <li class="disc"> 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우</li>
                                    </ul>
                                    <div class="txt_detail" style="margin-top:10px">제 17조 (과실책임)</div>
                                    <ul list-style:none;>
                                        <li class="no_style">① "영천시"는 사용자가 "서비스"와 관련하여 이의를 제기
                                            하거나 확인을 요구할 경우 이를 신속히 처리하여야 하며, 업무착오 등의 사유로 사용자와 분쟁이 발생한 경우에는 관련 당사자간 상호
                                            협의하여 조정합니다.</li>
                                        <li class="no_style">② "영천시"는 다음 각 호의 1의 경우로 발생한 손실에 대하여 "
                                            영천시"의 고의 또는 중대한 과실이 없는 한 책임을 지지 아니합니다.</li>
                                    </ul>
                                    <ul list-style:none;>
                                        <li class="disc"> 사용자의 관리소홀로 인한 공인인증의 유출 또는 대리인의 부정이나 부주의로 발생한 손실.</li>
                                        <li class="disc"> 사용자가 "서비스"에서 제공한 내역을 미확인 또는 약관에서 정하고 있는 사항을 위반하여 발생한 손실</li>
                                        <li class="disc"> 거래금융기관의 귀책사유로 인하여 사용자에게 발생한 손실</li>
                                        <li class="disc"> "서비스" 업무가 천재지변, "영천시"의 귀책사유가
                                            없는 정전, 화재, 통신장애 기타의 불가항력적인 사유로 처리 불가능하거나 지연되어 발생한 손실</li>
                                    </ul>
                                    <p></p>
                                    <div class="txt_detail">제18조 (준용기준 및 약관변경)</div>
                                    <p></p>
                                    <ul list-style:none;>
                                        <li class="no_style">① 이 약관에 정하지 아니한 사항은 거래은행의 "전자금융약관" 또는 "영천시
                                            "및 신용카드사의 관련업무 처리절차에서 정하는 바에 따릅니다.</li>
                                        <li class="no_style">② "영천시"가 이 약관이나 "서비스"의 처리절차를 변경한
                                            경우에는 15일 동안 이를 인터넷에 게시하며 사용자가 "서비스"를 이용 시, 자동으로 이를 승인한 것으로 봅니다. </li>
                                    </ul>
                                    <p><strong>부 칙 </strong></p>
                                    <div class="txt_detail" style="margin-top:10px">제1조(시행일)</div>
                                    <div style="margin:10px">이 약관은 2008년 1. 1부터 시행합니다.</div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        </div>
        <div class="footer" id="footer"></div>
    </body>

    </html>