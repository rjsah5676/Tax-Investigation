package notice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import util.DatabaseUtil;
import java.sql.Date;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class cuscenter_notice_DAO {
	static Connection conn = DatabaseUtil.getConnection();
	public static int join(int noticeboard_num, String notice_title, 
			int notice_viewnum, Date notice_regisdate,
			String notice_fileName, String notice_file,
			String notice_content
			) {
		
		String SQL = "INSERT INTO cuscenter_notice VALUES (?,?,?,?,?,?,?)";
		try { 
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getCnt());
			pstmt.setString(2, notice_title);
			pstmt.setInt(3, notice_viewnum);
			pstmt.setDate(4, (java.sql.Date)notice_regisdate);
			pstmt.setString(5, notice_fileName);
			pstmt.setString(6, notice_file);
			pstmt.setString(7,  notice_content);
			return pstmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return -1; 
		}
	public static int getCnt() {
		ResultSet rs=null;
		String sql = "select noticeboard_num from cuscenter_notice order by noticeboard_num desc";
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
	public static ArrayList<noticeVO> getList(int pageNumber, String search_info, String select_option) {
		ResultSet rs=null;
		String sql = "";
		if(search_info.equals("")) {
			sql = "select noticeboard_num,notice_title, notice_viewnum, notice_regisdate, notice_fileName, notice_file, notice_content FROM cuscenter_notice" 
			        + " order by noticeboard_num DESC"
			+ " LIMIT ? OFFSET ?";			
		}
		else if(select_option.equals("1")){
			sql = "select noticeboard_num,notice_title, notice_viewnum, notice_regisdate, notice_fileName, notice_file, notice_content FROM cuscenter_notice" 
			        + " WHERE notice_title LIKE '%" + search_info +"%' OR notice_content LIKE '%" + search_info + "%' order by noticeboard_num DESC"
			+ " LIMIT ? OFFSET ?";
		}
		else if(select_option.equals("2")){
			sql = "select noticeboard_num,notice_title, notice_viewnum, notice_regisdate, notice_fileName, notice_file, notice_content FROM cuscenter_notice" 
			        + " WHERE notice_title LIKE '%" + search_info +"%' order by noticeboard_num DESC"
			+ " LIMIT ? OFFSET ?";
		}
		ArrayList<noticeVO> list = new ArrayList<noticeVO>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, pageNumber * 10);
			pstmt.setInt(1, 10);
			pstmt.setInt(2, pageNumber * 10 - 10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				noticeVO inp = new noticeVO();
				inp.setNoticeboard_num(rs.getInt(1));
				inp.setNotice_title(rs.getString(2));
				inp.setNotice_viewnum(rs.getInt(3));
				inp.setNotice_regisdate(rs.getDate(4));
				inp.setNotice_fileName(rs.getString(5));
				inp.setNotice_file(rs.getString(6));
				inp.setNotice_content(rs.getString(7));
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
			sql = "select noticeboard_num,notice_title, notice_viewnum, notice_regisdate, notice_fileName, notice_file, notice_content FROM cuscenter_notice" 
			        + " order by noticeboard_num DESC"
			+ " LIMIT ? OFFSET ?";			
		}
		else if(select_option.equals("1")){
			sql = "select noticeboard_num,notice_title, notice_viewnum, notice_regisdate, notice_fileName, notice_file, notice_content FROM cuscenter_notice" 
			        + " WHERE notice_title LIKE '%" + search_info +"%' OR notice_content LIKE '%" + search_info + "%' order by noticeboard_num DESC"
			+ " LIMIT ? OFFSET ?";
		}
		else if(select_option.equals("2")){
			sql = "select noticeboard_num,notice_title, notice_viewnum, notice_regisdate, notice_fileName, notice_file, notice_content FROM cuscenter_notice" 
			        + " WHERE notice_title LIKE '%" + search_info +"%' order by noticeboard_num DESC"
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
	public static ArrayList<String> loadBoard(String n){
		ResultSet rs=null;
		ArrayList<String> ret = new ArrayList<String>();
		String sql = "select notice_title, notice_regisdate, notice_viewnum, notice_fileName, notice_content"
		+ " from cuscenter_notice where noticeboard_num="+n;
		String sql_bef = "SELECT (SELECT noticeboard_num FROM cuscenter_notice t2 WHERE t2.noticeboard_num < t1.noticeboard_num ORDER BY t2.noticeboard_num DESC LIMIT 1) tmp FROM cuscenter_notice t1 WHERE noticeboard_num="+n;
		String sql_aft = "SELECT (SELECT noticeboard_num FROM cuscenter_notice t2 WHERE t2.noticeboard_num > t1.noticeboard_num ORDER BY t2.noticeboard_num LIMIT 1) tmp FROM cuscenter_notice t1 WHERE noticeboard_num="+n;
		String fin_bef = "SELECT notice_title FROM cuscenter_notice WHERE noticeboard_num=";
		String fin_aft = "SELECT notice_title FROM cuscenter_notice WHERE noticeboard_num=";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
			String inp1 = rs.getString(1);
			SimpleDateFormat fmt=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
			String inp2=fmt.format(rs.getDate(2));
            String inp3 = rs.getString(3);
            String inp4 = rs.getString(4);
            String inp5 = rs.getString(5);
            ret.add(inp1);
            ret.add(inp2);
            ret.add(inp3);
            ret.add(inp4);
            ret.add(inp5);
			}
			PreparedStatement pstmt_bef = conn.prepareStatement(sql_bef);
			rs = pstmt_bef.executeQuery();
			if(rs.next()) {
				String inp = rs.getString(1);
				if(inp==null) {
					ret.add("0");
					ret.add("가장 첫번째 글입니다");
				}
				else {
					ret.add(inp);
					fin_bef += inp;
					pstmt_bef = conn.prepareStatement(fin_bef);
					rs = pstmt_bef.executeQuery();
					if(rs.next()) {
						ret.add(rs.getString(1));
					}
				}
			}
			PreparedStatement pstmt_aft = conn.prepareStatement(sql_aft);
			rs = pstmt_aft.executeQuery();
			if(rs.next()) {
				String inp = rs.getString(1);
				if(inp==null) {
					ret.add(Integer.toString(getCnt()));
					ret.add("가장 마지막 글입니다");
				}
				else {
					ret.add(inp);
					fin_aft += inp;
					pstmt_aft = conn.prepareStatement(fin_aft);
					rs = pstmt_aft.executeQuery();
					if(rs.next()) {
						ret.add(rs.getString(1));
					}
				}
			}
			ret.add(n);
			ret.add(Integer.toString(getCnt()));
			return ret;
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null; 
	}
	public int viewUpdate(String now, String id) {
		String SQL = "UPDATE cuscenter_notice SET notice_viewnum = ? WHERE noticeboard_num = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, Integer.parseInt(now)+1);
			pstmt.setInt(2, Integer.parseInt(id));
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; // DB오류
	}
	public int delete(int id) {
		String SQL = "DELETE FROM cuscenter_notice WHERE noticeboard_num = ?";
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
		String SQL = "UPDATE cuscenter_notice SET notice_title = ?, notice_fileName = ?, notice_content = ? WHERE noticeboard_num = ?";
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