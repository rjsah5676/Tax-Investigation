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
                <li><a href="#" class="selected_menu">주민세재산분</a></li>    
                <li><a onclick="movePage('views/fr_depart_resitax.jsp')">주민세종업원분</a></li>    
                <li><a onclick="movePage('views/fr_attach_document_manage.jsp')">첨부서류관리</a></li>    
                <li><a onclick="movePage('views/fr_submit_report.jsp')">신고서제출</a></li>         
            </ul>
        </div>  
        <div class="wrap-right">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" >
                <tr>
                    <td><img class="sub-title_img" alt="서브타이틀" src="images/sub_title/fr_resident_tax_title.png"></td>
                    <td align="right">
                        <div class="wrap-right-sub_depth">
                            <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle">
                            <a onclick="movePage('')">Home</a>
                             > 신고서작성 > 주민세재산분
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
                <div class="sitemap-wrap-right-content-res-use">
                    <ul>
                        <li>작성법인의 사업장별 주민세재신분 명세를 작성하는 화면입니다.</li>
                        <li>[법인현황 > 사업장현황입력]에서 입력한 사업장중 연면적 330m<sup>2</sup> 초과 사업장에 대하여 주민세재산분 명세를 작성할 수 있습니다.</li>
                    </ul>
                </div>
                <div class="sitemap-wrap-right-content-info">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" padding="10">
                        <tr>
                            법인정보 : 1 - 1
                        </tr>
                    </table>    
                </div>
                <div class="sitemap-wrap-right-content-ent">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" padding="10">
                        <tr>
                            전체    대상사업장 수 [1]
                        </tr>
                    </table>    
                </div>
                <div class="sitemap-wrap-right-content-main">
                <form action="<%=cur_path %>/work.jsp" method="POST" name="write">
                <input type="hidden" name="Cor_Reg_Number" value="<%= Cor_Reg_Number %>"/>
                    <table width="100%"  padding="10">
                        <tr>
                            <td>사업장 명</td>
                            <td><input name="Bus_name" required></td>
                        </tr>
                        <tr>
                            <td>소재지</td>
                            <td><input name="Location" required></td>
                        </tr>
                        <tr>
                            <td>사업개시일</td>
                            <td><input type="date" name="Business_startdate" required></td>
                        </tr>
                        <tr>
                            <td>사업년도</td>
                            <td><input type="date" name="Business_year" required></td>
                        </tr>
                        <tr>
                            <td>연면적</td>
                            <td><input name="Storyarea" required></td>
                        </tr>
                        <tr>
                            <td>기숙사</td>
                            <td><input name="Dormitory"></td>
                        </tr>
                        <tr>
                            <td>구내식당</td>
                            <td><input name="Cafeteria"></td>
                        </tr>
                        <tr>
                            <td>기타</td>
                            <td><input name="Etc"></td>
                        </tr>
                        <tr>
                            <td>과세면적</td>
                            <td><input name="Taxablearea" required></td>
                        </tr>
                        <tr>
                            <td>정당세액</td>
                            <td><input name="Justifiable_tax" placeholder = "단위 : 원" required></td>
                        </tr>
                        <tr>
                            <td>기납부세액</td>
                            <td><input name="Prep_tax" placeholder = "단위 : 원" required></td>
                        </tr>
                        <tr>
                            <td>납부일자</td>
                            <td><input type="date" name="Pay_Date" required></td>
                        </tr>
                        <tr>
                            <td>차인세액</td>
                            <td><input name="Borrowing_tax" placeholder = "단위 : 원" required></td>
                        </tr>
                    </table>
		  		<div class="btn">
						<input type="button" onclick="doWrite('action/resident_action.jsp')" value="저장"
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