<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="compstat.compstat_DAO"%>
<%@ page import="compstat.compstat_VO"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.StringTokenizer" %>
<html>

<head>
    <meta charset="utf-8" />
   <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>법인세무조사 인터넷신고시스템</title>
    <link rel="stylesheet" type="text/css" href="css/public.css">
    <link rel="stylesheet" type="text/css" href="css/fr_corpstat.css">
    <link rel="stylesheet" type="text/css" href="css/mypage.css">
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="js/public.js"></script>
    <script type="text/javascript" src="js/signup.js"></script>
</head>

<body onload="init();">
   <% 
      String Cor_Reg_Number = (String) session.getAttribute("Cor_Reg_Number");
   	  String cur_path = request.getContextPath(); 
      String isLogin = (String) session.getAttribute("userId");
      String dupchk= (String) request.getAttribute("dupchk");
      String c1 = (String) request.getAttribute("c1");
      String c2 = (String) request.getAttribute("c2");
      String c3 = (String) request.getAttribute("c3");
      String[] cor_reg_num = new String[2];
      cor_reg_num[0]=Cor_Reg_Number.substring(0,6);
      cor_reg_num[1]=Cor_Reg_Number.substring(6,13);
      if(dupchk != null) {
	      if(dupchk.equals("ok")) {
	    	  out.println("<script> alert('사업자 등록번호를 등록 가능합니다.'); </script>");
	      }
	      else {
	    	  out.println("<script> alert('이미 등록된 사업자 등록번호 입니다.'); </script>");
	    	  dupchk=null;
	      }
      }
      compstat_DAO compDAO = new compstat_DAO();
	  ArrayList<compstat_VO> compList = compstat_DAO.getList(Cor_Reg_Number);
   %>
   <c:set var="isLogin" value="<%=isLogin %>"/>
