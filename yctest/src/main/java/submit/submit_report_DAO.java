package submit;

import java.sql.Connection;
import java.sql.PreparedStatement;
import util.DatabaseUtil;
import java.sql.Date;

public class submit_report_DAO {
	static Connection conn = DatabaseUtil.getConnection();
	public static int join(String Cor_Reg_Number, String Jurisdic, Date Survey_year,
			int Survey_bzperiod, String Cor_infor,
			int Submit_declaration , String Division,
			String Company_name, String Company_Reg_num,
			Date Last_modidate, int File_num,
			String Cor_name, String Format_class,
			String File_name, String Remark
			) {
		
		String SQL = "INSERT INTO submit_report VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try { 
			long m = System.currentTimeMillis();
			Date nowDate = new Date(00000000);
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, Cor_Reg_Number);
			pstmt.setString(2, Jurisdic);
			pstmt.setDate(3, (java.sql.Date) Survey_year);
			pstmt.setInt(4, Survey_bzperiod);
			pstmt.setString(5, Cor_infor);
			pstmt.setInt(6, Submit_declaration);
			pstmt.setString(7, Division);
			pstmt.setString(8, Company_name);
			pstmt.setString(9, Company_Reg_num);
			pstmt.setDate(10, (java.sql.Date) Last_modidate);
			pstmt.setInt(11, File_num);
			pstmt.setString(12, Cor_name);
			pstmt.setString(13, Format_class);
			pstmt.setString(14, File_name);
			pstmt.setString(15, Remark);
			pstmt.setDate(16, (java.sql.Date) nowDate);
			return pstmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return -1; 
		}
	public static int update(String Cor_Reg_Number, String Jurisdic, Date Survey_year,
			int Survey_bzperiod, String Cor_infor,
			int Submit_declaration , String Division,
			String Company_name, String Company_Reg_num,
			Date Last_modidate, int File_num,
			String Cor_name, String Format_class,
			String File_name, String Remark
			) {
		
		String SQL_update = "UPDATE submit_report SET Jurisdic=?, Survey_year=?, Survey_bzperiod=?, Cor_infor=?, Submit_declaration=?, Division=?, Company_name=?, Company_Reg_num=?, Last_modidate=?, "
				+ "File_num=?, Cor_name=?, Format_class=?, File_name=?, Remark=?, Report_Date=? WHERE Cor_Reg_Number=?";
		try { 
			long m = System.currentTimeMillis();
			Date nowDate = new Date(m);
			PreparedStatement pstmt = conn.prepareStatement(SQL_update);
			pstmt.setString(1, Jurisdic);
			pstmt.setDate(2, (java.sql.Date) Survey_year);
			pstmt.setInt(3, Survey_bzperiod);
			pstmt.setString(4, Cor_infor);
			pstmt.setInt(5, Submit_declaration);
			pstmt.setString(6, Division);
			pstmt.setString(7, Company_name);
			pstmt.setString(8, Company_Reg_num);
			pstmt.setDate(9, (java.sql.Date) Last_modidate);
			pstmt.setInt(10, File_num);
			pstmt.setString(11, Cor_name);
			pstmt.setString(12, Format_class);
			pstmt.setString(13, File_name);
			pstmt.setString(14, Remark);
			pstmt.setDate(15, (java.sql.Date) nowDate);
			pstmt.setString(16, Cor_Reg_Number);
			return pstmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return -1; 
		}
	}
