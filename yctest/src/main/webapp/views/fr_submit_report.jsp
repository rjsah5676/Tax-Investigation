<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="corpstat.corpstat_DAO"%>
<%@ page import="corpstat.corpstat_VO"%>
<%@ page import="java.util.ArrayList" %>
<html>

<head>
    <meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>법인세무조사 인터넷신고시스템</title>
    <link rel="stylesheet" type="text/css" href="css/public.css">
    <link rel="stylesheet" type="text/css" href="css/fr_corpstat.css">
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="js/public.js"></script>
</head>

<body onload="init();">
	<% String cur_path = request.getContextPath(); 
		String isLogin = (String) session.getAttribute("userId");
		String Cor_Reg_Number = (String) session.getAttribute("Cor_Reg_Number");
		if(Cor_Reg_Number == null)
			out.println("<script>alert('법인정보가 작성되지 않았습니다.'); window.location.href='/';</script>");
		corpstat_DAO corpDAO = new corpstat_DAO();
		ArrayList<corpstat_VO> corpList = corpstat_DAO.getList(Cor_Reg_Number);
		  String isCorp = null;
		  String Cor_name = "";
		  String Jurisdic = "";
		  String Sur_year = "";
		  String Invest_pp = "";
		  if(corpList != null) {
		  	isCorp = corpList.get(0).getIncorporated_or_not();
		  	Cor_name = corpList.get(0).getCor_name();
		  	Jurisdic = corpList.get(0).getJurisdic();
		  	Invest_pp = corpList.get(0).getInvest_pp();
		  	Sur_year = corpList.get(0).getSur_year();
		  }
		  if(isCorp == null) {
			out.println("<script>alert('법인정보가 작성되지 않았습니다.'); window.location.href='/';</script>");
		  }
		  else if(isCorp.equals("0")) {
			  out.println("<script>alert('법인정보가 작성되지 않았습니다.'); window.location.href='/';</script>");
		  }
	%>
	<c:set var="isLogin" value="<%=isLogin %>"/>
	<div id="formSet"></div>
    <div class="top" id="top" value="<%= isLogin %>"></div>
    <div class="nav-wrapper__hd" id="nav"></div>
    <div class=wrap>
        <div class="wrap-logo">
            <img src="images/public/yctest4.png">
        </div>
        <div class=wrap-left>
            <div class="wrap-left-title">
                신고서작성
            </div>
            <ul>
                <li><a onclick="movePage('views/fr_corpstat.jsp')">법인현황</a></li>      
                <li><a onclick="movePage('views/fr_localtax_special.jsp')">지방소득세특별징수</a></li>
                <li><a onclick="movePage('views/fr_resident_tax.jsp')">주민세재산분</a></li>    
                <li><a onclick="movePage('views/fr_depart_resitax.jsp')">주민세종업원분</a></li>    
                <li><a onclick="movePage('views/fr_attach_document_manage.jsp')">첨부서류관리</a></li>    
                <li><a href="#" class="selected_menu">신고서제출</a></li>         
            </ul>
        </div>  
        <div class="wrap-right">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" >
                <tr>
                    <td><img class="sub-title_img" alt="서브타이틀" src="images/sub_title/fr_submit_report_title.png"></td>
                    <td align="right">
                        <div class="wrap-right-sub_depth">
                            <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle">
                            <a onclick="movePage('')">Home</a>
                             > 신고서작성 > 신고서제출
                        </div>
                    </td>
                </tr>
            </table>        
            <div>
                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="wrap-center-table">
                    <tr>
                        <td>관할</td>
                        <td><%= Jurisdic %></td>
                        <td>조사년도</td>
                        <td><%= Sur_year %> 년</td>
                        <td>조사사업기간</td>
                        <td><%= Invest_pp %></td>
                        <td><button>작성현황보기</button></td>
                    </tr>

                </table>
                <img alt="이용안내" src="images/fr/useinfo.PNG">
                <div class="sitemap-wrap-right-content-sub-use">
                    <ul>
                        <li>현재까지 작성된 내역을 제출하는 화면입니다.</li>
                        <li>신고서제출 이후에는 신고내역을 수정할 수 없으므로 작성된 내역을 반드시 확인후 이상이 없을시 제출하셔야 합니다.<br>
                         * 신고서제출 이후라도 신고내역의 조회 및 출력은 가능합니다.</li>
                        <li>작성현황 구분 : 현재까지 작성된 내역을 표시합니다.<br>
                            <b><img src="images/fr/bub.gif">:법인현황 <img src="images/fr/teuk.gif">: 지방소득세특별징수분 <img src="images/fr/jae.gif">: 주민세재산분 <img src="images/fr/jong.gif">: 주민세종업원분</b>
                        </li>
                    </ul>
                </div>
                <div class="sitemap-wrap-right-content-info">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" padding="10">
                        <tr>
                            -
                        </tr>
                    </table>    
                </div>
                <div class="sitemap-wrap-right-content-main">
                <form action="<%=cur_path %>/work.jsp" method="POST" name="write">
                <input type="hidden" name="Cor_Reg_Number" value="<%= Cor_Reg_Number %>"/>
                    <table width="100%"  padding="10">
                 <!--        <tr>
                            <td>법인등록번호</td>
                            <td><input name="Cor_Reg_Number" placeholder= "000000-0000000"></td>
                        </tr> -->
                        <tr>
                            <td>관할</td>
                            <td><input name="Jurisdic" value="<%= Jurisdic %>" readonly required></td>
                        </tr>
                        <tr>
                            <td>조사년도</td>
                            <td><input type="date" name="Survey_year" required></td> <!-- 값을불러와야할까? -->
                        </tr>
                        <tr>
                            <td>조사사업기간</td>
                            <td><input name="Survey_bzperiod" required></td> <!-- 값을불러와야할까? -->
                        </tr>
                        <tr>
                            <td>법인정보</td>
                            <td><input name="Cor_infor" required></td>
                        </tr>
                        <tr>
                            <td>서면신고서 제출</td>
                            <td><input name="Submit_declaration" required></td>
                        </tr>
                        <tr>
                            <td colspan="2">신고서작성내역</td>
                        </tr>
                        <tr>
                            <td>구분</td>
                            <td><input name="Division" required></td>
                        </tr>
                        <tr>
                            <td>업체명</td>
                            <td><input name="Company_name" required></td>
                        </tr>
                        <tr>
                            <td>사업자등록번호</td>
                            <td><input name="Company_Reg_num" placeholder = "000-00-00000" required></td>
                        </tr>
                        <tr>
                            <td>최종 수정일</td>
                            <td><input type="date" name="Last_modidate" required></td>
                        </tr>
                        <tr>
                            <td colspan="2">첨부파일내역</td>
                        </tr>
                        <tr>
                            <td>번호</td>
                            <td><input name="File_num" required></td>
                        </tr>
                        <tr>
                            <td>법인명</td>
                            <td><input name="Cor_name" value="<%= Cor_name %>" readonly required></td>
                        </tr>
                        <tr>
                            <td>서식구분</td>
                            <td><input name="Format_class" required></td>
                        </tr>
                        <tr>
                            <td>파일명</td>
                            <td><input name="File_name" required></td>
                        </tr>
                        <tr>
                            <td>비고</td>
                            <td><input name="Remark"></td>
                        </tr>
                    </table>
                    <div class="btn">
						<input type="button" onclick="doWrite('action/submit_action.jsp')" value="저장"
							class=" left">
					</div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>

</html>