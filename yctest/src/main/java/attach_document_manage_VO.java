import java.io.File;

public class attach_document_manage_VO {
	private String Cor_Reg_Number;
	private String Cor_infor;
	private String Format_class;
	private File File_attach;
	public String getCor_Reg_Number() {
		return Cor_Reg_Number;
	}
	public void setCor_Reg_Number(String cor_Reg_Number) {
		Cor_Reg_Number = cor_Reg_Number;
	}
	public String getCor_infor() {
		return Cor_infor;
	}
	public void setCor_infor(String cor_infor) {
		Cor_infor = cor_infor;
	}
	public String getFormat_class() {
		return Format_class;
	}
	public void setFormat_class(String format_class) {
		Format_class = format_class;
	}
	public File getFile_attach() {
		return File_attach;
	}
	public void setFile_attach(File file_attach) {
		File_attach = file_attach;
	}
	
}
