package local_prep;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import util.DatabaseUtil;
import java.sql.Date;

public class local_prep_DAO {
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
			String inp1 = rs.getString(7);
			String inp2 = rs.getString(6);
            ret.add(inp1);
            ret.add(inp2);
			}
			return ret;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
		
		}
	public static int join(String Cor_Reg_Number,String Lp_Name,String Lp_cor_repre,
			String Lp_company_reg_num, String Lp_Prep_Tax_List,
			String Lp_Taxable_Obj, String Lp_Tax_Reason,
			Date Lp_Get_Date, String Lp_Tax_Standard,
			String Lp_Prep_Tax_Rate, String Lp_Tax_Schedule, String Lp_Real_Tax,
			String Lp_No_Report, String Lp_insincerity, String Lp_Sum,
			String Lp_Prep_Law, String Lp_Penalty_Tax_List, String Lp_Penalty_Division,
			String Lp_Target_Price, String Lp_Penalty_Tax_Rate, String Lp_Reduction_Price,
			String Lp_Penalty_Price, String Lp_Penalty_Law, String Lp_File_Name, String Lp_File_Path) {
		String SQL = "INSERT INTO local_prep_tax VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try { 
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, Cor_Reg_Number);
			pstmt.setString(2, Lp_Name);
			pstmt.setString(3, Lp_cor_repre);
			pstmt.setString(4, Lp_company_reg_num);
			pstmt.setString(5, Lp_Prep_Tax_List);
			pstmt.setString(6, Lp_Taxable_Obj);
			pstmt.setString(7, Lp_Tax_Reason);
			pstmt.setDate(8, (java.sql.Date) Lp_Get_Date);
			pstmt.setString(9, Lp_Tax_Standard);
			pstmt.setString(10, Lp_Prep_Tax_Rate);
			pstmt.setString(11, Lp_Tax_Schedule);
			pstmt.setString(12, Lp_Real_Tax);
			pstmt.setString(13, Lp_No_Report);
			pstmt.setString(14, Lp_insincerity);
			pstmt.setString(15, Lp_Sum);
			pstmt.setString(16, Lp_Prep_Law);
			pstmt.setString(17, Lp_Penalty_Tax_List);
			pstmt.setString(18, Lp_Penalty_Division);
			pstmt.setString(19, Lp_Target_Price);
			pstmt.setString(20, Lp_Penalty_Tax_Rate);
			pstmt.setString(21, Lp_Reduction_Price);
			pstmt.setString(22, Lp_Penalty_Price);
			pstmt.setString(23, Lp_Penalty_Law);
			pstmt.setString(24, Lp_File_Name);
			pstmt.setString(25, Lp_File_Path);		
			
			return pstmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return -1;	
	}
	}
