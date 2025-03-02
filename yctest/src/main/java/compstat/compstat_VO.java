package compstat;

import java.sql.Date;

public class compstat_VO {
	String Cor_Reg_Number; 
	String Cs_office_exist;
	String Cs_company_reg_num;
	String Cs_company_name;
	String Cs_detail_addr;
	String Cs_phonenum;
	Date Cs_first_set;
	Date Cs_regist_date;
	Date Cs_registerd_date;
	public String getCor_Reg_Number() {
		return Cor_Reg_Number;
	}
	public void setCor_Reg_Number(String cor_Reg_Number) {
		Cor_Reg_Number = cor_Reg_Number;
	}
	public String getCs_office_exist() {
		return Cs_office_exist;
	}
	public void setCs_office_exist(String cs_office_exist) {
		Cs_office_exist = cs_office_exist;
	}
	public String getCs_company_reg_num() {
		return Cs_company_reg_num;
	}
	public void setCs_company_reg_num(String cs_company_reg_num) {
		Cs_company_reg_num = cs_company_reg_num;
	}
	public String getCs_company_name() {
		return Cs_company_name;
	}
	public void setCs_company_name(String cs_company_name) {
		Cs_company_name = cs_company_name;
	}
	public String getCs_detail_addr() {
		return Cs_detail_addr;
	}
	public void setCs_detail_addr(String cs_detail_addr) {
		Cs_detail_addr = cs_detail_addr;
	}
	public String getCs_phonenum() {
		return Cs_phonenum;
	}
	public void setCs_phonenum(String cs_phonenum) {
		Cs_phonenum = cs_phonenum;
	}
	public Date getCs_first_set() {
		return Cs_first_set;
	}
	public void setCs_first_set(Date cs_first_set) {
		Cs_first_set = cs_first_set;
	}
	public Date getCs_regist_date() {
		return Cs_regist_date;
	}
	public void setCs_regist_date(Date cs_regist_date) {
		Cs_regist_date = cs_regist_date;
	}
	public Date getCs_registerd_date() {
		return Cs_registerd_date;
	}
	public void setCs_registerd_date(Date cs_registerd_date) {
		Cs_registerd_date = cs_registerd_date;
	}
	public String getCs_possession() {
		return Cs_possession;
	}
	public void setCs_possession(String cs_possession) {
		Cs_possession = cs_possession;
	}
	public int getCs_land_area() {
		return Cs_land_area;
	}
	public void setCs_land_area(int cs_land_area) {
		Cs_land_area = cs_land_area;
	}
	public int getCs_building_area() {
		return Cs_building_area;
	}
	public void setCs_building_area(int cs_building_area) {
		Cs_building_area = cs_building_area;
	}
	public int getCs_num_people() {
		return Cs_num_people;
	}
	public void setCs_num_people(int cs_num_people) {
		Cs_num_people = cs_num_people;
	}
	public int getCs_over_building_size() {
		return Cs_over_building_size;
	}
	public void setCs_over_building_size(int cs_over_building_size) {
		Cs_over_building_size = cs_over_building_size;
	}
	public int getCs_over_people() {
		return Cs_over_people;
	}
	public void setCs_over_people(int cs_over_people) {
		Cs_over_people = cs_over_people;
	}
	String Cs_possession;
	int Cs_land_area;
	int Cs_building_area;
	int Cs_num_people;
	int Cs_over_building_size;
	int Cs_over_people;
}
