import java.sql.Date;

public class agent_management_VO {
	private String Cor_Reg_Number;
	private String Prv_company_reg_num;
	private Date Surrogate_end_date;
	private String Agent_name;
	private String Prv_company_name;
	private String Agent_addr;
	private String Agent_num;
	
	public String getCor_Reg_Number() {
		return Cor_Reg_Number;
	}
	public void setCor_Reg_Number(String cor_Reg_Number) {
		Cor_Reg_Number = cor_Reg_Number;
	}
	public String getPrv_company_reg_num() {
		return Prv_company_reg_num;
	}
	public void setPrv_company_reg_num(String prv_company_reg_num) {
		Prv_company_reg_num = prv_company_reg_num;
	}
	public Date getSurrogate_end_date() {
		return Surrogate_end_date;
	}
	public void setSurrogate_end_date(Date surrogate_end_date) {
		Surrogate_end_date = surrogate_end_date;
	}
	public String getAgent_name() {
		return Agent_name;
	}
	public void setAgent_name(String agent_name) {
		Agent_name = agent_name;
	}
	public String getPrv_company_name() {
		return Prv_company_name;
	}
	public void setPrv_company_name(String prv_company_name) {
		Prv_company_name = prv_company_name;
	}
	public String getAgent_addr() {
		return Agent_addr;
	}
	public void setAgent_addr(String agent_addr) {
		Agent_addr = agent_addr;
	}
	public String getAgent_num() {
		return Agent_num;
	}
	public void setAgent_num(String agent_num) {
		Agent_num = agent_num;
	}
	
	
}
