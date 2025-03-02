package archives;
import java.sql.Date;

public class archivesVO {
	private int form_id;
	private String form_title;
	private String form_file; 
	private String form_fileName;
	private Date form_regisdate;
	private String form_content;
	public int getForm_id() {
		return form_id;
	}
	public void setForm_id(int form_id) {
		this.form_id = form_id;
	}
	public String getForm_title() {
		return form_title;
	}
	public void setForm_title(String form_title) {
		this.form_title = form_title;
	}
	public String getForm_file() {
		return form_file;
	}
	public void setForm_file(String form_file) {
		this.form_file = form_file;
	}
	public String getForm_fileName() {
		return form_fileName;
	}
	public void setForm_fileName(String form_fileName) {
		this.form_fileName = form_fileName;
	}
	public Date getForm_regisdate() {
		return form_regisdate;
	}
	public void setForm_regisdate(Date form_regisdate) {
		this.form_regisdate = form_regisdate;
	}
	public String getForm_content() {
		return form_content;
	}
	public void setForm_content(String form_content) {
		this.form_content = form_content;
	}
	
	
}
