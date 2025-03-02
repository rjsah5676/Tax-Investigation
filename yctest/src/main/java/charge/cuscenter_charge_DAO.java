package charge;

import java.sql.Connection;
import java.sql.PreparedStatement;
import util.DatabaseUtil;
import java.sql.ResultSet;
import java.util.ArrayList;

import QnA.qnaVO;

public class cuscenter_charge_DAO {
	static Connection conn = DatabaseUtil.getConnection();
	public static int join(int noticeboard_num, String charge_Juris, 
			String charge_area, String charge_departname,
			String charge_person, String charge_num,
			String charge_fax
			) {
		
		String SQL = "INSERT INTO cuscenter_charge VALUES (?,?,?,?,?,?,?)";
		try { 
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getCnt());
			pstmt.setString(2, charge_Juris);
			pstmt.setString(3, charge_area);
			pstmt.setString(4, charge_departname);
			pstmt.setString(5, charge_person);
			pstmt.setString(6, charge_num);
			pstmt.setString(7,  charge_fax);
			return pstmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return -1; 
		}
	public static int getCnt() {
		ResultSet rs=null;
		String sql = "select noticeboard_num from cuscenter_charge order by noticeboard_num desc";
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
	public static ArrayList<chargeVO> getList(int pageNumber, String search_info, String select_option) {
		ResultSet rs=null;
		String sql="";
		if(search_info.equals("")) {
			sql = "select noticeboard_num,charge_Juris, charge_area, charge_departname, charge_person,charge_num,charge_fax FROM cuscenter_charge" 
			        + " order by noticeboard_num DESC"
			+ " LIMIT ? OFFSET ?";
		}
		else if(select_option.equals("1")) {
			sql = "select noticeboard_num,charge_Juris, charge_area, charge_departname, charge_person,charge_num,charge_fax FROM cuscenter_charge" 
			        + " WHERE charge_person LIKE '%" + search_info + "%' order by noticeboard_num DESC"
			+ " LIMIT ? OFFSET ?";
		}
		ArrayList<chargeVO> list = new ArrayList<chargeVO>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, pageNumber * 10);
			pstmt.setInt(1, 10);
			pstmt.setInt(2, pageNumber * 10 - 10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				chargeVO inp = new chargeVO();
				inp.setNoticeboard_num(rs.getInt(1));
				inp.setCharge_Juris(rs.getString(2));
				inp.setCharge_area(rs.getString(3));
				inp.setCharge_departname(rs.getString(4));
				inp.setCharge_person(rs.getString(5));
				inp.setCharge_num(rs.getString(6));
				inp.setCharge_fax(rs.getString(7));
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
			sql = "select noticeboard_num,charge_Juris, charge_area, charge_departname, charge_person,charge_num,charge_fax FROM cuscenter_charge" 
			        + " order by noticeboard_num DESC"
			+ " LIMIT ? OFFSET ?";
		}
		else if(select_option.equals("1")) {
			sql = "select noticeboard_num,charge_Juris, charge_area, charge_departname, charge_person,charge_num,charge_fax FROM cuscenter_charge" 
			        + " WHERE charge_person LIKE '%" + search_info + "%' order by noticeboard_num DESC"
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
		String SQL = "DELETE FROM cuscenter_charge WHERE noticeboard_num = ?";
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
