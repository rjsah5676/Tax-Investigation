package agent;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;

import util.DatabaseUtil;

public class agentDAO {
	static Connection conn = DatabaseUtil.getConnection();
	public static int join(String Cor_Reg_Number, String Agent_Cor_Reg_Number, Date end_date
			) {
		
		String SQL = "INSERT INTO agent_manage VALUES (?,?,?)";
		try { 
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, Cor_Reg_Number);
			pstmt.setString(2, Agent_Cor_Reg_Number);
			pstmt.setDate(3, end_date);
			
			return pstmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return -1; 
		}
	public static agentVO findAgent(String Cor_Reg_Number) {
		String sql = "SELECT Cor_Reg_Number,end_date,Agent_Cor_Reg_Number FROM agent_manage WHERE Cor_Reg_Number="+Cor_Reg_Number+" ORDER BY end_date DESC";
		try {
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String ss=sdf.format(new java.util.Date());
			java.sql.Date d= java.sql.Date.valueOf(ss);
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				String tmp_num = rs.getString(1);
				Date tmp_date = rs.getDate(2);
				if(d.before(tmp_date) || d.equals(tmp_date)) {
					agentVO ret=new agentVO();
					ret.setCor_Reg_Number(Cor_Reg_Number);
					ret.setAgent_Cor_Reg_Number(rs.getString(3));
					ret.setEnd_date(tmp_date);
					return ret;
				}
				else return null;
			} 
			return null;
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return null; 
		}
	}
