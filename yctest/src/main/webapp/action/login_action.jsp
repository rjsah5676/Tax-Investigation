<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="util.DatabaseUtil"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE>
<html>
    <head>
    <meta charset="UTF-8">
    </head>
<body>
<%
String userId = "";
String userPw = "";
if(request.getParameter("userId") == ""){ 
	%>
     <script>
     alert("아이디를 입력해주세요.");
 	 history.back();
	 </script>
    <%
    }
else if(request.getParameter("userPw") == ""){ 
%>
     <script>
     alert("비밀번호를 입력해주세요.");
 	 history.back();
	 </script>
    <%
    }
else{
	userId = request.getParameter("userId"); //ID값 가져옴
	userPw = request.getParameter("userPw"); //PW값 가져옴
	Connection conn = DatabaseUtil.getConnection();
	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery("select * from company_table where Prv_id = '" + userId + "' AND Prv_passw ='" + userPw + "'");
	Boolean check = false;
	while(rs.next()) // 결과값을 하나씩 가져와서 저장하기 위한 while문
    {
		String id = rs.getString(1); //DB에 있는 ID가져옴
    	String lv = rs.getString(2); // 사용제 레벨 가져옴(필수 아님)
    	String cor_reg_num = rs.getString(1);  //법인번호 가져옴
    	session.setAttribute("userId", userId); //DB값을 세션에 넣음 */
    	session.setAttribute("Cor_Reg_Number", cor_reg_num);
		check = true;	
    }
	if(check){ //ID,PW가 DB에 존재하는 경우 게시판으로 이동하는 코드 
    	        rs.close();
    	    	conn.close();
    	    	pageContext.forward("../index.jsp");
		}   else  { //ID,PW가 일치하지 않는 경우
        %>
     <script>
     alert("아이디나 비밀번호를 확인해주세요.");
 	 history.back();
	 </script>
    <%    }
   } %>
</html>