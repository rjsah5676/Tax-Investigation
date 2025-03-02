<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="corpstat.corpstat_DAO"%>
<%@ page import="corpstat.corpstat_VO"%>
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
      corpstat_DAO corpDAO = new corpstat_DAO();
	  ArrayList<corpstat_VO> corpList = corpstat_DAO.getList(Cor_Reg_Number);
	  String[] phonenum = new String[3];
	  phonenum[0]="0";phonenum[1]="0";phonenum[2]="0";
	  String[] email = new String[2];
	  email[0]="0";email[1]="0";
	  String[] writerphone = new String[3];
	  writerphone[0]="0";writerphone[1]="0";writerphone[2]="0";
	  if(corpList != null)
		  if(!corpList.get(0).getIncorporated_or_not().equals("0")) {
			  StringTokenizer st = new StringTokenizer(corpList.get(0).getPhone_num(), "-");;
			  phonenum[0]= st.nextToken();
			  phonenum[1]= st.nextToken();
			  phonenum[2]= st.nextToken();
			  st = new StringTokenizer(corpList.get(0).getCor_email(), "@");
			  email[0]= st.nextToken();
			  email[1]= st.nextToken();
			  st = new StringTokenizer(corpList.get(0).getWriter_phonenum(), "-");
			  writerphone[0]= st.nextToken();
			  writerphone[1]= st.nextToken();
			  writerphone[2]= st.nextToken();
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
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="wrap-center-table">
                    <tbody><tr>
                        <td>관할구청</td>
                        <td>ㅎㅇ</td>
                        <td>조사년도</td>
                        <td>10년</td>
                        <td>조사사업기간</td>
                        <td>1 ~ 1</td>
                        <td><button>작성현황보기</button></td>
                    </tr>

                </tbody></table>
                <br>
                <img alt="이용안내" src="https://biztax.hscity.go.kr/hwaseong/image/tip_tap.gif">
                <div class="sitemap-wrap-right-content">
                    
                </div>
                <div class="sitemap-wrap-right-content-info">                    
                            법인정보 : 1 - 1
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
                                                        <th colspan="2"><span class="star_red">*</span> 본점소재지<br>&nbsp;(상세주소)</th>
                                                        <td><input name="Cor_address" required="" <%if(!corpList.get(0).getCor_address().equals("0") && corpList.get(0).getCor_address()!=null){ %>
                                                       	value="<%=corpList.get(0).getCor_address()%>" <% } %>></td>
                                                        
                                                       
                                                    </tr>
                                                    <tr>
                                                        <th colspan="2"><span class="star_red">*</span> 전화번호</th>
                                                        <td>
                                                            <input title="전화번호" id="tel1" name="Phone_num1" type="text" size="4" maxlength="4" isonlynum="Y" urequired="[전화번호]" uminlen="2" required=""
                                                            <%if(!phonenum[0].equals("0") && phonenum[0]!=null){ %>
                                                       			value="<%=phonenum[0]%>" <% } %>
                                                            >
                                                            -
                                                            <input title="전화번호" id="tel1" name="Phone_num2" type="text" size="4" maxlength="4" isonlynum="Y" urequired="[전화번호]" uminlen="3" required=""
                                                            <%if(!phonenum[1].equals("0") && phonenum[1]!=null){ %>
                                                       			value="<%=phonenum[1]%>" <% } %>
                                                            >
                                                            -
                                                            <input title="전화번호" id="tel2" name="Phone_num3" type="text" size="4" maxlength="4" isonlynum="Y" urequired="[전화번호]" uminlen="4" required=""
                                                            <%if(!phonenum[2].equals("0") && phonenum[2]!=null){ %>
                                                       			value="<%=phonenum[2]%>" <% } %>
                                                            >
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th colspan="2"><span class="star_red">*</span> E-mail</th>
                                                        <td>
                                                            <input title="이메일" type="text" id="emailAddr1" name="Cor_email1" size="20" maxlength="20" iscode="N" urequired="[이메일]" uminlen="2" required=""
                                                            <%if(!email[0].equals("0") && email[0]!=null){ %>
                                                       			value="<%=email[0]%>" <% } %>
                                                            > @
                                                            <input title="이메일" type="text" id="emailAddr2" name="Cor_email2" size="20" maxlength="20" iscode="N" urequired="[이메일]" uminlen="4" required=""
                                                            <%if(!email[1].equals("0") && email[1]!=null){ %>
                                                       			value="<%=email[1]%>" <% } %>
                                                            >
                                                        </td>
                                                    </tr>
                                                
                                                    <tr>
                                                        <th colspan="2"><span class="star_red">*</span> 대표자</th>
                                                        <td>
                                                            <input name="Cor_repre" required="" <%if(!corpList.get(0).getCor_repre().equals("0") && corpList.get(0).getCor_repre()!=null){ %>
                                                       	value="<%=corpList.get(0).getCor_repre()%>" <% } %>>
                                                        </td>
                                                    </tr>
                                                
                                                   <tr>
                                                        <th colspan="2"><span class="star_red">*</span> 설립 년 월 일</th>
                                                        <td>
                                                            <input type="date" name="Cor_establish_Date" required="" <%if(!corpList.get(0).getCor_establish_Date().equals("0") && corpList.get(0).getCor_establish_Date()!=null){ %>
                                                       	value="<%=corpList.get(0).getCor_establish_Date()%>" <% } %>>
                                                        </td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <th colspan="2" class="nostar">업태</th>
                                                        <td><input name="Cor_status" required="" <%if(!corpList.get(0).getCor_status().equals("0") && corpList.get(0).getCor_status()!=null){ %>
                                                       	value="<%=corpList.get(0).getCor_status()%>" <% } %>></td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <th colspan="2"><span class="star_red">*</span> 업종</th>
                                                        <td>
                                                            <select id="tel0" title="지역번호" name="Cor_business_type">
                                                            <option value="제조업">제조업
                                                            </option><option value="레벨업" <% if(corpList.get(0).getCor_business_type().equals("레벨업")){ %>
                                                            	selected<% } %>>레벨업
                                                            </option></select>
                                                        </td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <th colspan="2"><span class="star_red">*</span> 자본금(억원)</th>
                                                        <td>
                                                            <input name="Cor_capital" placeholder="0" required="" <%if(corpList.get(0).getCor_capital() != 0){ %>
                                                       	value="<%=corpList.get(0).getCor_capital()%>" <% } %>>
                                                        </td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <th colspan="2"><span class="star_red">*</span> 법인구분</th>
                                                        <td>
                                                            <select id="tel0" title="지역번호" name="Incorporated_or_not">
                                                            <option value="국내">국내
                                                            </option><option value="해외" 
                                                            <% if(corpList.get(0).getIncorporated_or_not().equals("해외")){ %>
                                                            	selected<% } %>
                                                            >해외
                                                            </option></select>
                                                        </td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <th colspan="2" class="nostar">상장구분</th>
                                                        <td>
                                                           <select id="tel0" title="지역번호" name="Listed_or_not">
                                                            <option value="상장">상장
                                                            </option><option value="비상장" <% if(corpList.get(0).getListed_or_not().equals("비상장")){ %>
                                                            	selected<% } %>>비상장
                                                            </option></select>
                                                        </td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <th colspan="2" class="nostar">영리구분</th>
                                                        <td>
                                                           <select id="tel0" title="지역번호" name="Profit_or_not">
                                                            <option value="영리">영리
                                                            </option><option value="비영리" <% if(corpList.get(0).getProfit_or_not().equals("비영리")){ %>
                                                            	selected<% } %>>비영리
                                                            </option></select>
                                                        </td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <th colspan="2"><span class="star_red">*</span> 사업장명</th>
                                                        <td>
                                                            <input name="Bus_name" required="" <%if(!corpList.get(0).getBus_name().equals("0") && corpList.get(0).getBus_name()!=null){ %>
                                                       	value="<%=corpList.get(0).getBus_name()%>" <% } %>>
                                                        </td>
                                                    </tr>
                                                    
                                                    <tr>
                                                       <th rowspan="3" class="nostar" style="border-right: 1px solid #C3C7CC; padding-left: 5px; padding-right: 10px;">
                                                          작<br>성<br>자
                                                       </th>
                                                       <th class="nostar">
                                                       근무부서
                                                       </th><td>
                                                            <input name="Writer_depertment" required="" <%if(!corpList.get(0).getWriter_depertment().equals("0") && corpList.get(0).getWriter_depertment()!=null){ %>
                                                       	value="<%=corpList.get(0).getWriter_depertment()%>" <% } %>>
                                                        </td>
                                                       
                                                    </tr>
                                                    
                                                    <tr>
                                                        <th><span class="star_red">*</span> 성명</th>
                                                        <td>
                                                          <input name="Writer_name" required="" <%if(!corpList.get(0).getWriter_name().equals("0") && corpList.get(0).getWriter_name()!=null){ %>
                                                       	value="<%=corpList.get(0).getWriter_name()%>" <% } %>>
                                          </td>
                                                    </tr>
                                                    
                                                    
                                                    <tr>
                                                        <th><span class="star_red">*</span> 전화번호</th>
                                                        <td>
                                                            <input title="전화번호" id="tel1" name="Writer_phonenum1" type="text" size="4" maxlength="4" isonlynum="Y" urequired="[전화번호]" uminlen="2" required=""
                                                            <%if(!writerphone[0].equals("0") && writerphone[0]!=null){ %>
                                                       			value="<%=writerphone[0]%>" <% } %>
                                                            >
                                                            -
                                                            <input title="전화번호" id="tel1" name="Writer_phonenum2" type="text" size="4" maxlength="4" isonlynum="Y" urequired="[전화번호]" uminlen="3" required=""
                                                            <%if(!writerphone[1].equals("0") && writerphone[1]!=null){ %>
                                                       			value="<%=writerphone[1]%>" <% } %>
                                                       		>
                                                            -
                                                            <input title="전화번호" id="tel2" name="Writer_phonenum3" type="text" size="4" maxlength="4" isonlynum="Y" urequired="[전화번호]" uminlen="4" required=""
                                                            <%if(!writerphone[2].equals("0") && writerphone[2]!=null){ %>
                                                       			value="<%=writerphone[2]%>" <% } %>
                                                            >
                                                        </td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <th colspan="2"><span class="star_red">*</span> 지점유무</th>
                                                        <td>
                                                        <% if(corpList.get(0).getHas_place().equals("0")){ %>
                                                        <input type="radio" id="emailYn" name="Has_place" value="0" class="input_w" checked>
                                                            없음
                                                        <input type="radio" id="emailYn" name="Has_place" value="1" class="input_w">
                                                            있음
                                                        <% } %>
                                                        <% if(corpList.get(0).getHas_place().equals("1")){ %>
                                                        <input type="radio" id="emailYn" name="Has_place" value="0" class="input_w">
                                                            없음
                                                        <input type="radio" id="emailYn" name="Has_place" value="1" class="input_w" checked>
                                                            있음
                                                        <% } %>
                                          </td>
                                                    </tr>
                                                    
                                                    
                                                    <tr>
                                                        <th colspan="2"><span class="star_red">*</span> 분할/합병 여부 확인</th>
                                                        <td>
                                                        <% if(corpList.get(0).getDivision_or_merge().equals("0")){ %>
                                                           <input type="radio" id="emailYn" name="Division_or_merge" value="0" class="input_w" checked>
                                                            해당없음
                                                            <input type="radio" id="emailYn" name="Division_or_merge" value="1" class="input_w">
                                                            분할
                                                            <input type="radio" id="emailYn" name="Division_or_merge" value="2" class="input_w">
                                                            합병
                                                       	<% } %>
                                                       	<% if(corpList.get(0).getDivision_or_merge().equals("1")){ %>
                                                           <input type="radio" id="emailYn" name="Division_or_merge" value="0" class="input_w">
                                                            해당없음
                                                            <input type="radio" id="emailYn" name="Division_or_merge" value="1" class="input_w" checked>
                                                            분할
                                                            <input type="radio" id="emailYn" name="Division_or_merge" value="2" class="input_w">
                                                            합병
                                                       	<% } %>
                                                       	<% if(corpList.get(0).getDivision_or_merge().equals("2")){ %>
                                                           <input type="radio" id="emailYn" name="Division_or_merge" value="0" class="input_w">
                                                            해당없음
                                                            <input type="radio" id="emailYn" name="Division_or_merge" value="1" class="input_w">
                                                            분할
                                                            <input type="radio" id="emailYn" name="Division_or_merge" value="2" class="input_w" checked>
                                                            합병
                                                       	<% } %>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                       </table>
                                       <div class="btn">
											<input type="button" onclick="doWrite('action/corpstat_action.jsp')" value="저장"
												class=" left">
											<input type="button" onclick="movePage('views/fr_corpstat.jsp')" value="취소" class=" left">
											<% if(corpList != null) { if(!corpList.get(0).getIncorporated_or_not().equals("0")){ %>
                  							<input type="button" onclick="movePage('views/fr_compstat_write.jsp')" value="사업장현황작성" class=" left">
                  							<% } else{ %>
                  							<input type="button" onclick="alert('법인 정보를 작성해주세요.')" value="사업장현황작성" class=" left">
                  							<% }} %>
										</div>
                                       </form>
                </div>
                                     
                </div>
            </div>
    <div class="footer" id="footer"></div>
</body>

</html>