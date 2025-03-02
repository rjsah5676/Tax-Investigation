package glossary;

import java.sql.Connection;
import java.sql.PreparedStatement;
import util.DatabaseUtil;
import java.sql.ResultSet;
import java.util.ArrayList;

public class form_glossary_DAO {
	static Connection conn = DatabaseUtil.getConnection();
	public static int join(int form_id, String form_title, 
			String form_meaning
			) {
		
		String SQL = "INSERT INTO form_glossary VALUES (?,?,?)";
		try { 
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getCnt());
			pstmt.setString(2, form_title);
			pstmt.setString(3, form_meaning);
			return pstmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return -1; 
		}
	public static int getCnt() {
		ResultSet rs=null;
		String sql = "select form_id from form_glossary order by form_id desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; 
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1; 
	}
	public static ArrayList<glossaryVO> getList(int pageNumber, String search_info, String select_option) {
		ResultSet rs=null;
		String sql = "";
		if(search_info.equals("")) {
			sql = "select form_id,form_title, form_meaning FROM form_glossary" 
			        + " order by form_id DESC"
			+ " LIMIT ? OFFSET ?";			
		}
		else if(select_option.equals("1")){
			sql = "select form_id,form_title, form_meaning FROM form_glossary"  
			        + " WHERE form_title LIKE '%" + search_info +"%' OR form_meaning LIKE '%" + search_info + "%' order by form_id DESC"
			+ " LIMIT ? OFFSET ?";
		}
		else if(select_option.equals("2")){
			sql = "select form_id,form_title, form_meaning FROM form_glossary"   
			        + " WHERE form_title LIKE '%" + search_info +"%' order by form_id DESC"
			+ " LIMIT ? OFFSET ?";
		}
		ArrayList<glossaryVO> list = new ArrayList<glossaryVO>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, pageNumber * 10);
			pstmt.setInt(1, 10);
			pstmt.setInt(2, pageNumber * 10 - 10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				glossaryVO inp = new glossaryVO();
				inp.setForm_id(rs.getInt(1));
				inp.setForm_title(rs.getString(2));
				inp.setForm_meaning(rs.getString(3));
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
			sql = "select form_id,form_title, form_meaning FROM form_glossary" 
			        + " order by form_id DESC"
			+ " LIMIT ? OFFSET ?";			
		}
		else if(select_option.equals("1")){
			sql = "select form_id,form_title, form_meaning FROM form_glossary"  
			        + " WHERE form_title LIKE '%" + search_info +"%' OR form_meaning LIKE '%" + search_info + "%' order by form_id DESC"
			+ " LIMIT ? OFFSET ?";
		}
		else if(select_option.equals("2")){
			sql = "select form_id,form_title, form_meaning FROM form_glossary"   
			        + " WHERE form_title LIKE '%" + search_info +"%' order by form_id DESC"
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
	public int delete(int id) {
		String SQL = "DELETE FROM form_glossary WHERE form_id = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, id);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; // DB오류
	}
}