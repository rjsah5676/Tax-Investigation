package prep;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import util.DatabaseUtil;
import java.sql.Date;

public class prep_DAO {
	static Connection conn = DatabaseUtil.getConnection();
	public static ArrayList<String> search(String Cor_Reg_Number
			) {
		
		ResultSet rs=null;
		ArrayList<String> ret = new ArrayList<String>();
		String sql = "SELECT * FROM company_table WHERE Cor_Reg_Number=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Cor_Reg_Number);
			rs = pstmt.executeQuery();
			while(rs.next()) {
			String inp1 = rs.getString(8);
			//SimpleDateFormat fmt=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
			//String inp2=fmt.format(rs.getDate(2));
            ret.add(inp1);
			}
			return ret;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
		
		}
	public static int join(String Cor_Reg_Number, String Prep_addr, String Prep_Tax_List,
			String Prep_Taxable_Obj, String Prep_Cause_Tax,
			Date Prep_Regist_Date, String Prep_Tax_Amount,
			String Prep_Penalty_No_Report, String Prep_Penalty_No_Pay,
			String Prep_Sum) {
		String SQL = "INSERT INTO prep_tax VALUES (?,?,?,?,?,?,?,?,?,?)";
		try { 
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, Cor_Reg_Number);
			pstmt.setString(2, Prep_addr);
			pstmt.setString(3, Prep_Tax_List);
			pstmt.setString(4, Prep_Taxable_Obj);
			pstmt.setString(5, Prep_Cause_Tax);
			pstmt.setDate(6, (java.sql.Date) Prep_Regist_Date);
			pstmt.setString(7, Prep_Tax_Amount);
			pstmt.setString(8, Prep_Penalty_No_Report);
			pstmt.setString(9, Prep_Penalty_No_Pay);
			pstmt.setString(10, Prep_Sum);
			
			return pstmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return -1;	
	}
	}
