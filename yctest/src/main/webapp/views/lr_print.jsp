<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="company.company_table_DAO"%>
<%@ page import="company.companyVO"%>
<%@ page import="corpstat.corpstat_DAO"%>
<%@ page import="corpstat.corpstat_VO"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.Date"%>
<%@ page import="java.text.SimpleDateFormat"%> 
<%@ page import="java.util.Calendar" %>
<html>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>법인세무조사 인터넷신고시스템</title>
<link rel="stylesheet" type="text/css" href="css/public.css">
<link rel="stylesheet" type="text/css" href="css/lookupNservice.css">
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/public.js"></script>
</head>

<body onload="init();">
	<%
	String cur_path = request.getContextPath(); 
	String isLogin = (String) session.getAttribute("userId");
	String Jurisdic = "";
	String Sur_year = "";
	String Invest_pp = "";
	String Cor_Reg_Number = "";
	if(request.getAttribute("Jurisdic") != null) {
		Jurisdic = (String) request.getAttribute("Jurisdic");
	}
	if(request.getAttribute("Sur_year") != null) {
		Sur_year = (String) request.getAttribute("Sur_year");
	}
	if(request.getAttribute("Invest_pp") != null) {
		String tmp = (String) request.getAttribute("Invest_pp");
			Invest_pp += tmp.substring(0, 4);
			Invest_pp += "~";
			Invest_pp += tmp.substring(5, 9);
	}
	if(request.getAttribute("Cor_Reg_Number") != null) {
		String tmp = (String) request.getAttribute("Cor_Reg_Number");
		Cor_Reg_Number += tmp.substring(0,6);
		Cor_Reg_Number += "-";
		Cor_Reg_Number += tmp.substring(6,13);
	}
	%>
<div id="formSet"></div>
	<div class="top" id="top"></div>
	<div class="nav-wrapper__hd" id="nav"></div>
	<div class="wrap">
		<div class="wrap-logo">
			<img src="images/public/yctest4.png">
		</div>
		<div class=wrap-left>
			<div class="wrap-left-title">신고서조회</div>
			<ul>
				<li><a onclick="movePage('views/lr_lookup.jsp')">신고내역조회</a></li>
				<li><a href="#" class="selected_menu">신고서출력</a></li>
				<li><a onclick="movePage('views/lr_result.jsp')">세무조사결과조회</a></li>
			</ul>
		</div>
		<div class="wrap-right">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td><img class="sub-title_img" alt="서브타이틀"
						src="images/sub_title/lr_print_title.png"></td>
					<td align="right">
						<div class="wrap-right-sub_depth">
							<img alt="처음으로" src="images/public/btnHomeTest.png"
								align="absmiddle"> <a onclick="movePage('')">Home</a> >
							신고서조회 > 신고서출력
						</div>
					</td>
				</tr>
			</table>
			<div>
				<span style="color: red">* 아래의 조회조건을 선택하세요.</span>
				<div class="wrap-right-content_box">
					<form action="<%= cur_path %>/work.jsp" id="search" method="post" class="search">
                <%
				    company_table_DAO companyDAO = new company_table_DAO();
				    String ret = companyDAO.findId(isLogin);
					corpstat_DAO corpDAO = new corpstat_DAO();
					ArrayList<corpstat_VO> corpList = corpstat_DAO.getList(ret);
			    %>
						<ul>
                            <li>법인선택 : 
                                <select name="corpselect">
		                                <%
		                            for(int i=0;i<corpList.size();i++){
		                            	corpstat_VO now = corpList.get(i);
		                            %>
                                    <option value="<%=now.getCor_Reg_Number() %>">[<%=now.getJurisdic() %>] <%=now.getCor_Reg_Number() %> <%=now.getCor_name() %></option>
                                </select>
                            <%} %>
                            </li>
                            <%
                            Calendar cal = Calendar.getInstance();
                        	int year = cal.get(Calendar.YEAR); %>
                            <li>조사년도 : 
                                <select name="year" id="year">
                                    <option value="<%=year %>"><%=year %></option>
                                    <option value="<%=year-1 %>"><%=year-1 %></option>
                                    <option value="<%=year-2 %>"><%=year-2 %></option>
                                    <option value="<%=year-3 %>"><%=year-3 %></option>
                                    <option value="<%=year-4 %>"><%=year-4 %></option>
                                </select>년&nbsp;
                            </li>
                        </ul>
                    </form>
                    <input type="button" value="조회" onclick="subForm('action/print_action.jsp','search')"/>
                   
                </div>
				<div>
					>>> 조회결과
					<table width="100%" border="0" cellspacing="0" cellpadding="0" class="table-header">
                        <tr>
                            <th width="15%">관할</th>
                            <td><%=Jurisdic %></td>
                            <th width="20%">조사년도</th>
                            <td><%=Sur_year %></td>
                            <th width="20%">조사사업기간</th>
                            <td><%=Invest_pp %></td>
                        </tr>
                        <tr>
                            <th>법인정보</th>
                            <td colspan="3"><%=Cor_Reg_Number %></td>
                            <th>제출유무</th>
                            <td></td>
                        </tr>
                    </table>
					<br> >>> 출력항목선택<br>
					<div style="font-size: small; text-align: right;">● 개별출력: 이미지
						선택 ● 전체출력: 인쇄버튼 선택</div>
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="table-header">
						<tbody>
							<tr>
								<td><a href="#" onclick="#"> <img alt="표지"
										width="106px" height="64px" src="images/lr/2_1_2_01.gif"
										vspace=10 hspace=10 align="top"></a> <a href="#" onclick="#">
										<img alt="법인현황" width="106px" height="64px"
										src="images/lr/2_1_2_02.gif" vspace=10 hspace=10 align="top">
								</a></td>
							</tr>
							<tr>
								<td><a href="#" onclick="#"> <img alt="표지"
										width="106px" height="64px" src="images/lr/2_1_2_04_1.gif"
										vspace=10 hspace=10 align="top"></a> <a href="#" onclick="#">
										<img alt="법인현황" width="106px" height="64px"
										src="images/lr/2_1_2_05_1.gif" vspace=10 hspace=10 align="top">
								</a> <a href="#" onclick="#"> <img alt="표지" width="106px"
										height="64px" src="images/lr/2_1_2_06_1.gif" vspace=10
										hspace=10align="top"></a></td>
							</tr>
							<tr>
								<td>

									<div>
										<input type="button" onclick="#" value="인쇄">

									</div>
								</td>
							</tr>



						</tbody>
					</table>


					<!--                     <form> 
                        <button>표지</button>
                        <button>법인현황</button>
                        <button>지방소득세<br>특별징수분</button>
                        <button>주민세<br>재산분</button>
                        <button>주민세<br>종업원분</button>
                        <br>
                        <input type="submit" value="인쇄">
                    </form> -->
				</div>
			</div>
		</div>
	</div>
	<div class="footer" id="footer"></div>
</body>

</html>