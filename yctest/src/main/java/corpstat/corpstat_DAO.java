package corpstat;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import corpstat.corpstat_VO;
import util.DatabaseUtil;
import java.sql.Date;

public class corpstat_DAO {
	static Connection conn = DatabaseUtil.getConnection();
	public static int create(String Cor_Reg_Number, String Jurisdic, String Sur_year, String Invest_pp, String Cor_name,
			String Cor_address, String Phone_num, String Cor_email, String Cor_repre, Date Cor_establish_Date, String Cor_status,
			String Cor_business_type, int Cor_capital, String Incorporated_or_not, String Listed_or_not, String Profit_or_not,
			String Bus_name, String Writer_depertment, String Writer_name, String Writer_phonenum, String Has_place, String Division_or_merge
			) {
		String SQL = "INSERT INTO corporation_status VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, Cor_Reg_Number);
			pstmt.setString(2, Jurisdic);
			pstmt.setString(3, Sur_year);
			pstmt.setString(4, Invest_pp);
			pstmt.setString(5, Cor_name);
			pstmt.setString(6, Cor_address);
			pstmt.setString(7, Phone_num);
			pstmt.setString(8, Cor_email);
			pstmt.setString(9, Cor_repre);
			pstmt.setDate(10, (java.sql.Date) Cor_establish_Date);
			pstmt.setString(11, Cor_status);
			pstmt.setString(12, Cor_business_type);
			pstmt.setInt(13, Cor_capital);
			pstmt.setString(14, Incorporated_or_not);
			pstmt.setString(15, Listed_or_not);
			pstmt.setString(16, Profit_or_not);
			pstmt.setString(17, Bus_name);
			pstmt.setString(18, Writer_depertment);
			pstmt.setString(19, Writer_name);
			pstmt.setString(20, Writer_phonenum);
			pstmt.setString(21, Has_place);
			pstmt.setString(22, Division_or_merge);
			return pstmt.executeUpdate(); 
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	public static int join(String Cor_Reg_Number
			) {
		
		String SQL = "INSERT INTO depart_resitax VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try { 
			long m = System.currentTimeMillis();
			Date nowDate = new Date(00000000);
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, Cor_Reg_Number);
			return pstmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return -1; 
		}
	public static ArrayList<corpstat_VO> getList(String Cor_Reg_Number) {
		ResultSet rs = null;
		String sql = "SELECT * FROM corporation_status WHERE Cor_Reg_Number=?";
		ArrayList<corpstat_VO> list = new ArrayList<corpstat_VO>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Cor_Reg_Number);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				corpstat_VO inp = new corpstat_VO();
				inp.setCor_Reg_Number(rs.getString(1));
				inp.setCor_name(rs.getString(5));
				inp.setJurisdic(rs.getString(2));
				inp.setSur_year(rs.getString(3));
				inp.setInvest_pp(rs.getString(4));
				inp.setCor_address(rs.getString(6));
				inp.setPhone_num(rs.getString(7));
				inp.setCor_email(rs.getString(8));
				inp.setCor_repre(rs.getString(9));
				inp.setCor_establish_Date(rs.getDate(10));
				inp.setCor_status(rs.getString(11));
				inp.setCor_business_type(rs.getString(12));
				inp.setCor_capital(rs.getInt(13));
				inp.setIncorporated_or_not(rs.getString(14));
				inp.setListed_or_not(rs.getString(15));
				inp.setProfit_or_not(rs.getString(16));
				inp.setBus_name(rs.getString(17));
				inp.setWriter_depertment(rs.getString(18));
				inp.setWriter_name(rs.getString(19));
				inp.setWriter_phonenum(rs.getString(20));
				inp.setHas_place(rs.getString(21));
				inp.setDivision_or_merge(rs.getString(22));
				list.add(inp);
				rs.close();
				return list;
			}	
		}catch(Exception e) {
			e.printStackTrace();
		}
		/*
		ResultSet rs=null;
			String sql = "select Prv_detail_addr, Prv_company_name FROM company_table WHERE Cor_Reg_Number=?";
		String cor_name="";
		String address="";
		ArrayList<corpstat_VO> list = new ArrayList<corpstat_VO>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, pageNumber * 10);
			pstmt.setString(1, Cor_Reg_Number);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				address=rs.getString(1);
				cor_name=rs.getString(2);
			}
			String depart_sql = "select Report_Date FROM depart_resitax WHERE Cor_Reg_Number=?";
			PreparedStatement depart_pstmt = conn.prepareStatement(depart_sql);
			depart_pstmt.setString(1, Cor_Reg_Number);
			rs = depart_pstmt.executeQuery();
			while(rs.next()) {
				corpstat_VO inp = new corpstat_VO();
				inp.setAddress(address);
				inp.setCor_name(cor_name);
				inp.setReport_Date(rs.getString(1));
				inp.setType("depart");
				list.add(inp);
			}	
			String localtax_sql = "select Report_Date FROM localtax_special WHERE Cor_Reg_Number=?";
			PreparedStatement localtax_pstmt = conn.prepareStatement(localtax_sql);
			localtax_pstmt.setString(1, Cor_Reg_Number);
			rs = localtax_pstmt.executeQuery();
			while(rs.next()) {
				corpstat_VO inp = new corpstat_VO();
				inp.setAddress(address);
				inp.setCor_name(cor_name);
				inp.setReport_Date(rs.getString(1));
				inp.setType("localtax");
				list.add(inp);
			}
			String resident_sql = "select Report_Date FROM resident_tax WHERE Cor_Reg_Number=?";
			PreparedStatement resident_pstmt = conn.prepareStatement(resident_sql);
			resident_pstmt.setString(1, Cor_Reg_Number);
			rs = resident_pstmt.executeQuery();
			while(rs.next()) {
				corpstat_VO inp = new corpstat_VO();
				inp.setAddress(address);
				inp.setCor_name(cor_name);
				inp.setReport_Date(rs.getString(1));
				inp.setType("resident");
				list.add(inp);
			}
			String submit_sql = "select Report_Date FROM submit_report WHERE Cor_Reg_Number=?";
			PreparedStatement submit_pstmt = conn.prepareStatement(submit_sql);
			submit_pstmt.setString(1, Cor_Reg_Number);
			rs = submit_pstmt.executeQuery();
			while(rs.next()) {
				corpstat_VO inp = new corpstat_VO();
				inp.setAddress(address);
				inp.setCor_name(cor_name);
				inp.setReport_Date(rs.getString(1));
				inp.setType("submit");
				list.add(inp);
			}
			rs.close();
			return list; 
		}catch (Exception e) {
			e.printStackTrace();
		}*/
		return null; 
	}
	public static int update(String Cor_Reg_Number, String Cor_address, String Phone_num,
			String Cor_email, String Cor_repre,
			Date Cor_establish_Date, String Cor_status,
			String Cor_business_type, int Cor_capital,
			String Incorporated_or_not, String Listed_or_not,
			String Profit_or_not, String Bus_name, String Writer_depertment, String Writer_name,
			String Writer_phonenum, String Has_place, String Division_or_merge
			) {
		
		String SQL_update = "UPDATE corporation_status SET Cor_address=?, Phone_num=?,"
				+ " Cor_email=?, Cor_repre=?, Cor_establish_Date=?,"
				+ "Cor_status=?, Cor_business_type=?, Cor_capital=?, Incorporated_or_not=?, "
				+ "Listed_or_not=?, Profit_or_not=?, Bus_name=?, Writer_depertment=?, Writer_name=?,"
				+ "Writer_phonenum=?, Has_place=?, Division_or_merge=?"
				+ " WHERE Cor_Reg_Number=?";
		try { 
			PreparedStatement pstmt = conn.prepareStatement(SQL_update);
			pstmt.setString(1, Cor_address);
			pstmt.setString(2, Phone_num);
			pstmt.setString(3, Cor_email);
			pstmt.setString(4, Cor_repre);
			pstmt.setDate(5, (java.sql.Date) Cor_establish_Date);
			pstmt.setString(6, Cor_status);
			pstmt.setString(7, Cor_business_type);
			pstmt.setInt(8, Cor_capital);
			pstmt.setString(9, Incorporated_or_not);
			pstmt.setString(10, Listed_or_not);
			pstmt.setString(11, Profit_or_not);
			pstmt.setString(12, Bus_name);
			pstmt.setString(13, Writer_depertment);
			pstmt.setString(14, Writer_name);
			pstmt.setString(15, Writer_phonenum);
			pstmt.setString(16, Has_place);
			pstmt.setString(17, Division_or_merge);
			pstmt.setString(18, Cor_Reg_Number);
			return pstmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return -1; 
		}
}