<div id="formSet"></div>
<form action="<%=cur_path %>/work.jsp" method="POST" id="dupchk"></form>
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
                             > 신고서작성 > 사업장현황작성
                        </div>
                    </td>
                </tr>
            </table>         
            <div>
                <div class="sitemap-wrap-right-content-info">              
                            법인정보 : <%= cor_reg_num[0] %> - <%= cor_reg_num[1] %><br>
                            사업장정보 : 
                            <select>                             
                                    <% if(compList != null){ 
                                    	for(int i=0;i<compList.size();i++){
                                    		String comp_num = compList.get(i).getCs_company_reg_num();
                                    		String[] comp_number = new String[3];
                                    		comp_number[0]=comp_num.substring(0,3);
                                    		comp_number[1]=comp_num.substring(3,5);
                                    		comp_number[2]=comp_num.substring(5,10);
                                    		
                                    %>	
                                    	<option value="<%= i %>">[<%= compList.get(i).getCs_office_exist() %>] <%= comp_number[0] %>-<%= comp_number[1] %>-<%= comp_number[2] %> <%= compList.get(i).getCs_company_name() %>
                                   <%}} %>           
                            </select>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" padding="10">
                        <tbody><tr></tr>
                    </tbody></table>
                </div>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody><tr>
                            <td><img alt="서면신고 대상 목록" src="   https://biztax.hscity.go.kr/hwaseong/image/dsaa_tit.gif"></td>
                        </tr>
                    </tbody></table>
                    <form action="<%=cur_path %>/work.jsp" method="POST" name="write">
                		<input type="hidden" name="Cor_Reg_Number" value="<%= Cor_Reg_Number %>"/>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="manage-tb_b">
                                                    <tbody><tr>
                                                        <th colspan="2"><span class="star_red">*</span> 본점유무</th>
                                                        <td><input type="radio" name="Cs_office_exist" value="본점" required checked> 본점
                                                        <input type="radio" name="Cs_office_exist" value="사업장" required> 사업장
                                                        </td>                                                                                                            
                                                       
                                                    </tr>
                                                    <tr>
                                                    <% if(dupchk == null) { %>
                                                        <th colspan="2"><span class="star_red">*</span> 사업자등록번호</th>
                                                        <td>        
                                                            <input title="사업자등록번호앞자리"  type="text" name="Cs_company_reg_num1" id="c1" class="input_readonly" size='3' 
                                                            maxlength='3'
                                                            isOnlyNum="Y"  uRequired="[사업자등록번호]" uMinLen="3" required/>
                                                            -
                                                            <input title="사업자등록번호중간자리" type="text" name="Cs_company_reg_num2" id="c2" class="input_readonly" size='2' 
                                                            maxlength='2' 
                                                            isOnlyNum="Y"  uRequired="[사업자등록번호]" uMinLen="2" required/>
                                                            -
                                                            <input title="사업자등록번호뒷자리" type="text" name="Cs_company_reg_num3" id="c3" class="input_readonly" size='5' 
                                                            maxlength='5' 
                                                            isOnlyNum="Y"  uRequired="[사업자등록번호]" uMinLen="5" required/>
                                                            <button onclick="dupCheck()">중복체크</button>
                                                        </td>
                                                        <% } %>
                                                    </tr>
                                                     <% if(dupchk != null) { %>
                                                        <th colspan="2"><span class="star_red">*</span> 사업자등록번호</th>
                                                        <td>        
                                                            <input title="사업자등록번호앞자리"  type="text" name="Cs_company_reg_num1" id="c1" class="input_readonly" size='3' 
                                                            maxlength='3' value="<%= c1 %>"
                                                            isOnlyNum="Y"  uRequired="[사업자등록번호]" uMinLen="3" required/>
                                                            -
                                                            <input title="사업자등록번호중간자리" type="text" name="Cs_company_reg_num2" id="c2" class="input_readonly" size='2' 
                                                            maxlength='2' value="<%= c2 %>"
                                                            isOnlyNum="Y"  uRequired="[사업자등록번호]" uMinLen="2" required/>
                                                            -
                                                            <input title="사업자등록번호뒷자리" type="text" name="Cs_company_reg_num3" id="c3" class="input_readonly" size='5' 
                                                            maxlength='5'  value="<%= c3 %>"
                                                            isOnlyNum="Y"  uRequired="[사업자등록번호]" uMinLen="5" required/>
                                                            <button onclick="dupCheck()">중복체크</button>
                                                        </td>
                                                        <% } %>
                                                    </tr>
                                                    <tr>
                                                        <th colspan="2"><span class="star_red">*</span> 사업장명</th>
                                                        <td>
                                  							<input type="text" name="Cs_company_name" required/>
                                                        </td>
                                                    </tr>
                                                
                                                    <tr>
                                                        <th colspan="2"><span class="star_red">*</span> 소재지<br>(상세주소)</th>
                                                        <td>
                                  							<input type="text" name="Cs_detail_addr" required/>
                                                        </td>
                                                    </tr>
                                                
                                                   <tr>
                                                        <th colspan="2"><span class="star_red">*</span> 전화번호</th>
                                                        <td>
                                                        	<input title="전화번호" name="Cs_phonenum1" type="text"  size="4" maxlength='4' isOnlyNum="Y" 
                                                             uMinLen='3' value="" required />
                                                            -
                                                            <input title="전화번호" name="Cs_phonenum2" type="text"  size="4" maxlength='4' isOnlyNum="Y" 
                                                             uMinLen='3' value="" required />
                                                            -
                                                            <input title="전화번호" name="Cs_phonenum3" type="text"  size="4" maxlength='4' isOnlyNum="Y" 
                                                             uMinLen='4' value="" required />
                                                        </td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <th colspan="2"><span class="star_red">*</span> 최초 설치일</th>
                                                        <td><input type="date" name="Cs_first_set" required></td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <th colspan="2" class="no_star"> 사업자 등록 년 월 일</th>
                                                        <td><input type="date" name="Cs_regist_date"></td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <th colspan="2" class="no_star"> 지점등기일</th>
                                                        <td><input type="date" name="Cs_registerd_date"></td>
                                                    </tr>
                                                   
                                                    <tr>
                                                       <th rowspan="4" class="nostar" style="border-right: 1px solid #C3C7CC; padding-left: 5px; padding-right: 10px;">
                                                          사<br>업<br>장
                                                       </th>
                                                       <th><span class="star_red">*</span> 소유형태</th>
                                                       <td><input type="radio" name="Cs_possession" value="차기" required checked> 차기
                                                        <input type="radio" name="Cs_possession" value="입차" required> 입차
                                                        </td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <th><span class="star_red">*</span> 토지면적</th>
                                                        <td>
                                                          <input name="Cs_land_area" required > ㎡
                                          				</td>
                                                    </tr>
                                                    <tr>
                                                        <th><span class="star_red">*</span> 건물면적</th>
                                                        <td>
                                                          <input name="Cs_building_area" required > ㎡
                                          				</td>
                                                    </tr>
                                                    <tr>
                                                        <th><span class="star_red">*</span> 근무인원</th>
                                                        <td>
                                                          <input name="Cs_num_people" required > 명
                                          				</td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <th rowspan="2" colspan="2" class="no-star"> 추 가 확 인 사 항</th>
                                                        <td style="background-color:#DDDDDD">
                                                        	조사 기간 내 건물 면적이 300㎡ 초과인 경우가 있었다. <input type="checkbox" name="Cs_over_building_size" value=1> 예
                                         				</td>
                                                    </tr>
                                                     <tr>
                                                        <td style="background-color:#DDDDDD">
                                                        	조사 기간 내 종업원이 50명 초과인 경우가 있었다. <input type="checkbox" name="Cs_over_people" value=1> 예
                                         				</td>
                                                    </tr>
                                                    
                                                    
                                                </tbody>
                                       </table>
                                       <div class="btn">
                                       <% if(dupchk == null) { %>
											<input type="button" onclick="alert('사업자번호 중복 체크를 해주세요.')" value="저장"
												class=" left">
										<% }else { %>
												<input type="button" onclick="doWrite('action/compstat_action.jsp')" value="저장"
													class=" left">
										<% } %>
											<input type="button" onclick="movePage('views/fr_corpstat_write.jsp')" value="취소" class=" left">
										</div>
                                       </form>
                </div>
                                     
                </div>
            </div>
    <div class="footer" id="footer"></div>
</body>

</html>