package archives;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import notice.noticeVO;
import util.DatabaseUtil;

public class form_archives_DAO {
	static Connection conn = DatabaseUtil.getConnection();
	public static int join(int form_id, String form_title, 
			String form_file, String form_fileName,
			Date form_regisdate, String form_content
			) {
		
		String SQL = "INSERT INTO form_archives VALUES (?,?,?,?,?,?)";
		try { 
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getCnt());
			pstmt.setString(2, form_title);
			pstmt.setString(3, form_file);
			pstmt.setString(4, form_fileName);
			pstmt.setDate(5, (java.sql.Date)form_regisdate);
			pstmt.setString(6, form_content);
			return pstmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return -1; 
		}
	public static int getCnt() {
		ResultSet rs=null;
		String sql = "select form_id from form_archives order by form_id desc";
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
	public static ArrayList<archivesVO> getList(int pageNumber, String search_info, String select_option) {
		ResultSet rs=null;
		String sql = "";
		if(search_info.equals("")) {
			sql = "select form_id,form_title, form_file, form_fileName, form_regisdate, form_content FROM form_archives" 
			        + " order by form_id DESC"
			+ " LIMIT ? OFFSET ?";			
		}
		else if(select_option.equals("1")){
			sql = "select form_id,form_title, form_file, form_fileName, form_regisdate, form_content FROM form_archives" 
			        + " WHERE form_title LIKE '%" + search_info +"%' OR form_content LIKE '%" + search_info + "%' order by form_id DESC"
			+ " LIMIT ? OFFSET ?";
		}
		else if(select_option.equals("2")){
			sql = "select form_id,form_title, form_file, form_fileName, form_regisdate, form_content FROM form_archives"  
			        + " WHERE form_title LIKE '%" + search_info +"%' order by form_id DESC"
			+ " LIMIT ? OFFSET ?";
		}
		ArrayList<archivesVO> list = new ArrayList<archivesVO>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, pageNumber * 10);
			pstmt.setInt(1, 10);
			pstmt.setInt(2, pageNumber * 10 - 10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				archivesVO inp = new archivesVO();
				inp.setForm_id(rs.getInt(1));
				inp.setForm_title(rs.getString(2));
				inp.setForm_file(rs.getString(3));
				inp.setForm_fileName(rs.getString(4));
				inp.setForm_regisdate(rs.getDate(5));
				inp.setForm_content(rs.getString(6));
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
			sql = "select form_id,form_title, form_file, form_fileName, form_regisdate, form_content FROM form_archives" 
			        + " order by form_id DESC"
			+ " LIMIT ? OFFSET ?";			
		}
		else if(select_option.equals("1")){
			sql = "select form_id,form_title, form_file, form_fileName, form_regisdate, form_content FROM form_archives" 
			        + " WHERE form_title LIKE '%" + search_info +"%' OR form_content LIKE '%" + search_info + "%' order by form_id DESC"
			+ " LIMIT ? OFFSET ?";
		}
		else if(select_option.equals("2")){
			sql = "select form_id,form_title, form_file, form_fileName, form_regisdate, form_content FROM form_archives"  
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
	public static archivesVO loadBoard(String n){
		ResultSet rs=null;
		String sql = "select form_id,form_title, form_file, form_fileName, form_regisdate, form_content FROM form_archives"  
		+ " where form_id="+n;
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				archivesVO inp = new archivesVO();
				inp.setForm_id(rs.getInt(1));
				inp.setForm_title(rs.getString(2));
				inp.setForm_file(rs.getString(3));
				inp.setForm_fileName(rs.getString(4));
				inp.setForm_regisdate(rs.getDate(5));
				inp.setForm_content(rs.getString(6));
			return inp;	
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null; 
	}
	public int delete(int id) {
		String SQL = "DELETE FROM form_archives WHERE form_id = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, id);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; // DB오류
	}
	public int update(int id, String title, String file, String content) {
		String SQL = "UPDATE form_archives SET form_title = ?, form_fileName = ?, form_content = ? WHERE form_id = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, title);
			pstmt.setString(2, file);
			pstmt.setString(3, content);
			pstmt.setInt(4, id);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; // DB오류
	}

}
