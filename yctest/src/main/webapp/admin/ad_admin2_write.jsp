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
	String Prv_phonenum = (String) request.getAttribute("Prv_phonenum");
	String Prv_cor_repre = (String) request.getAttribute("Prv_cor_repre");
	String fail = (String) request.getAttribute("fail");
	if(fail == "fail") out.println("<script>alert('등록되지않은 법인번호입니다.');</script>");
%>
<c:set var="Prv_detail_addr" value="<%= Prv_detail_addr %>"/>
<c:set var="Cor_Reg_Number" value="<%= Cor_Reg_Number %>"/>
<c:set var="Prv_phonenum" value="<%= Prv_phonenum %>"/>
<c:set var="Prv_cor_repre" value="<%= Prv_cor_repre %>"/>
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
                <li><a onclick="movePage('ad_admin1_write.jsp')">과세예고 내역 작성</a></li>    
                <li><a href="#" class="selected_menu">세무조사결과통지서 작성</a></li>    
                <li><a onclick="movePage('ad_admin3_write.jsp')">지방세 과세예고 통지서 작성</a></li>     
           </ul>
        </div>  
        <div class="wrap-right">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" >
                <tr>
                   <td><img alt="서브타이틀" class="sub-title_img"  src="../images/sub_title/ad_admin2_write_title.png"></td>
                    <td align="right">
                        <div class="wrap-right-sub_depth">
                            <img alt="처음으로" src="../images/public/btnHomeTest.png" align="absmiddle">
                            <a onclick="movePage('ad_main.jsp')">Home</a>
                             > 통지서작성 > 세무조사결과통지서 작성
                        </div>
                    </td>
                </tr>
            </table>        
            <div>


                <div class="sitemap-wrap-right-content-main">
                    <table width="100%"  padding="10">
                    	<tr>
                            <td>법인등록번호</td>
                            <td>
                            	<form action="<%= cur_path %>/admin/work.jsp" id="lookup" method="post">
                            	<c:if test="${Cor_Reg_Number eq null}">
                            		<input name="Cor_Reg_Number" placeholder = "'-'을 제외한 13자리 숫자를 입력해주세요." size='14' maxlength='13' uMinLen='13' 
                                    isOnlyNum="Y" required>
                            	</c:if>
                            	<c:if test="${Cor_Reg_Number ne null}">
                            		<input name="Cor_Reg_Number" value="<%= Cor_Reg_Number %>">
                            	</c:if>
                            	<input type="button" onclick="doAction('../ad_action/aud_search_action.jsp','lookup')" value="조회" style="float:right; width:50px;">
                            	</form>
                            </td>
                        </tr>
                        <form action="<%=cur_path %>/admin/work.jsp" method="POST" name="write">
                        <input type="hidden" name="Cor_Reg_Number" value="<%= Cor_Reg_Number %>">
                        <tr>
                            <td>성명(법인명)</td>
                            <td><input name="Aud_Name"></td>
							<!--무슨값인지 모름 확인필요-->
                        </tr>
                        <tr>
                            <td>대표자</td>
                            <c:if test="${Prv_cor_repre eq null}">
                            	<td><input name="Aud_cor_repre" readonly value="법인번호를 조회해주세요" style="background-color:#BBBBBB;"></td>
                            </c:if>
                            <c:if test="${Prv_cor_repre ne null}">
                            	<td><input name="Aud_cor_repre" value="<%= Prv_cor_repre %>"></td>
                            </c:if>
                        </tr>
                        <tr>
                            <td>전화번호</td>
                            <c:if test="${Prv_phonenum eq null}">
                            	<td><input name="Aud_phonenum" readonly value="법인번호를 조회해주세요" style="background-color:#BBBBBB;"></td>
                            </c:if>
                            <c:if test="${Prv_phonenum ne null}">
                            	<td><input name="Aud_phonenum" value="<%= Prv_phonenum %>" placeholder="'-' 없이 입력해주세요."></td>
                            </c:if>
                        </tr>
                        <tr>
                            <td>주소(사업장)</td>
                            <c:if test="${Prv_detail_addr eq null}">
                            	<td><input name="Aud_addr" readonly value="법인번호를 조회해주세요" style="background-color:#BBBBBB;"></td>
                            </c:if>
                            <c:if test="${Prv_detail_addr ne null}">
                            	<td><input name="Aud_addr" value="<%= Prv_detail_addr %>"></td>
                            </c:if>
                        </tr>
                        <tr>
                            <td>당초조사기간</td>
                            <td><input type="date" name="Aud_initial_period" required></td>
                        </tr>
                        <tr>
                            <td>실제조사기간</td>
                            <td><input type="date" name="Aud_real_period" required></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center;">결정 내용</td>
                        </tr>
                        <tr>
                            <td>세목</td>
                            <td><input name="Aud_Tax_List" required></td>
                        </tr>
                        <tr>
                            <td>과세대상 물건명</td>
                            <td><input name="Aud_Taxable_Obj" required></td>
                        </tr>
                        <tr>
                            <td>과세 원인(추징사유)</td>
                            <td><input name="Aud_Cause_Tax" required></td>
                        </tr>
                        <tr>
                            <td>취득일자(추징발생일자)</td>
                            <td><input type="date" input name="Aud_Acq_Date" required></td>
                        </tr>
                        <tr>
                            <td>본세</td>
                            <td><input name="Aud_Real_Tax" placeholder = "단위 : 원" required></td>
                        </tr>
                        <tr>
                            <td>가산세(미신고/과소)</td>
                            <td><input name="Aud_Penalty_No_Report" placeholder = "단위 : 원" required></td>
                        </tr>
                        <tr>
                            <td>가산세(납부불성실)</td>
                            <td><input name="Aud_Penalty_No_Pay" placeholder = "단위 : 원" required></td>
                        </tr>
                        <tr>
                            <td>합계</td>
                            <td><input name="Aud_Sum" placeholder = "단위 : 원" required></td>
                            <!-- 어떤값이랑 어떤값을 합치는 건지 모르겠음 알면 수정할게요 -->
                        </tr>
                        <tr>
                            <td>기타사항</td>
                            <td><input name="Aud_Etc"></td>
                        </tr>
                        <tr>
                            <td>붙임서류</td>
                            <td><input type="file" name="" required></td>
                        </tr>
                        </form>
                    </table>
                    <div class="btn">
						<input type="button" onclick="doWrite('../ad_action/aud_action.jsp')" value="저장"
							class=" left">
					</div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer" id="footer"></div>
</body>

</html> 