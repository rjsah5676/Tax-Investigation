package compstat;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import corpstat.corpstat_VO;
import util.DatabaseUtil;
import java.sql.Date;

public class compstat_DAO {
	static Connection conn = DatabaseUtil.getConnection();
	public static int join(String Cor_Reg_Number, String Cs_office_exist, String Cs_company_reg_num,
			String Cs_company_name , String Cs_detail_addr,
			String Cs_phonenum, Date Cs_first_set,
			Date Cs_regist_date, Date Cs_registerd_date,
			String Cs_possession, int Cs_land_area,
			int Cs_building_area, int Cs_num_people, int Cs_over_building_size, int Cs_over_people
			) {
		String SQL = "INSERT INTO company_status VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, Cor_Reg_Number);
			pstmt.setString(2, Cs_office_exist);
			pstmt.setString(3, Cs_company_reg_num);
			pstmt.setString(4, Cs_company_name);
			pstmt.setString(5, Cs_detail_addr);
			pstmt.setString(6, Cs_phonenum);
			pstmt.setDate(7, (java.sql.Date) Cs_first_set);
			pstmt.setDate(8, (java.sql.Date) Cs_regist_date);
			pstmt.setDate(9, (java.sql.Date) Cs_registerd_date);
			pstmt.setString(10, Cs_possession);
			pstmt.setInt(11, Cs_land_area);
			pstmt.setInt(12, Cs_building_area);
			pstmt.setInt(13, Cs_num_people);
			pstmt.setInt(14, Cs_over_building_size);
			pstmt.setInt(15, Cs_over_people);
			return pstmt.executeUpdate(); 
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public static int search(String Cs_company_reg_num
			) {
		ResultSet rs=null;
		String SQL_search = "SELECT * FROM company_status WHERE Cs_company_reg_num=?";
		try { 
			PreparedStatement pstmt = conn.prepareStatement(SQL_search);
			pstmt.setString(1, Cs_company_reg_num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return 0;
			}
			return 1;
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return -1; 
		}
	public static ArrayList<compstat_VO> getList(String Cor_Reg_Number) {
		ResultSet rs = null;
		String sql = "SELECT * FROM company_status WHERE Cor_Reg_Number=?";
		ArrayList<compstat_VO> list = new ArrayList<compstat_VO>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Cor_Reg_Number);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				compstat_VO inp = new compstat_VO();
				inp.setCs_office_exist(rs.getString(2));
				inp.setCs_company_reg_num(rs.getString(3));
				inp.setCs_company_name(rs.getString(4));
				inp.setCs_num_people(rs.getInt(13));
				list.add(inp);
			}
			rs.close();
			return list;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null; 
	}
	public static ArrayList<compstat_VO> getListByCompNum(String Cs_company_reg_num) {
		ResultSet rs = null;
		String sql = "SELECT * FROM company_status WHERE Cs_company_reg_num=?";
		ArrayList<compstat_VO> list = new ArrayList<compstat_VO>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Cs_company_reg_num);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				compstat_VO inp = new compstat_VO();
				inp.setCs_office_exist(rs.getString(2));
				inp.setCs_company_reg_num(rs.getString(3));
				inp.setCs_company_name(rs.getString(4));
				inp.setCs_num_people(rs.getInt(13));
				list.add(inp);
			}
			rs.close();
			return list;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null; 
	}
}
