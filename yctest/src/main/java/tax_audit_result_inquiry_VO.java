import java.sql.Date;

public class tax_audit_result_inquiry_VO {
	private String Cor_Select;
	private int Start_Sur_Year;
	private int End_Sur_Year;
	private String Cor_Reg_Number;
	private String Jurisdic;
	private String Sur_year;
	private String Cor_name;
	private Date Inform_date;
	private int Inform_num;
	
	public String getCor_Select() {
		return Cor_Select;
	}
	public void setCor_Select(String cor_Select) {
		Cor_Select = cor_Select;
	}
	public int getStart_Sur_Year() {
		return Start_Sur_Year;
	}
	public void setStart_Sur_Year(int start_Sur_Year) {
		Start_Sur_Year = start_Sur_Year;
	}
	public int getEnd_Sur_Year() {
		return End_Sur_Year;
	}
	public void setEnd_Sur_Year(int end_Sur_Year) {
		End_Sur_Year = end_Sur_Year;
	}
	public String getCor_Reg_Number() {
		return Cor_Reg_Number;
	}
	public void setCor_Reg_Number(String cor_Reg_Number) {
		Cor_Reg_Number = cor_Reg_Number;
	}
	public String getJurisdic() {
		return Jurisdic;
	}
	public void setJurisdic(String jurisdic) {
		Jurisdic = jurisdic;
	}
	public String getSur_year() {
		return Sur_year;
	}
	public void setSur_year(String sur_year) {
		Sur_year = sur_year;
	}
	public String getCor_name() {
		return Cor_name;
	}
	public void setCor_name(String cor_name) {
		Cor_name = cor_name;
	}
	public Date getInform_date() {
		return Inform_date;
	}
	public void setInform_date(Date inform_date) {
		Inform_date = inform_date;
	}
	public int getInform_num() {
		return Inform_num;
	}
	public void setInform_num(int inform_num) {
		Inform_num = inform_num;
	} 
	
}
