package manage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import util.DatabaseUtil;
import java.sql.Date;

public class manage_info_DAO {
	static Connection conn = DatabaseUtil.getConnection();
	public static int update(String Cor_Reg_Number_change, String Prv_company_name,
			String Prv_passw, String Cor_Reg_Number,
			String Prv_company_reg_num, String Prv_cor_repre,
			String Prv_detail_addr, String Prv_email,
			String Prv_phonenum, String Prv_mphonenum,
			String Prv_manager, String Prv_email_recep
			) {
		
		String SQL_update = "UPDATE company_table SET Cor_Reg_Number=?, Prv_company_name=?, Prv_passw=?, Prv_company_reg_num=?, Prv_cor_repre=?, Prv_detail_addr=?, Prv_email=?, Prv_phonenum=?, Prv_mphonenum=?, "
				+ "Prv_manager=?, Prv_email_recep=? WHERE Cor_Reg_Number=?";
		try { 
			PreparedStatement pstmt = conn.prepareStatement(SQL_update);
			pstmt.setString(1, Cor_Reg_Number_change);
			pstmt.setString(2, Prv_company_name);
			pstmt.setString(3, Prv_passw);
			pstmt.setString(4, Prv_company_reg_num);
			pstmt.setString(5, Prv_cor_repre);
			pstmt.setString(6, Prv_detail_addr);
			pstmt.setString(7, Prv_email);
			pstmt.setString(8, Prv_phonenum);
			pstmt.setString(9, Prv_mphonenum);
			pstmt.setString(10, Prv_manager);
			pstmt.setString(11, Prv_email_recep);
			pstmt.setString(12, Cor_Reg_Number);
			
			return pstmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return -1; 
		}
	}
