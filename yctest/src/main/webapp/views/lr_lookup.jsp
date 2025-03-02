<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="company.company_table_DAO"%>
<%@ page import="company.companyVO"%>
<%@ page import="compstat.compstat_DAO"%>
<%@ page import="compstat.compstat_VO"%>
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
	<% String cur_path = request.getContextPath(); 
		String isLogin = (String) session.getAttribute("userId");
		String Jurisdic = "";
		String Sur_year = "";
		String Invest_pp = "";
		String Cor_Reg_Number = "";
		String Ori_Cor_Reg_Number = "";
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
			Ori_Cor_Reg_Number = (String) request.getAttribute("Cor_Reg_Number");
		}
	%>
	<c:set var="isLogin" value="<%=isLogin %>"/>
<div id="formSet"></div>
    <div class="top" id="top" value="<%= isLogin %>"></div>
    <div class="nav-wrapper__hd" id="nav"></div>
    <div class="wrap">
        <div class="wrap-logo">
            <img src="images/public/yctest4.png">
        </div>
        <div class=wrap-left>
            <div class="wrap-left-title">
                신고서조회
            </div>
            <ul>
                <li><a href="#" class="selected_menu">신고내역조회</a></li>      
                <li><a onclick="movePage('views/lr_print.jsp')">신고서출력</a></li>
                <li><a onclick="movePage('views/lr_result.jsp')">세무조사결과조회</a></li>         
            </ul>
        </div>
        <div class="wrap-right">
             <table width="100%" border="0" cellspacing="0" cellpadding="0" >
                <tr>
                    <td><img class="sub-title_img" alt="서브타이틀" src="images/sub_title/lr_lookup_title.png"></td>
                    <td align="right">
                        <div class="wrap-right-sub_depth">
                            <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle">
                            <a onclick="movePage('')">Home</a>
                            > 신고서조회 > 신고내역조회
                        </div>
                    </td>
                </tr>
            </table>
            <div>
                <div style="color: red">* 최근 5년 이내 신고 내역만 조회가능 합니다.</div>
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
                    <input type="button" value="조회" onclick="subForm('action/lookup_action.jsp','search')"/>
                   
                </div>

                <div>
                    - 신고서작성내역

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

                    <br>

                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table-header">
                    <%
                    compstat_DAO compstatDAO = new compstat_DAO();
                    int cnt = 0;
					ArrayList<compstat_VO> compstatList = compstat_DAO.getList(Ori_Cor_Reg_Number);
					int num = 1;
					cnt = compstatList.size();
			    	%>
                        <tr>
                            <th>번호</th>
                            <th>구분</th>
                            <th>사업장명</th>
                            <th>사업자번호</th>
                            <th>작성현황</th>
                        </tr>
                        <%
		                            for(int i=0;i<cnt;i++){
		                            	compstat_VO now = compstatList.get(i);
		                            %>
		                            <tr>
		                            <td><%=num++ %></td>
		                            <td><%=now.getCs_office_exist() %></td>
		                            <td><%=now.getCs_company_name() %></td>
		                            <td><%
		                            String tmp = "";
		                            tmp += now.getCs_company_reg_num().substring(0,3);
		                            tmp += "-";
		                            tmp += now.getCs_company_reg_num().substring(3,5);
		                            tmp += "-";
		                            tmp += now.getCs_company_reg_num().substring(5,10);
		                             %><%=tmp %></td>
		                            </tr>
		                            <%} %>
                    </table>
                    <br>                  
                    - 첨부파일내역
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table-header">
                        <tr>
                            <th>번호</th>
                            <th>서식구분</th>
                            <th>순번</th>
                            <th>파일명</th>
                            <th>파일크기</th>
                            <th>비고</th>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>

</html>