<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="corpstat.corpstat_DAO"%>
<%@ page import="corpstat.corpstat_VO"%>
<%@ page import="local.localtax_special_DAO"%>
<%@ page import="local.localtax_special_VO"%>
<%@ page import="depart.depart_resitax_DAO"%>
<%@ page import="depart.depart_resitax_VO"%>
<%@ page import="resident.resident_tax_DAO"%>
<%@ page import="resident.resident_tax_VO"%>
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
	<%  class result{
			private String year;
			private int cnt = 0;
			private ArrayList<String> type = new ArrayList<String>();
			public ArrayList<String> getType(){
				return type;
			}
			public String getYear(){
				return year;
			}
			public int getCnt(){
				return cnt;
			}
			public void setType(String tp) {
				type.add(tp);
			}
			public void setYear(String yr){
				year=yr;
			}
			public void setCnt(int ct){
				cnt=ct;
			}
		}
		String cur_path = request.getContextPath();
		String isLogin = (String) session.getAttribute("userId");
		String Cor_Reg_Number = (String) session.getAttribute("Cor_Reg_Number");
		/*
		ArrayList<result> resultList = new ArrayList<result>();
		*/
		corpstat_DAO corpDAO = new corpstat_DAO();
		ArrayList<corpstat_VO> corpList = corpstat_DAO.getList(Cor_Reg_Number);
		 ArrayList<localtax_special_VO> localList = localtax_special_DAO.getList(Cor_Reg_Number);
	      String isLocal = "0";
		if(localList != null) {
			  isLocal = localList.get(0).getBus_infor();
		  }
		ArrayList<depart_resitax_VO> departList = depart_resitax_DAO.getList(Cor_Reg_Number);
	      String isDepart = "0";
		if(departList != null) {
			  isDepart = departList.get(0).getBus_name();
		  }
		ArrayList<resident_tax_VO> residentList = resident_tax_DAO.getList(Cor_Reg_Number);
	      String isResident = "0";
		if(residentList != null) {
			if(residentList.get(0).getBus_name() != null)
			  isResident = residentList.get(0).getBus_name();	//나중에는 report_date로 판별?
		  }
		/*
		if(isLogin != null && corpList.size() != 0){
		boolean flag = true;
		for(int i=0;i<4;i++) {
			String year = corpList.get(i).getReport_Date().toString().split("-")[0];
			if(i==0) {
				result res = new result();
				res.setCnt(1);
				res.setYear(year);
				res.setType(corpList.get(i).getType());
				resultList.add(res);
			}
			else {
				for(int j=0; j<resultList.size(); j++) {
					if(resultList.get(j).getYear().equals(year)) {
						flag = false;
						resultList.get(j).setType(corpList.get(i).getType());
						resultList.get(j).setCnt(resultList.get(j).getCnt()+1);
						break;
					}
				}
				if(flag) {
					result res = new result();
					res.setCnt(1);
					res.setYear(year);
					res.setType(corpList.get(i).getType());
					resultList.add(res);
				}
			}
			flag = true;
		}
		}*/
		//1:depart(주민세종업원), 2: localtax(지소세), 3:resident(주민세재산분), 4: submit(신고서제출)
		
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
                <li><a href="#" class="selected_menu">법인현황</a></li>      
                <li><a onclick="movePage('views/fr_localtax_special.jsp')">지방소득세특별징수</a></li>
                <li><a onclick="movePage('views/fr_resident_tax.jsp')">주민세재산분</a></li>    
                <li><a onclick="movePage('views/fr_depart_resitax.jsp')">주민세종업원분</a></li>    
                <li><a onclick="movePage('views/fr_attach_document_manage.jsp')">첨부서류관리</a></li>    
                <li><a onclick="movePage('views/fr_submit_report.jsp')">신고서제출</a></li>         
            </ul>
        </div>  
        <div class="wrap-right">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" >
                <tr>
                    <td><td><img class="sub-title_img" alt="서브타이틀" src="images/sub_title/fr_corpstat_title.png"></td></td>
                    <td align="right">
                        <div class="wrap-right-sub_depth">
                            <img alt="처음으로" src="images/public/btnHomeTest.png" align="absmiddle">
                            <a onclick="movePage('')">Home</a>
                             > 신고서작성 > 법인현황
                        </div>
                    </td>
                </tr>
            </table>        
            <div>
                <img alt="이용안내" src="https://biztax.hscity.go.kr/hwaseong/image/tip_tap.gif">
                <div class="sitemap-wrap-right-content">
                    <ul>
                        <li><span color="red">2021년</span> 서면신고 대상으로 선정된 법인 목록입니다.</li>
                        <li>해당 신고 기간을 준수하여 신고서를 작성해 주시기 바랍니다.</li>
                        <li>업체명 또는 법인등록번호를 클릭하시면 서면신고서를 작성하실 수 있습니다.</li>
                        <li>작성현황구분 : 현재까지 작성된 신고내역을 표시합니다.</li>
                        <li>
                            <img alt="법인현황" src="images/fr/corpstatBtn.png">
                             : 법인현황 
                            <img alt="지방소득세특별징수" src="images/fr/localtaxBtn.png">
                             : 지방소득세특별징수분
                            <img alt="주민세재산분" src="images/fr/residentBtn.png">
                             : 주민세재산분
                            <img alt="주민세종업원본" src="images/fr/departBtn.png">
                             : 주민세종업원본
                        </li>
                    </ul>
                </div>
                <div>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" >
                        <tr>
                            <td><img alt="서면신고 대상 목록" src="	https://biztax.hscity.go.kr/hwaseong/image/dsaa_tit.gif"></td>
                            <td align="right"><font color="red">●</font> : 신고대상 ■ : 미대상/제출완료</td>
                        </tr>
                    </table>    
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="text-align:center;" class="sitemap-wrap-right-content-table_header">
                        <tr>
                            <th>대상</th>
                            <th>관할</th>
                            <th>업체명</th>
                            <th>법인등록번호</th>
                            <th>신고기간</th>
                            <th>작성현황</th>
                        </tr>
                        <tr>
                        	<% if(corpList != null) { %>
                        	<td style="color:red">●</td>
                        		<td><%= corpList.get(0).getJurisdic() %></td>
                        		<td><%= corpList.get(0).getCor_name() %></td>
                        		<td><a onclick="movePage('views/fr_corpstat_write.jsp')"><%= Cor_Reg_Number %></a></td>
                        		<td><%= corpList.get(0).getInvest_pp() %></td>
                        		<td>
                        		<% if(!corpList.get(0).getIncorporated_or_not().equals("0")) {%>
                        			<img alt="법인현황" src="images/fr/corpstatBtn.png">
                        		<%} %>
                        		<% if(!isLocal.equals("0")) {%>
                        			<img alt="지방소득세특별징수" src="images/fr/localtaxBtn.png">
                        		<%} %>
                        		<% if(!isResident.equals("0")) {%>
                        			<img alt="주민세재산분" src="images/fr/residentBtn.png">
                        		<%} %>
                        		<% if(!isDepart.equals("0")) {%>
                        			<img alt="주민세종업원분" src="images/fr/departBtn.png">
                        		<%} %>
                        		</td>
                        	<% } %>
                        </tr>
                        <!--  -->
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>

</html>