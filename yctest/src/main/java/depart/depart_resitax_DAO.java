package depart;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import local.localtax_special_VO;
import util.DatabaseUtil;
import java.sql.Date;

public class depart_resitax_DAO {
	static Connection conn = DatabaseUtil.getConnection();
	public static int join(String Cor_Reg_Number, String Cor_Name, String Jurisdic,
			String Sur_year, String Invest_pp,
			String Business_Select, Date Business_year,
			String Business_name, String Bus_name,
			int Earned_Income, int Taxfree_Income,
			int Employee, int Assessment_Standard,
			Date Salary_Date, int Calculated_Tax_Amount,
			int Prep_Tax, Date Pay_Date
			) {
		
		String SQL = "INSERT INTO depart_resitax VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try { 
			long m = System.currentTimeMillis();
			Date nowDate = new Date(00000000);
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, Cor_Reg_Number);
			pstmt.setString(2, Cor_Name);
			pstmt.setString(3, Jurisdic);
			pstmt.setString(4, Sur_year);
			pstmt.setString(5, Invest_pp);
			pstmt.setString(6, Business_Select);
			pstmt.setDate(7, (java.sql.Date) Business_year);
			pstmt.setString(8, Business_name);
			pstmt.setString(9, Bus_name);
			pstmt.setInt(10, Earned_Income);
			pstmt.setInt(11, Taxfree_Income);
			pstmt.setInt(12, Employee);
			pstmt.setInt(13, Assessment_Standard);
			pstmt.setDate(14, (java.sql.Date) Salary_Date);
			pstmt.setInt(15, Calculated_Tax_Amount);
			pstmt.setInt(16, Prep_Tax);
			pstmt.setDate(17, (java.sql.Date) Pay_Date);
			pstmt.setDate(18, (java.sql.Date) nowDate);
			return pstmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return -1; 
		}
	public static int update(String Cor_Reg_Number, String Cor_Name, String Jurisdic,
			String Sur_year, String Invest_pp,
			String Business_Select, Date Business_year,
			String Business_name, String Bus_name,
			int Earned_Income, int Taxfree_Income,
			int Employee, int Assessment_Standard,
			Date Salary_Date, int Calculated_Tax_Amount,
			int Prep_Tax, Date Pay_Date
			) {
		
		String SQL_update = "UPDATE depart_resitax SET Cor_Name=?, Jurisdic=?, Sur_year=?, Invest_pp=?, Business_Select=?, Business_year=?, Business_name=?, Bus_name=?, Earned_Income=?, "
				+ "Taxfree_Income=?, Employee=?, Assessment_Standard=?, Salary_Date=?, Calculated_Tax_Amount=?, Prep_Tax=?, Pay_Date=?, Report_Date=? WHERE Cor_Reg_Number=?";
		try { 
			long m = System.currentTimeMillis();
			Date nowDate = new Date(m);
			PreparedStatement pstmt = conn.prepareStatement(SQL_update);
			pstmt.setString(1, Cor_Name);
			pstmt.setString(2, Jurisdic);
			pstmt.setString(3, Sur_year);
			pstmt.setString(4, Invest_pp);
			pstmt.setString(5, Business_Select);
			pstmt.setDate(6, (java.sql.Date) Business_year);
			pstmt.setString(7, Business_name);
			pstmt.setString(8, Bus_name);
			pstmt.setInt(9, Earned_Income);
			pstmt.setInt(10, Taxfree_Income);
			pstmt.setInt(11, Employee);
			pstmt.setInt(12, Assessment_Standard);
			pstmt.setDate(13, (java.sql.Date) Salary_Date);
			pstmt.setInt(14, Calculated_Tax_Amount);
			pstmt.setInt(15, Prep_Tax);
			pstmt.setDate(16, (java.sql.Date) Pay_Date);
			pstmt.setDate(17, (java.sql.Date) nowDate);
			pstmt.setString(18, Cor_Reg_Number);
			return pstmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return -1; 
		}
	public static ArrayList<depart_resitax_VO> getList(String Cor_Reg_Number) {
		ResultSet rs = null;
		String sql = "SELECT * FROM depart_resitax WHERE Cor_Reg_Number=?";
		ArrayList<depart_resitax_VO> list = new ArrayList<depart_resitax_VO>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Cor_Reg_Number);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				depart_resitax_VO inp = new depart_resitax_VO();
				inp.setCor_Name(rs.getString(2));
				inp.setJurisdic(rs.getString(3));
				inp.setSur_year(rs.getString(4));
				inp.setInvest_pp(rs.getString(5));
				inp.setBusiness_Select(rs.getString(6));
				inp.setBusiness_year(rs.getDate(7));
				inp.setBusiness_name(rs.getString(8));
				inp.setBus_name(rs.getString(9));
				inp.setEarned_Income(rs.getInt(10));
				inp.setTaxfree_Income(rs.getInt(11));
				inp.setEmployee(rs.getInt(12));
				inp.setAssessment_Standard(rs.getInt(13));
				inp.setSalary_Date(rs.getDate(14));
				inp.setCalculated_Tax_Amount(rs.getInt(15));
				inp.setPrep_Tax(rs.getInt(16));
				inp.setPay_Date(rs.getDate(17));
				list.add(inp);
				rs.close();
				return list;
			}	
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null; 
	}
	}
