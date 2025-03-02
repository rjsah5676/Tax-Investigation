<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="company.company_table_DAO"%>
<%@ page import="company.companyVO"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
            <meta charset="utf-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <title>법인세무조사 인터넷신고시스템</title>
            <link rel="stylesheet" type="text/css" href="../css/public.css">
            <link rel="stylesheet" type="text/css" href="../css/agent_search.css">
            <link rel="stylesheet" type="text/css" href="../css/investigation.css">
            <script type="text/javascript" src="../js/jquery-1.12.4.min.js"></script>
            <script type="text/javascript" src="../js/public.js"></script>
            <script type="text/javascript">
            	function setParentText(rnum,pname,rname,add,num){
            		opener.document.getElementById("Prv_company_reg_num1").value = rnum.substr(0, 3);
            		opener.document.getElementById("Prv_company_reg_num2").value = rnum.substr(3, 2);
            		opener.document.getElementById("Prv_company_reg_num3").value = rnum.substr(5, 5);
            		opener.document.getElementById("Prv_manager").value = pname;
            		opener.document.getElementById("Prv_company_name").value = rname;
            		opener.document.getElementById("Prv_detail_addr").value = add;
            		opener.document.getElementById("Prv_mphonenum1").value = num.substr(0, 3);
            		opener.document.getElementById("Prv_mphonenum2").value = num.substr(3, 3);
            		opener.document.getElementById("Prv_mphonenum3").value = num.substr(6, 4);
            		window.close();
            	}
            </script>
</head>

<body leftmargin="0" topmargin="0" onload="init_search();">
<% String cur_path = request.getContextPath(); 
		int pageNumber = 1;
		String search_info = "";
		String select_option= "1";
		if(request.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
		if(request.getParameter("search_info") != null) {
			search_info = request.getParameter("search_info");
		}
		if(request.getParameter("select_option") != null) {
			select_option = request.getParameter("select_option");
		}
	%>
<!-- 여기부터 본문을 작성하시오 -->
<table width="100%" height="100%" border="0" cellpadding="10" cellspacing="0" background="../images/agent/bg_blue.gif">
<tr>
<td valign=top><img alt="로고" src="../images/agent/footer_Logo-removebg-preview.png"/><br/>

<!-- 여기부터 정상적(업무로직 정상)인 본문을 작성하시오 -->

<!-- 여기부분이 본문 위치 -->
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr height=10>
			<td width=10><img alt="" src="../images/agent/box_w_left_t.gif" width="12" height="12"/></td>
			<td bgcolor="#FFFFFF"></td>
			<td width=10><img alt="" src="../images/agent/box_w_right_t.gif" width="12" height="12"/></td>
		</tr>
		<tr>
			<td bgcolor="#FFFFFF"></td>
			<td bgcolor="#FFFFFF">

<div name="sendFormFields" id="sendFormFields" style="display:none;"></div>
<table width="100%" border="0" cellspacing="3" cellpadding="0">
	<tr>
		<td class="txt_detail_u">
        	<img alt="대리인검색결과" src="../images/agent/spti_tit_04.gif" width="105" height="15" vspace="3"/>
        </td>
	    <td class="td_l">
	    	<select title="구선택" name="searchSigucd" id="searchSigucd" onchange="callAjax()">
        			<option value="">구선택</option>
				
					<option value="590" 
					 >
						영천시
					</option>					
				
				<option value="999"> 관외 </option>
			</select>
		</td>
		<td class="td_r">
<!-- 		여기 -->
			<form action="<%= cur_path %>/work.jsp" id="search" method="post">
                    	<input type="hidden" name="search_page" value="../views/search_agent.jsp">
                        <select name="select_option">
                            <option value="1">업체명</option>
                            <option value="2">사업자번호</option>
                        </select>
							<input type="text" name= "search_info" id="search_input" onkeydown="if(window.event.keyCode==13){doAction('action/search_action.jsp', 'search');}">
						<input type="button" onclick="doAction('action/search_action.jsp','search')" value="검색">
             </form>
		</td>
	</tr>
</table>    

<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td class="tdo" ></td>
    </tr>
</table>
<div id="loaded">
<table width="100%" border="0" cellspacing="1" cellpadding="0" class="table_gray">
    <tr>
        <td width="40" class="tdo_to_c">No</td>
        <td class="tdo_to_c">업체명</td>
        <td width="60" class="tdo_to_c">대리인명</td>
		<td class="tdo_to_c">사업자등록번호</td>
		<td width="80" class="tdo_to_c">연락처</td>
		<td width="300" class="tdo_to_c">주소</td>
    </tr>
    <%
    company_table_DAO companyDAO = new company_table_DAO();
    ArrayList<companyVO> list = companyDAO.getList(pageNumber, search_info, select_option);
    int tmp = (pageNumber-1)*10 + 1;
    for(int i=0;i<list.size();i++){
	%>

    <tr>
        <td height="23" class="tdw_c"><%= tmp++ %></td>
		<td class="tdw_c">
<!-- 		여기 -->
         	<a onclick="setParentText('<%=list.get(i).getPrv_company_reg_num()%>','<%=list.get(i).getPrv_manager() %>'
         	,'<%=list.get(i).getPrv_company_name() %>','<%=list.get(i).getPrv_detail_addr() %>',
         	'<%=list.get(i).getPrv_mphonenum() %>')"><%=list.get(i).getPrv_company_name() %></a>
		</td>
		<td class="tdw_c"><%=list.get(i).getPrv_manager() %></td>
		<td class="tdw_c"><%=list.get(i).getPrv_company_reg_num() %></td>
		<td class="tdw_c"><%=list.get(i).getPrv_mphonenum() %></td>
		<td class="tdw_c"><%=list.get(i).getPrv_detail_addr() %></td>
		</tr>
		<%
    }
    %>
    <%
    if(tmp==1){
    %>
    <tr>
        <td colspan="7">&nbsp;
            * 검색된 결과가 없습니다.
        </td>
    </tr>
    <%
    }%>
