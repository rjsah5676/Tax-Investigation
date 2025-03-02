<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="corpstat.corpstat_DAO"%>
<%@ page import="corpstat.corpstat_VO"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
    <html>

        <head>
            <meta charset="utf-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <title>YC_login test</title>
            <link rel="stylesheet" type="text/css" href="../css/public.css">            
			<link rel="stylesheet" type="text/css" href="../css/lookupNservice.css">
                    <script type="text/javascript" src="../js/jquery-1.12.4.min.js"></script>
                    <script type="text/javascript" src="../js/admin.js"></script>
                </head>

                <body onload="init();">
                	<%
	String cur_path = request.getContextPath();
	String isLogin = (String) session.getAttribute("userId");
    String Cor_Reg_Number = request.getAttribute("Cor_Reg_Number").toString();
    corpstat_DAO corpstatDAO = new corpstat_DAO();
    ArrayList<corpstat_VO> list = corpstatDAO.getList(Cor_Reg_Number);
	%>
	<c:set var="isLogin" value="<%=isLogin %>"/>
                   <div id="formSet"></div>
                    <div class="top" id="top"></div>
                    <div class="nav-wrapper__hd" id="nav"></div>
                    <div class="wrap">
                        <div class="wrap-logo">
                            <img src="../images/public/yctest4.png"></div>
                            <div class="wrap-left">
                               <div class="wrap-left-title">
                                    회원관리
                                </div>
                                <ul>
									<li><a href="#" class="selected_menu"">정보관리</a></li>
								</ul>
                            </div>
                            <div class="wrap-right">
                            <div class="wrap-right-title">
                                <div class="wrap-right-img">
                                    <img alt="서브타이틀" class="sub-title_img"  src="../images/sub_title/my_manage_title.png">
                                </div>
                                    <div class="wrap-right-sub_depth">
                                        <img alt="처음으로" src="../images/public/btnHomeTest.png" align="absmiddle">
                                            <a onclick="movePage('ad_main.jsp')">Home</a>
                                            > 회원관리 > 정보관리
                                        </div>
                                        </div>
                                        <br>
			<div>
				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					class="t_blue">
					<!-- 					<input type="hidden" id="fileTf" name="fileTf" value="F">
					<input type="hidden" id="fupNewFname" name="fupNewFname" value="">
					<input type="hidden" id="fupOldFname" name="fupOldFname" value="">
					<input type="hidden" id="fupFpath" name="fupFpath" value="">
					<input type="hidden" id="tableName" name="tableName"
						value="tnotice_bd"> -->
					<tbody>
					<%
					if(list==null){ // corpstat 작성 안되어 있을때
						%>
						<tr>
							<td class="tdo_to_c" colspan="4">법인현황이 작성되지 않은 계정입니다.</td>
						</tr><%
				    }
					else{
					%>
						<tr>
							<td width="130px" class="tdo_to_c">법인등록번호</td>
							<td width="200px" class="tdw_l" colspan="3"><%=list.get(0).getCor_Reg_Number() %></td>
						</tr>
						<tr>
							<td width="130px" class="tdo_to_c">관할</td>
							<td width="200px" class="tdw_l"><%=list.get(0).getJurisdic()%></td>
							<td width="130px" class="tdo_to_c">조사년도</td>
							<td width="200px" class="tdw_l"><%=list.get(0).getSur_year() %></td>
						</tr>
						<tr>
							<td width="130px" class="tdo_to_c">조사사업기간</td>
							<td width="200px" class="tdw_l"><%=list.get(0).getInvest_pp()%></td>
							<td width="130px" class="tdo_to_c">법인명</td>
							<td width="200px" class="tdw_l"><%=list.get(0).getCor_name() %></td>
						</tr>
						<tr>
							<td width="130px" class="tdo_to_c">본점주소</td>
							<td width="200px" class="tdw_l"><%=list.get(0).getCor_address()%></td>
							<td width="130px" class="tdo_to_c">전화번호</td>
							<td width="200px" class="tdw_l"><%=list.get(0).getPhone_num() %></td>
						</tr>
						<tr>
							<td width="130px" class="tdo_to_c">이메일</td>
							<td width="200px" class="tdw_l"><%=list.get(0).getCor_email()%></td>
							<td width="130px" class="tdo_to_c">대표자</td>
							<td width="200px" class="tdw_l"><%=list.get(0).getCor_repre() %></td>
						</tr>
						<tr>
							<td width="130px" class="tdo_to_c">설립년원일</td>
							<td width="200px" class="tdw_l"><%=list.get(0).getCor_establish_Date()%></td>
							<td width="130px" class="tdo_to_c">업태</td>
							<td width="200px" class="tdw_l"><%=list.get(0).getCor_status() %></td>
						</tr>
						<tr>
							<td width="130px" class="tdo_to_c">업종</td>
							<td width="200px" class="tdw_l"><%=list.get(0).getCor_business_type()%></td>
							<td width="130px" class="tdo_to_c">자본금(원)</td>
							<td width="200px" class="tdw_l"><%=list.get(0).getCor_capital() %></td>
						</tr>
						<tr>
							<td width="130px" class="tdo_to_c">법인구분</td>
							<td width="200px" class="tdw_l"><%=list.get(0).getIncorporated_or_not()%></td>
							<td width="130px" class="tdo_to_c">상장구분</td>
							<td width="200px" class="tdw_l"><%=list.get(0).getListed_or_not() %></td>
						</tr>
						<tr>
							<td width="130px" class="tdo_to_c">영리구분</td>
							<td width="200px" class="tdw_l"><%=list.get(0).getProfit_or_not()%></td>
							<td width="130px" class="tdo_to_c">사업장명</td>
							<td width="200px" class="tdw_l"><%=list.get(0).getBus_name() %></td>
						</tr>
						<tr>
							<td width="130px" class="tdo_to_c">근무부서</td>
							<td width="200px" class="tdw_l"><%=list.get(0).getWriter_depertment()%></td>
							<td width="130px" class="tdo_to_c">성명</td>
							<td width="200px" class="tdw_l"><%=list.get(0).getWriter_name() %></td>
						</tr>
						<tr>
							<td width="130px" class="tdo_to_c">전화번호</td>
							<td width="200px" class="tdw_l"><%=list.get(0).getWriter_phonenum()%></td>
							<td width="130px" class="tdo_to_c">지점유무</td>
							<td width="200px" class="tdw_l"><%=list.get(0).getHas_place() %></td>
						</tr>
						<tr>
							<td width="130px" class="tdo_to_c">분할/합병 여부확인</td>
							<td width="200px" class="tdw_l" colspan="3"><%=list.get(0).getDivision_or_merge()%></td>
						</tr>
						<%} %>
					</tbody>
				</table>

			</div>

			<div class="btn_r_org">
			<form action="<%=cur_path %>/admin/work.jsp" name="delete" method="POST" class="delete">
             		<input type="hidden" name= "deleteNum" value="<%=Cor_Reg_Number%>" >
            	</form>	
				<input type="button" onclick="subForm('../ad_action/manage_delete.jsp','delete')"
				value="삭제" class="btn_org">
				<input type="button" onclick="movePage('ad_admin_manage.jsp')"
					value="목록" class="btn_org">
				
			</div>
			
                                    </div>
                                </div>
                    <div class="footer" id="footer"></div>
                </body>

            </html>