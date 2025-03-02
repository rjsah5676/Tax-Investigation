<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>영천시 법인세무조사 관리자</title>
    <link rel="stylesheet" type="text/css" href="../css/public.css">
    <link rel="stylesheet" type="text/css" href="../css/fr_corpstat.css">
    <script type="text/javascript" src="../js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="../js/admin.js"></script>
</head>

<body onload="init();">
<% String cur_path = request.getContextPath();
	String Prv_detail_addr = (String) request.getAttribute("Prv_detail_addr");
	String Cor_Reg_Number = (String) request.getAttribute("Cor_Reg_Number");
	String fail = (String) request.getAttribute("fail");
	if(fail == "fail") out.println("<script>alert('등록되지않은 법인번호입니다.');</script>");
%>
<c:set var="Prv_detail_addr" value="<%= Prv_detail_addr %>"/>
<c:set var="Cor_Reg_Number" value="<%= Cor_Reg_Number %>"/>
<div id="formSet"></div>
    <div class="top" id="top"></div>
    <div class="nav-wrapper__hd" id="nav"></div>
    <div class=wrap>
        <div class="wrap-logo">
            <img src="../images/public/yctest4.png">
        </div>
        <div class=wrap-left>
            <div class="wrap-left-title">
                통지서작성
            </div>
            <ul>
                <li><a href="#" class="selected_menu">과세예고 내역 작성</a></li>    
                <li><a onclick="movePage('ad_admin2_write.jsp')">세무조사결과통지서 작성</a></li>    
                <li><a onclick="movePage('ad_admin3_write.jsp')">지방세 과세예고 통지서 작성</a></li>     
           </ul>
        </div>  
        <div class="wrap-right">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" >
                <tr>
                    <td><img alt="서브타이틀" class="sub-title_img" src="../images/sub_title/ad_admin1_write_title.png">
                    <td align="right">
                        <div class="wrap-right-sub_depth">
                            <img alt="처음으로" src="../images/public/btnHomeTest.png" align="absmiddle">
                            <a onclick="movePage('ad_main.jsp')">Home</a>
                             > 통지서작성 > 과세예고 내역 작성
                        </div>
                    </td>
                </tr>
            </table>        
            <div>
                <div class="sitemap-wrap-right-content-main">
                    <table width="100%"  padding="10">
                        <tr>
                            <td>법인명(법인번호)</td>
                            <td>
                            <form action="<%= cur_path %>/admin/work.jsp" id="lookup" method="post">
                            	<c:if test="${Cor_Reg_Number eq null}">
                            		<input name="Cor_Reg_Number" placeholder = "'-'을 제외한 13자리 숫자를 입력해주세요." size='14' maxlength='13' uMinLen='13' 
                                    isOnlyNum="Y" required>
                            	</c:if>
                            	<c:if test="${Cor_Reg_Number ne null}">
                            		<input name="Cor_Reg_Number" value="<%= Cor_Reg_Number %>">
                            	</c:if>
                            	<input type="button" onclick="doAction('../ad_action/prep_search_action.jsp','lookup')" value="조회" style="float:right; width:50px;">
                            </form>
                            </td>
                        </tr>
                        <form action="<%=cur_path %>/admin/work.jsp" method="POST" name="write">
                        <input type="hidden" name="Cor_Reg_Number" value="<%= Cor_Reg_Number %>">
                        <tr>              
                            <td>주소</td>
                            <c:if test="${Prv_detail_addr eq null}">
                            	<td><input name="Prep_addr" readonly value="법인번호를 조회해주세요" style="background-color:#BBBBBB;"></td>
                            </c:if>
                            <c:if test="${Prv_detail_addr ne null}">
                            	<td><input name="Prep_addr" value="<%= Prv_detail_addr %>"></td>
                            </c:if>
                        </tr>
                        <tr>
                            <td>세목</td>
                            <td><input name="Prep_Tax_List" required></td>
                        </tr>
                        <tr>
                            <td>과세대상 물건명</td>
                            <td><input name="Prep_Taxable_Obj" required></td>
                        </tr>
                        <tr>
                            <td>과세 원인</td>
                            <td><input name="Prep_Cause_Tax" required></td>
                        </tr>
                        <tr>
                            <td>취득일자(추징발생일자)</td>
                            <td><input type="date" input name="Prep_Regist_Date" required></td>
                        </tr>
                        <tr>
                            <td>과세표준액</td>
                            <td><input name="Prep_Tax_Amount" placeholder = "단위 : 원" required></td>
                        </tr>
                        <tr>
                            <td>가산세(미신고)</td>
                            <td><input name="Prep_Penalty_No_Report" placeholder = "단위 : 원" required></td>
                        </tr>
                        <tr>
                            <td>가산세(미납부)</td>
                            <td><input name="Prep_Penalty_No_Pay" placeholder = "단위 : 원" required></td>
                        </tr>
                        <tr>
                            <td>합계</td>
                            <td><input name="Prep_Sum" placeholder = "단위 : 원" required></td>
                             <!-- 어떤값이랑 어떤값을 합치는 건지 모르겠음 알면 수정할게요 -->
                        </tr>
                        </form>
                    </table>
                    <div class="btn">
						<input type="button" onclick="doWrite('../ad_action/prep_action.jsp')" value="저장"
							class=" left">
					</div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>

</html> 