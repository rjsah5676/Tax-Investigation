import java.sql.Date;

public class form_archives_VO {
	private String archive_name;
	private String archive_file;
	private Date Archiv_regisdate;
	
	public String getArchive_name() {
		return archive_name;
	}
	public void setArchive_name(String archive_name) {
		this.archive_name = archive_name;
	}
	public String getArchive_file() {
		return archive_file;
	}
	public void setArchive_file(String archive_file) {
		this.archive_file = archive_file;
	}
	public Date getArchiv_regisdate() {
		return Archiv_regisdate;
	}
	public void setArchiv_regisdate(Date archiv_regisdate) {
		Archiv_regisdate = archiv_regisdate;
	}
	
}
