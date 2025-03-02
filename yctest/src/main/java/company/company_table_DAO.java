package company;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import QnA.qnaVO;

import util.DatabaseUtil;

public class company_table_DAO {
	static Connection conn = DatabaseUtil.getConnection();
	public static int join(String Cor_Reg_Number, String Prv_cor_ornot, String Prv_id,
			String Prv_passw, String Prv_company_name,
			String Prv_company_reg_num, String Prv_cor_repre,
			String Prv_detail_addr, String Prv_email,
			String Prv_phonenum, String Prv_mphonenum,
			String Prv_manager, String Prv_email_recep,
			String Agent_Cor_Reg_Number
			) {
		
		String SQL = "INSERT INTO company_table VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try { 
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, Cor_Reg_Number);
			pstmt.setString(2, Prv_cor_ornot);
			pstmt.setString(3, Prv_id);
			pstmt.setString(4, Prv_passw);
			pstmt.setString(5, Prv_company_name);
			pstmt.setString(6, Prv_company_reg_num);
			pstmt.setString(7, Prv_cor_repre);
			pstmt.setString(8, Prv_detail_addr);
			pstmt.setString(9, Prv_email);
			pstmt.setString(10, Prv_phonenum);
			pstmt.setString(11, Prv_mphonenum);
			pstmt.setString(12, Prv_manager);
			pstmt.setString(13, Prv_email_recep);
			pstmt.setString(14, Agent_Cor_Reg_Number);
			
