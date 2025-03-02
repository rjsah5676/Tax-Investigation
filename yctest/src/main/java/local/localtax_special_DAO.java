package local;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import util.DatabaseUtil;
import java.sql.Date;
import java.util.ArrayList;

import corpstat.corpstat_VO;

public class localtax_special_DAO {
	static Connection conn = DatabaseUtil.getConnection();
	public static ArrayList init(String Cor_Reg_Number) {
		PreparedStatement pstmt = null;
        ResultSet rs = null;
        ArrayList ret = new ArrayList();
		String SQL = "SELECT Prv_company_name,Prv_company_reg_num,Prv_cor_repre FROM company_table WHERE Cor_Reg_Number='"+Cor_Reg_Number+"'";
		System.out.println(SQL);
		try { 
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				String inp1 = rs.getString(1);
	            String inp2 = rs.getString(2);
	            String inp3 = rs.getString(3);
	            ret.add(inp1);
	            ret.add(inp2);
	            ret.add(inp3);				
			}
            return ret;
		}catch (Exception e) {
			e.printStackTrace(); 
		} 
		return ret; 
		}

	public static int join(String Cor_Reg_Number, String Cor_name, String Jurisdic, String Sur_year, String Invest_pp,
			String Bus_infor, int Bus_year, String Bus_name_1, String Bus_name_2,
			String Intax_pay, String Work_c,
			String Retire_c, String Alloc_c,
			String Inter_c, String Bus_c,
			String Cortax_law_c, String Etc_c,
			String Out_locIn_tax, String Prep_tax, Date Pay_date
			) {
		
		String SQL = "INSERT INTO localtax_special VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try { 
			long m = System.currentTimeMillis();
			Date nowDate = new Date(00000000);
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, Cor_Reg_Number);
			pstmt.setString(2, Cor_name);
			pstmt.setString(3, Jurisdic);
			pstmt.setString(4, Sur_year);
			pstmt.setString(5, Invest_pp);
			pstmt.setString(6, Bus_infor);
			pstmt.setInt(7, Bus_year);
			pstmt.setString(8, Bus_name_1);
			pstmt.setString(9, Bus_name_2);
			pstmt.setString(10, Intax_pay);
			pstmt.setString(11, Work_c);
			pstmt.setString(12, Retire_c);
			pstmt.setString(13, Alloc_c);
			pstmt.setString(14, Inter_c);
			pstmt.setString(15, Bus_c);
			pstmt.setString(16, Cortax_law_c);
			pstmt.setString(17, Etc_c);
			pstmt.setString(18, Out_locIn_tax);
			pstmt.setString(19, Prep_tax);
			pstmt.setDate(20,(java.sql.Date)Pay_date);
			pstmt.setDate(21, (java.sql.Date)nowDate);
			System.out.println(SQL);
			return pstmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return -1; 
		}
	public static int update(String Cor_Reg_Number, String Cor_name, String Jurisdic, String Sur_year, String Invest_pp,
			String Bus_infor, int Bus_year, String Bus_name_1, String Bus_name_2, String Intax_pay, String Work_c,
			String Retire_c, String Alloc_c,
			String Inter_c, String Bus_c,
			String Cortax_law_c, String Etc_c,
			String Out_locIn_tax, String Prep_tax, Date Pay_date
			) {
		
		String SQL_update = "UPDATE localtax_special SET Cor_name=?, Jurisdic=?, Sur_year=?, Invest_pp=?, Bus_infor=?,"
				+ "Bus_year=?, Bus_name_1=?, Bus_name_2=?, Intax_pay=?, Work_c=?, Retire_c=?, Alloc_c=?, "
				+ "Inter_c=?, Bus_c=?, Cortax_law_c=?, Etc_c=?, Out_locIn_tax=?, "
				+ "Prep_tax=?, Pay_date=?, Report_Date=? WHERE Cor_Reg_Number=?";
		try { 
			long m = System.currentTimeMillis();
			Date nowDate = new Date(m);
			PreparedStatement pstmt = conn.prepareStatement(SQL_update);
			pstmt.setString(1, Cor_name);
			pstmt.setString(2, Jurisdic);
			pstmt.setString(3, Sur_year);
			pstmt.setString(4, Invest_pp);
			pstmt.setString(5, Bus_infor);
			pstmt.setInt(6, Bus_year);
			pstmt.setString(7, Bus_name_1);
			pstmt.setString(8, Bus_name_2);
			pstmt.setString(9, Intax_pay);
			pstmt.setString(10, Work_c);
			pstmt.setString(11, Retire_c);
			pstmt.setString(12, Alloc_c);
			pstmt.setString(13, Inter_c);
			pstmt.setString(14, Bus_c);
			pstmt.setString(15, Cortax_law_c);
			pstmt.setString(16, Etc_c);
			pstmt.setString(17, Out_locIn_tax);
			pstmt.setString(18, Prep_tax);
			pstmt.setDate(19,(java.sql.Date)Pay_date);
			pstmt.setDate(20, (java.sql.Date)nowDate);
			pstmt.setString(21, Cor_Reg_Number);
			return pstmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
		return -1; 
		}
	public static ArrayList<localtax_special_VO> getList(String Cor_Reg_Number) {
		ResultSet rs = null;
		String sql = "SELECT * FROM localtax_special WHERE Cor_Reg_Number=?";
		ArrayList<localtax_special_VO> list = new ArrayList<localtax_special_VO>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Cor_Reg_Number);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				localtax_special_VO inp = new localtax_special_VO();
				inp.setCor_name(rs.getString(2));
				inp.setJurisdic(rs.getString(3));
				inp.setSur_year(rs.getString(4));
				inp.setInvest_pp(rs.getString(5));
				inp.setBus_infor(rs.getString(6));
				inp.setBus_year(rs.getInt(7));
				inp.setBus_name_1(rs.getString(8));
				inp.setBus_name_2(rs.getString(9));
				inp.setOptions(rs.getString(10));
				inp.setIntax_pay(rs.getString(11));
				inp.setWork_c(rs.getString(12));
				inp.setRetire_c(rs.getString(13));
				inp.setAlloc_c(rs.getString(14));
				inp.setInter_c(rs.getString(15));
				inp.setBus_c(rs.getString(16));
				inp.setCortax_law_c(rs.getString(17));
				inp.setEtc_c(rs.getString(18));
				inp.setOut_locIn_tax(rs.getString(19));
				inp.setPrep_tax(rs.getString(20));
				inp.setPay_date(rs.getString(21));
				list.add(inp);
				rs.close();
				return list;
			}	
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null; 
	}
	}