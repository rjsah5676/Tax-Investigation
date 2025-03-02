package manage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import util.DatabaseUtil;
import java.sql.Date;

public class delete_member_DAO {
	static Connection conn = DatabaseUtil.getConnection();
	public static int delete(
			String Prv_company_reg_num
			) {
		
		String SQL_update = "DELETE FROM company_table WHERE Prv_company_reg_num=?";
		try { 
			PreparedStatement pstmt = conn.prepareStatement(SQL_update);
			pstmt.setString(1, Prv_company_reg_num);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return -1; 
		}
	}