			return pstmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return -1; 
		}
	public static ArrayList<companyVO> getList(int pageNumber, String search_info, String select_option)  {
		ResultSet rs=null;
		String sql = "";
		if(search_info.equals("")) {
			sql = "select Prv_company_name, Prv_manager, Prv_company_reg_num, Prv_mphonenum, Prv_detail_addr FROM company_table" 
			        + " order by Prv_company_name DESC"
			+ " LIMIT ? OFFSET ?";			
		}
		else if(select_option.equals("1")){
			sql = "select Prv_company_name, Prv_manager, Prv_company_reg_num, Prv_mphonenum, Prv_detail_addr FROM company_table" 
			        + " WHERE Prv_company_name LIKE '%" + search_info +"%' order by Prv_company_name DESC"
			+ " LIMIT ? OFFSET ?";
		}
		else if(select_option.equals("2")){
			sql = "select Prv_company_name, Prv_manager, Prv_company_reg_num, Prv_mphonenum, Prv_detail_addr FROM company_table" 
			        + " WHERE Prv_company_reg_num LIKE '%" + search_info +"%' order by Prv_company_name DESC"
			+ " LIMIT ? OFFSET ?";
		}
		ArrayList<companyVO> list = new ArrayList<companyVO>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, pageNumber * 10);
			pstmt.setInt(1, 10);
			pstmt.setInt(2, pageNumber * 10 - 10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				companyVO inp = new companyVO();
				inp.setPrv_company_name(rs.getString(1));
				inp.setPrv_manager(rs.getString(2));
				inp.setPrv_company_reg_num(rs.getString(3));
				inp.setPrv_mphonenum(rs.getString(4));
				inp.setPrv_detail_addr(rs.getString(5));
				list.add(inp);
			}
			rs.close();
			return list; 
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null; 
	}
	public boolean nextPage(int pageNumber, String search_info, String select_option) {
		ResultSet rs=null;
		String sql="";
		if(search_info.equals("")) {
			sql = "select Prv_company_name, Prv_manager, Prv_company_reg_num, Prv_mphonenum, Prv_detail_addr FROM company_table" 
			        + " order by Prv_company_name DESC"
			+ " LIMIT ? OFFSET ?";			
		}
		else if(select_option.equals("1")){
			sql = "select Prv_company_name, Prv_manager, Prv_company_reg_num, Prv_mphonenum, Prv_detail_addr FROM company_table" 
			        + " WHERE Prv_company_name LIKE '%" + search_info +"%' order by Prv_company_name DESC"
			+ " LIMIT ? OFFSET ?";
		}
		else if(select_option.equals("2")){
			sql = "select Prv_company_name, Prv_manager, Prv_company_reg_num, Prv_mphonenum, Prv_detail_addr FROM company_table" 
			        + " WHERE Prv_company_reg_num LIKE '%" + search_info +"%' order by Prv_company_name DESC"
			+ " LIMIT ? OFFSET ?";
		}
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, pageNumber * 10);
			pstmt.setInt(1, 10);
			pstmt.setInt(2, pageNumber * 10 - 10);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return true;
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public static ArrayList<companyVO> getUserList(int pageNumber, String search_info, String select_option)  {
		ResultSet rs=null;
		String sql = "";
		if(search_info.equals("")) {
			sql = "select * FROM company_table" 
			        + " order by Cor_Reg_Number ASC"
			+ " LIMIT ? OFFSET ?";			
		}
		else if(select_option.equals("1")){
			sql = "select * FROM company_table" 
			        + " WHERE Cor_Reg_Number LIKE '%" + search_info +"%' order by Cor_Reg_Number ASC"
			+ " LIMIT ? OFFSET ?";
		}
		else if(select_option.equals("2")){
			sql = "select * FROM company_table" 
			        + " WHERE Prv_id LIKE '%" + search_info +"%' order by Cor_Reg_Number ASC"
			+ " LIMIT ? OFFSET ?";
		}
		ArrayList<companyVO> list = new ArrayList<companyVO>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, pageNumber * 10);
			pstmt.setInt(1, 10);
			pstmt.setInt(2, pageNumber * 10 - 10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				companyVO inp = new companyVO();
				inp.setCor_Reg_Number(rs.getString(1));
				inp.setPrv_cor_ornot(rs.getString(2));
				inp.setPrv_id(rs.getString(3));
				inp.setPrv_passw(rs.getString(4));
				inp.setPrv_company_name(rs.getString(5));
				inp.setPrv_company_reg_num(rs.getString(6));
				inp.setPrv_cor_repre(rs.getString(7));
				inp.setPrv_detail_addr(rs.getString(8));
				inp.setPrv_email(rs.getString(9));
				inp.setPrv_phonenum(rs.getString(10));
				inp.setPrv_mphonenum(rs.getString(11));
				inp.setPrv_manager(rs.getString(12));
				inp.setPrv_email_recep(rs.getString(13));
				inp.setAgent_Cor_Reg_Number(rs.getString(14));
				list.add(inp);
			}
			rs.close();
			return list; 
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null; 
	}
	public boolean nextUserPage(int pageNumber, String search_info, String select_option) {
		ResultSet rs=null;
		String sql="";
		if(search_info.equals("")) {
			sql = "select * FROM company_table" 
			        + " order by Cor_Reg_Number ASC"
			+ " LIMIT ? OFFSET ?";			
		}
		else if(select_option.equals("1")){
			sql = "select * FROM company_table" 
			        + " WHERE Cor_Reg_Number LIKE '%" + search_info +"%' order by Cor_Reg_Number ASC"
			+ " LIMIT ? OFFSET ?";
		}
		else if(select_option.equals("2")){
			sql = "select * FROM company_table" 
			        + " WHERE Prv_id LIKE '%" + search_info +"%' order by Cor_Reg_Number ASC"
			+ " LIMIT ? OFFSET ?";
		}
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, pageNumber * 10);
			pstmt.setInt(1, 10);
			pstmt.setInt(2, pageNumber * 10 - 10);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return true;
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public String findId(String Prv_id) {
		ResultSet rs=null;
		String sql="SELECT Cor_Reg_Number FROM company_table WHERE Prv_id='"+Prv_id+"'";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				return rs.getString(1);
			}
	}catch(Exception e) {
		e.printStackTrace();
	}
	return null;
}
	public static companyVO loadbyCor(String Cor_Reg_Number) {
		ResultSet rs=null;
		String sql="SELECT * FROM company_table WHERE Cor_Reg_Number='"+Cor_Reg_Number+"'";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				companyVO ret = new companyVO();
				ret.setCor_Reg_Number(rs.getString(1));
				ret.setPrv_cor_ornot(rs.getString(2));
				ret.setPrv_id(rs.getString(3));
				ret.setPrv_passw(rs.getString(4));
				ret.setPrv_company_name(rs.getString(5));
				ret.setPrv_company_reg_num(rs.getString(6));
				ret.setPrv_cor_repre(rs.getString(7));
				ret.setPrv_detail_addr(rs.getString(8));
				ret.setPrv_email(rs.getString(9));
				ret.setPrv_phonenum(rs.getString(10));
				ret.setPrv_mphonenum(rs.getString(11));
				ret.setPrv_manager(rs.getString(12));
				ret.setPrv_email_recep(rs.getString(13));
				ret.setAgent_Cor_Reg_Number(rs.getString(14));
				return ret;
			}
	}catch(Exception e) {
		e.printStackTrace();
	}
	return null;
	}
	public companyVO loadList(String Prv_company_reg_num) {
		ResultSet rs=null;
		String sql="SELECT Prv_company_reg_num,Prv_company_name,Prv_detail_addr FROM company_table WHERE Prv_company_reg_num='"+Prv_company_reg_num+"'";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				companyVO ret = new companyVO();
				ret.setPrv_company_reg_num(rs.getString(1));
				ret.setPrv_company_name(rs.getString(2));
				ret.setPrv_detail_addr(rs.getString(3));
				return ret;
			}
	}catch(Exception e) {
		e.printStackTrace();
	}
	return null;
	}
	public int delete(String Cor_Reg_Number) {
		String SQL = "DELETE FROM company_table WHERE Cor_Reg_Number = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, Cor_Reg_Number);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; // DB오류
	}
}