</table>

<div  class="paging">
	<%
						if(pageNumber != 1) {
					%>
					<form action="<%=cur_path %>/work.jsp" name="page<%=pageNumber - 1%>" method="POST" class="page<%=pageNumber - 1%>">
					<input type="hidden" name= "pageNumber" value="<%=pageNumber - 1%>" >
					<input type="hidden" name= "search_info" value="<%=search_info%>" >
					<input type="hidden" name= "select_option" value="<%=select_option%>" >
                	</form>
						<a onclick="subForm('action/agent_page_action.jsp','page<%=pageNumber - 1%>')" style="float:left;">이전</a>
					<%
						} if(companyDAO.nextPage(pageNumber + 1, search_info, select_option)) {
					%>
					<form action="<%=cur_path %>/work.jsp" name="page<%=pageNumber + 1%>" method="POST" class="page<%=pageNumber + 1%>">
					<input type="hidden" name= "pageNumber" value="<%=pageNumber + 1%>" >
					<input type="hidden" name= "search_info" value="<%=search_info%>" >
					<input type="hidden" name= "select_option" value="<%=select_option%>" >
                	</form>
						<a onclick="subForm('action/agent_page_action.jsp','page<%=pageNumber + 1%>')" style="float:left;">다음</a>
					<%
						}
					%>
					</div>
</div>
</form>
			</td>
			<td bgcolor="#FFFFFF"></td>
		</tr>
		<tr height=10>
			<td width=10><img alt="" src="../images/agent/box_w_left_b.gif" width="12" height="12"/></td>
			<td bgcolor="#FFFFFF"></td>
			<td width=10><img alt="" src="../images/agent/box_w_right_b.gif" width="12" height="12"/></td>
		</tr>
		</table>
		<div class="td_butt_r">
			<a href="#" onclick="self.close()"><img alt="닫기" src="../images/agent/btn_close_g.gif"/></a>
		</div>


</td>
</tr>
</table>
</body>
</html>