package aud;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import util.DatabaseUtil;
import java.sql.Date;

public class aud_DAO {
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
			String inp2 = rs.getString(7);
			String inp3 = rs.getString(10);
			//SimpleDateFormat fmt=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
			//String inp2=fmt.format(rs.getDate(2));
            ret.add(inp1);
            ret.add(inp2);
            ret.add(inp3);
			}
			return ret;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
		
		}
	public static int join(String Cor_Reg_Number, String Aud_Name, String Aud_cor_repre,
			String Aud_phonenum, String Aud_addr,
			Date Aud_initial_period, Date Aud_real_period,
			String Aud_Tax_List, String Aud_Taxable_Obj,
			String Aud_Cause_Tax, Date Aud_Acq_Date, String Aud_Real_Tax, 
			String Aud_Penalty_No_Report, String Aud_Penalty_No_Pay,
			String Aud_Sum, String Aud_Etc, String Aud_File_Name, String Aud_File_Path) {
		String SQL = "INSERT INTO tax_audit VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try { 
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, Cor_Reg_Number);
			pstmt.setString(2, Aud_Name);
			pstmt.setString(3, Aud_cor_repre);
			pstmt.setString(4, Aud_phonenum);
			pstmt.setString(5, Aud_addr);
			pstmt.setDate(6, (java.sql.Date) Aud_initial_period);
			pstmt.setDate(7, (java.sql.Date) Aud_real_period);
			pstmt.setString(8, Aud_Tax_List);
			pstmt.setString(9, Aud_Taxable_Obj);
			pstmt.setString(10, Aud_Cause_Tax);
			pstmt.setDate(11, (java.sql.Date) Aud_Acq_Date);
			pstmt.setString(12, Aud_Real_Tax);
			pstmt.setString(13, Aud_Penalty_No_Report);
			pstmt.setString(14, Aud_Penalty_No_Pay);
			pstmt.setString(15, Aud_Sum);
			pstmt.setString(16, Aud_Etc);
			pstmt.setString(17, Aud_File_Name);
			pstmt.setString(18, Aud_File_Path);
			
			return pstmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return -1;	
	}
	public static ArrayList<String> print(String Cor_Reg_Number
			) {
		
		ResultSet rs=null;
		ArrayList<String> ret = new ArrayList<String>();
		String sql = "SELECT * FROM tax_audit WHERE Cor_Reg_Number=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Cor_Reg_Number);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				for(int i=2; i<=16;i++) ret.add(rs.getString(i));
			}
			return ret;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
		
		}
	}
