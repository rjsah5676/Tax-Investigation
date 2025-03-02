package agent;

import java.sql.Date;

public class agentVO {
	private String Cor_Reg_Number;
	private String Agent_Cor_Reg_Number;
	private Date end_date;
	public String getCor_Reg_Number() {
		return Cor_Reg_Number;
	}
	public void setCor_Reg_Number(String cor_Reg_Number) {
		Cor_Reg_Number = cor_Reg_Number;
	}
	public String getAgent_Cor_Reg_Number() {
		return Agent_Cor_Reg_Number;
	}
	public void setAgent_Cor_Reg_Number(String agent_Cor_Reg_Number) {
		Agent_Cor_Reg_Number = agent_Cor_Reg_Number;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	
	

}
