package resident;

import java.sql.Date;

public class resident_tax_VO {
	String Cor_Reg_Number; String Bus_name; String Location;
	Date Business_startdate; Date Business_year;
	float Storyarea ; float Dormitory;
	float Cafeteria; float Etc;
	float Taxablearea; int Justifiable_tax;
	int Prep_tax; Date Pay_Date;
	int Borrowing_tax;
	public String getCor_Reg_Number() {
		return Cor_Reg_Number;
	}
	public void setCor_Reg_Number(String cor_Reg_Number) {
		Cor_Reg_Number = cor_Reg_Number;
	}
	public String getBus_name() {
		return Bus_name;
	}
	public void setBus_name(String bus_name) {
		Bus_name = bus_name;
	}
	public String getLocation() {
		return Location;
	}
	public void setLocation(String location) {
		Location = location;
	}
	public Date getBusiness_startdate() {
		return Business_startdate;
	}
	public void setBusiness_startdate(Date business_startdate) {
		Business_startdate = business_startdate;
	}
	public Date getBusiness_year() {
		return Business_year;
	}
	public void setBusiness_year(Date business_year) {
		Business_year = business_year;
	}
	public float getStoryarea() {
		return Storyarea;
	}
	public void setStoryarea(float storyarea) {
		Storyarea = storyarea;
	}
	public float getDormitory() {
		return Dormitory;
	}
	public void setDormitory(float dormitory) {
		Dormitory = dormitory;
	}
	public float getCafeteria() {
		return Cafeteria;
	}
	public void setCafeteria(float cafeteria) {
		Cafeteria = cafeteria;
	}
	public float getEtc() {
		return Etc;
	}
	public void setEtc(float etc) {
		Etc = etc;
	}
	public float getTaxablearea() {
		return Taxablearea;
	}
	public void setTaxablearea(float taxablearea) {
		Taxablearea = taxablearea;
	}
	public int getJustifiable_tax() {
		return Justifiable_tax;
	}
	public void setJustifiable_tax(int justifiable_tax) {
		Justifiable_tax = justifiable_tax;
	}
	public int getPrep_tax() {
		return Prep_tax;
	}
	public void setPrep_tax(int prep_tax) {
		Prep_tax = prep_tax;
	}
	public Date getPay_Date() {
		return Pay_Date;
	}
	public void setPay_Date(Date pay_Date) {
		Pay_Date = pay_Date;
	}
	public int getBorrowing_tax() {
		return Borrowing_tax;
	}
	public void setBorrowing_tax(int borrowing_tax) {
		Borrowing_tax = borrowing_tax;
	}
}
