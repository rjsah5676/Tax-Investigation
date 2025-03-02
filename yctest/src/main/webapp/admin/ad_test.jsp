<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <% String cur_path = request.getContextPath(); 
      %>
   <form action = "<%=cur_path %>/action/company_action.jsp" method="post">
   		<input type="text" name="Cor_Reg_Number" />
      <input type="text" name="Prv_cor_ornot" />
      <input type="text" name="Prv_id" />
      <input type="text" name="Prv_passw" />
      <input type="text" name="Prv_company_name" />
      <input type="text" name="Prv_company_reg_num" />
      <input type="text" name="Prv_cor_repre" />
      <input type="text" name="Prv_detail_addr" />
      <input type="text" name="Prv_email" />
      <input type="text" name="Prv_phonenum" />
      <input type="text" name="Prv_mphonenum" />
      <input type="text" name="Prv_manager" />
      <input type="text" name="Prv_email_recep" />
      <input type="text" name="agent_yesno" />
      <input type="submit" value="제출" />
   </form>
</body>
</html>