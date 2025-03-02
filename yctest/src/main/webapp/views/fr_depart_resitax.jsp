<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="corpstat.corpstat_DAO"%>
<%@ page import="corpstat.corpstat_VO"%>
<%@ page import="compstat.compstat_DAO"%>
<%@ page import="compstat.compstat_VO"%>
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
		String isSearch = (String) request.getAttribute("isSearch");
		String compNum = (String) request.getAttribute("comp_num");
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
	      String[] cor_reg_num = new String[2];
	      cor_reg_num[0]=Cor_Reg_Number.substring(0,6);
	      cor_reg_num[1]=Cor_Reg_Number.substring(6,13);
	      compstat_DAO compDAO = new compstat_DAO();
		  ArrayList<compstat_VO> compList = compstat_DAO.getList(Cor_Reg_Number);
		  ArrayList<compstat_VO> searchList = null;
		  if(compNum != null) {
		  	searchList = compstat_DAO.getListByCompNum(compNum);
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
                <li><a href="#" class="selected_menu">주민세종업원분</a></li>    
                <li><a onclick="movePage('views/fr_attach_document_manage.jsp')">첨부서류관리</a></li>    
                <li><a onclick="movePage('views/fr_submit_report.jsp')">신고서제출</a></li>       
            </ul>
        </div>  
        <div class="wrap-right">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" >
                <tr>
                    <td><img class="sub-title_img" alt="서브타이틀" src="images/sub_title/fr_depart_resitax_title.png"></td>
                    <td align="right">
                        <div class="wrap-right-sub_depth">
                            <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle">
                            <a onclick="movePage('')">Home</a>
                             > 신고서작성 > 주민세종업원분
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
                <div class="sitemap-wrap-right-content-dep-use">
                    <ul>
                        <li>작성법인의 사업장별 주민세종업원분 명세를 작성하는 화면입니다.</li>
                        <li>[법인현황 > 사업장현황입력]에서 입력한 사업장중 근무인원이 50인 초과 사업장에 대하여 주민세종업원분 명세를 작성할 수 있습니다.<font color="red">2015년이전 입력분까지</font></li>
                        <li>[법인현황 > 사업장현황입력]에서 추가사항에 체크한 사업장중 종업원에게 월급을 지급하는 달을 포함 <font color="red">최근 1년간 월평균금액이 13,500만원 초과사업장에 대하여 주민세 종업원분명세를 작성할 수 있습니다.(2016년 입력분부터)</font></li>
                    </ul>
                </div>
                <p><font color="orange">* 사업장 정보 조회 후 해당월을 클릭하여 작성하세요.</font></p>
                <div class="sitemap-wrap-right-content-info">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" padding="10">
                        <tr>
                        <form action="<%= cur_path %>/work.jsp" id="lookup" method="post">
                            사업장정보 : 
                            <select name="comp_option">                             
                                    <% if(compList != null){ 
                                    	for(int i=0;i<compList.size();i++){
                                    		String comp_num = compList.get(i).getCs_company_reg_num();
                                    		String[] comp_number = new String[3];
                                    		comp_number[0]=comp_num.substring(0,3);
                                    		comp_number[1]=comp_num.substring(3,5);
                                    		comp_number[2]=comp_num.substring(5,10);	
                                    %>	
                                    	<option value="<%= compList.get(i).getCs_company_reg_num() %>">[<%= compList.get(i).getCs_office_exist() %>] <%= comp_number[0] %>-<%= comp_number[1] %>-<%= comp_number[2] %> <%= compList.get(i).getCs_company_name() %>
                                   <%}} %>           
                            </select>
                            <input type="button" onclick="doAction('action/depart_search_action.jsp','lookup')" value="조회" style="float:right; width:50px;">
                            </form>
                        </tr>
                    </table>    
                </div>
                
                <div class="sitemap-wrap-right-content-main">
                <form action="<%=cur_path %>/work.jsp" method="POST" name="write">
                	<input type="hidden" name="Cor_Reg_Number" value="<%= Cor_Reg_Number %>"/>
                    <table width="100%"  padding="10">
                        <tr>
                            <td>사업년도</td>
                            <td>1</td>
                            <td>사업장명</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <td>사업장</td>
                            <td colspan="3">테스트</td>
                        </tr>
                        <tr>
                            <td>법인명</td>
                            <td colspan="3"><input name="Cor_Name" value="<%= Cor_name %>" readonly required></td>
                        </tr>
                        <tr>
                            <td>관할</td>
                            <td colspan="3"><input name="Jurisdic" value="<%= Jurisdic %>" readonly required></td>
                        </tr>
                        <tr>
                            <td>조사년도</td>
                            <td colspan="3"><input name="Sur_year" value="<%= Sur_year %>" readonly required></td>
                        </tr>
                        <tr>
                            <td>조사사업기간</td>
                            <td colspan="3"><input name="Invest_pp" value="<%= Invest_pp %>" readonly required></td>
                        </tr>
                        <tr>
                            <td>사업장(선택)</td>
                            <td colspan="3"><input name="Business_Select"></td>
                        </tr>
                        <tr>
                            <td>사업년도</td>
                            <td colspan="3"><input type="date" name="Business_year" required></td>
                        </tr>
                        <% if(compNum == null) { %>
                        <tr>
                            <td>사업장명</td>
                            <td colspan="3"><input name="Business_name" required></td>
                        </tr>
                        <% } else {%>
                        	<tr>
                            <td>사업장명</td>
                            <td colspan="3"><input name="Business_name" value="<%= searchList.get(0).getCs_company_name() %>" required readonly>
                            </td>
                        </tr>
                        <% } %>
                        <tr>
                            <td>사업장</td>
                            <td colspan="3"><input name="Bus_name" required></td>
                        </tr>
                        <tr>
                            <td>근로소득</td>
                            <td colspan="3"><input name="Earned_Income" placeholder = "단위 : 원" required></td>
                        </tr>
                        <tr>
                            <td>비과세소득</td>
                            <td colspan="3"><input name="Taxfree_Income" placeholder = "단위 : 원" required></td>
                        </tr>
                            <% if(compNum == null) { %>
                        <tr>
                            <td>종업원수</td>
                            <td colspan="3"><input name="Employee" required></td>
                        </tr>
                        <% } else {%>
                        	<tr>
                            <td>종업원수</td>
                            <td colspan="3"><input name="Employee" value="<%= searchList.get(0).getCs_num_people() %>" required readonly>
                            </td>
                        </tr>
                        <% } %>
                        <tr>
                            <td>과세표준</td>
                            <td colspan="3"><input name="Assessment_Standard" required></td>
                        </tr>
                        <tr>
                            <td>급여지급일</td>
                            <td colspan="3"><input type="date" name="Salary_Date" required></td>
                        </tr>
                        <tr>
                            <td>산출세액</td>
                            <td colspan="3"><input name="Calculated_Tax_Amount" placeholder = "단위 : 원" required></td>
                        </tr>
                        <tr>
                            <td>기납부액</td>
                            <td colspan="3"><input name="Prep_Tax" placeholder = "단위 : 원" required></td>
                        </tr>
                        <tr>
                            <td>납부일자</td>
                            <td colspan="3"><input type="date" name="Pay_Date" required></td>
                        </tr>
                    </table>
                    <div class="btn">
                    	<% if(isSearch != null) { %>
						<input type="button" onclick="doWrite('action/depart_action.jsp')" value="저장"
							class=" left">
						<% }%>
					</div>
                    </form>
                    <% if(isSearch == null){ %>
						<button onclick="alert('사업장 조회를 눌러주세요.')"
							class=" left">저장</button>
						<%} %>
                </div>
            </div>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>

</html>