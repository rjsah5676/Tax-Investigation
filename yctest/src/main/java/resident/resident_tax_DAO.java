package resident;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import depart.depart_resitax_VO;
import util.DatabaseUtil;
import java.sql.Date;

public class resident_tax_DAO {
	static Connection conn = DatabaseUtil.getConnection();
	public static int join(String Cor_Reg_Number, String Bus_name, String Location,
			Date Business_startdate, Date Business_year,
			float Storyarea , float Dormitory,
			float Cafeteria, float Etc,
			float Taxablearea, int Justifiable_tax,
			int Prep_tax, Date Pay_Date,
			int Borrowing_tax
			) {
		
		String SQL = "INSERT INTO resident_tax VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try { 
			long m = System.currentTimeMillis();
			Date nowDate = new Date(00000000);
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, Cor_Reg_Number);
			pstmt.setString(2, Bus_name);
			pstmt.setString(3, Location);
			pstmt.setDate(4, (java.sql.Date) Business_startdate);
			pstmt.setDate(5, (java.sql.Date) Business_year);
			pstmt.setFloat(6, Storyarea );
			pstmt.setFloat(7, Dormitory);
			pstmt.setFloat(8, Cafeteria);
			pstmt.setFloat(9, Etc);
			pstmt.setFloat(10, Taxablearea);
			pstmt.setInt(11, Justifiable_tax);
			pstmt.setInt(12, Prep_tax);
			pstmt.setDate(13, (java.sql.Date) Pay_Date);
			pstmt.setInt(14, Borrowing_tax);
			pstmt.setDate(15, (java.sql.Date) nowDate);
			return pstmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return -1; 
		}
		public static int update(String Cor_Reg_Number, String Bus_name, String Location,
			Date Business_startdate, Date Business_year,
			float Storyarea , float Dormitory,
			float Cafeteria, float Etc,
			float Taxablearea, int Justifiable_tax,
			int Prep_tax, Date Pay_Date,
			int Borrowing_tax
			) {
		
		String SQL_update = "UPDATE resident_tax SET Bus_name=?, Location=?, Business_startdate=?, Business_year=?, Storyarea=?, Dormitory=?, Cafeteria=?, Etc=?, Taxablearea=?, "
				+ "Justifiable_tax=?, Prep_tax=?, Pay_date=?, Borrowing_tax=?, Report_Date=? WHERE Cor_Reg_Number=?";
		try { 
			long m = System.currentTimeMillis();
			Date nowDate = new Date(m);
			PreparedStatement pstmt = conn.prepareStatement(SQL_update);
			pstmt.setString(1, Bus_name);
			pstmt.setString(2, Location);
			pstmt.setDate(3, (java.sql.Date) Business_startdate);
			pstmt.setDate(4, (java.sql.Date) Business_year);
			pstmt.setFloat(5, Storyarea );
			pstmt.setFloat(6, Dormitory);
			pstmt.setFloat(7, Cafeteria);
			pstmt.setFloat(8, Etc);
			pstmt.setFloat(9, Taxablearea);
			pstmt.setInt(10, Justifiable_tax);
			pstmt.setInt(11, Prep_tax);
			pstmt.setDate(12, (java.sql.Date) Pay_Date);
			pstmt.setInt(13, Borrowing_tax);
			pstmt.setDate(14, (java.sql.Date) nowDate);
			pstmt.setString(15, Cor_Reg_Number);
			return pstmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return -1; 
		}
		public static ArrayList<resident_tax_VO> getList(String Cor_Reg_Number) {
			ResultSet rs = null;
			String sql = "SELECT * FROM resident_tax WHERE Cor_Reg_Number=?";
			ArrayList<resident_tax_VO> list = new ArrayList<resident_tax_VO>();
			try {
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, Cor_Reg_Number);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					resident_tax_VO inp = new resident_tax_VO();
					inp.setBus_name(rs.getString(2));
					inp.setLocation(rs.getString(3));
					inp.setBusiness_startdate(rs.getDate(4));
					inp.setBusiness_year(rs.getDate(5));
					inp.setStoryarea(rs.getFloat(6));
					inp.setDormitory(rs.getFloat(7));
					inp.setCafeteria(rs.getFloat(8));
					inp.setEtc(rs.getFloat(9));
					inp.setTaxablearea(rs.getFloat(10));
					inp.setJustifiable_tax(rs.getInt(11));
					inp.setPrep_tax(rs.getInt(12));
					inp.setPay_Date(rs.getDate(13));
					inp.setBorrowing_tax(rs.getInt(14));
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
