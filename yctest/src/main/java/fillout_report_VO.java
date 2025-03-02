import java.sql.Date;

public class fillout_report_VO {
    private String Cor_Reg_Number;
    private String Jurisdic;
    private String Fill_Compname;
    private Date Fill_start_DeclDuration;
    private Date Fill_end_DeclDuration;
    
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
	public String getFill_Compname() {
		return Fill_Compname;
	}
	public void setFill_Compname(String fill_Compname) {
		Fill_Compname = fill_Compname;
	}
	public Date getFill_start_DeclDuration() {
		return Fill_start_DeclDuration;
	}
	public void setFill_start_DeclDuration(Date fill_start_DeclDuration) {
		Fill_start_DeclDuration = fill_start_DeclDuration;
	}
	public Date getFill_end_DeclDuration() {
		return Fill_end_DeclDuration;
	}
	public void setFill_end_DeclDuration(Date fill_end_DeclDuration) {
		Fill_end_DeclDuration = fill_end_DeclDuration;
	}    
}