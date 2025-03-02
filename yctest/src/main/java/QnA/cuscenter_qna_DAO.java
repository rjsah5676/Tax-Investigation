package QnA;

import java.sql.Connection;
import java.sql.PreparedStatement;
import util.DatabaseUtil;
import java.sql.Date;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class cuscenter_qna_DAO {
	static Connection conn = DatabaseUtil.getConnection();
	public static int join(int noticeboard_num, String QnA_open_chk, 
			Date QnA_regisdate, String QnA_Writer,
			String QnA_Pw, String QnA_email,
			String QnA_place, String QnA_phone,
			String QnA_title, String QnA_content,
			int QnA_viewnum
			) {
		
		String SQL = "INSERT INTO cuscenter_qna VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
		try { 
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getCnt());
			pstmt.setString(2, QnA_open_chk);
			pstmt.setDate(3, (java.sql.Date)QnA_regisdate);
			pstmt.setString(4, QnA_Writer);
			pstmt.setString(5, QnA_Pw);
			pstmt.setString(6, QnA_email);
			pstmt.setString(7,  QnA_place);
			pstmt.setString(8, QnA_phone);
			pstmt.setString(9, QnA_title);
			pstmt.setString(10, QnA_content);
			pstmt.setInt(11, QnA_viewnum);
			pstmt.setString(12, null);
			return pstmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return -1; 
		}
	public int reply(int id, String content) {
		String SQL = "UPDATE cuscenter_qna SET QnA_reply = ? WHERE noticeboard_num = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, content);
			pstmt.setInt(2, id);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; // DB오류
	}
	public static int getCnt() {
		ResultSet rs=null;
		String sql = "select noticeboard_num from cuscenter_qna order by noticeboard_num desc";
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
	public static ArrayList<qnaVO> getList(int pageNumber, String search_info, String select_option) {
		ResultSet rs=null;
		String sql = "";
		if(search_info.equals("")) {
			sql = "select noticeboard_num,QnA_title, QnA_viewnum, QnA_regisdate, QnA_content, QnA_reply FROM cuscenter_qna" 
			        + " order by noticeboard_num DESC"
			+ " LIMIT ? OFFSET ?";			
		}
		else if(select_option.equals("1")){
			sql = "select noticeboard_num,QnA_title, QnA_viewnum, QnA_regisdate, QnA_content, QnA_reply FROM cuscenter_qna" 
			        + " WHERE QnA_title LIKE '%" + search_info +"%' OR QnA_content LIKE '%" + search_info + "%' order by noticeboard_num DESC"
			+ " LIMIT ? OFFSET ?";
		}
		else if(select_option.equals("2")){
			sql = "select noticeboard_num,QnA_title, QnA_viewnum, QnA_regisdate, QnA_content, QnA_reply FROM cuscenter_qna" 
			        + " WHERE QnA_title LIKE '%" + search_info +"%' order by noticeboard_num DESC"
			+ " LIMIT ? OFFSET ?";
		}
		ArrayList<qnaVO> list = new ArrayList<qnaVO>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, pageNumber * 10);
			pstmt.setInt(1, 10);
			pstmt.setInt(2, pageNumber * 10 - 10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				qnaVO inp = new qnaVO();
				inp.setNoticeboard_num(rs.getInt(1));
				inp.setQnA_title(rs.getString(2));
				inp.setQnA_viewnum(rs.getInt(3));
				inp.setQnA_regisdate(rs.getDate(4));
				inp.setQnA_content(rs.getString(5));
				inp.setQnA_reply(rs.getString(6));
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
			sql = "select noticeboard_num,QnA_title, QnA_viewnum, QnA_regisdate, QnA_content FROM cuscenter_qna" 
			        + " order by noticeboard_num DESC"
			+ " LIMIT ? OFFSET ?";			
		}
		else if(select_option.equals("1")){
			sql = "select noticeboard_num,QnA_title, QnA_viewnum, QnA_regisdate, QnA_content FROM cuscenter_qna" 
			        + " WHERE QnA_title LIKE '%" + search_info +"%' OR QnA_content LIKE '%" + search_info + "%' order by noticeboard_num DESC"
			+ " LIMIT ? OFFSET ?";
		}
		else if(select_option.equals("2")){
			sql = "select noticeboard_num,QnA_title, QnA_viewnum, QnA_regisdate, QnA_content FROM cuscenter_qna" 
			        + " WHERE QnA_title LIKE '%" + search_info +"%' order by noticeboard_num DESC"
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
		String sql = "select QnA_place,QnA_regisdate,QnA_viewnum,QnA_title,QnA_content"
		+ " from cuscenter_qna where noticeboard_num="+n;
		String sql_bef = "SELECT (SELECT noticeboard_num FROM cuscenter_qna t2 WHERE t2.noticeboard_num < t1.noticeboard_num ORDER BY t2.noticeboard_num DESC LIMIT 1) tmp FROM cuscenter_qna t1 WHERE noticeboard_num="+n;
		String sql_aft = "SELECT (SELECT noticeboard_num FROM cuscenter_qna t2 WHERE t2.noticeboard_num > t1.noticeboard_num ORDER BY t2.noticeboard_num LIMIT 1) tmp FROM cuscenter_qna t1 WHERE noticeboard_num="+n;
		String fin_bef = "SELECT QnA_title FROM cuscenter_qna WHERE noticeboard_num=";
		String fin_aft = "SELECT QnA_title FROM cuscenter_qna WHERE noticeboard_num=";
		String reply_sql = "SELECT QnA_reply FROM cuscenter_qna WHERE noticeboard_num="+n;
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
			PreparedStatement pstmt_reply = conn.prepareStatement(reply_sql);
			rs = pstmt_reply.executeQuery();
			if(rs.next()) {
				if(rs.getString(1) == null) ret.add("답변이 없습니다");
				else
					ret.add(rs.getString(1));
			}
			return ret;
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null; 
	}
	public int viewUpdate(String now, String id) {
		String SQL = "UPDATE cuscenter_qna SET QnA_viewnum = ? WHERE noticeboard_num = ?";
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
		String SQL = "DELETE FROM cuscenter_qna WHERE noticeboard_num = ?";
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