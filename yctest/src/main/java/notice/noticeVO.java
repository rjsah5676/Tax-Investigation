package notice;
import java.sql.Date;

public class noticeVO {
	private int noticeboard_num;
	private String notice_title;
	private int notice_viewnum; 
	private Date notice_regisdate;
	private String notice_fileName;
	private String notice_file;
	private String notice_content;
	public int getNoticeboard_num() {
		return noticeboard_num;
	}
	public void setNoticeboard_num(int noticeboard_num) {
		this.noticeboard_num = noticeboard_num;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public int getNotice_viewnum() {
		return notice_viewnum;
	}
	public void setNotice_viewnum(int notice_viewnum) {
		this.notice_viewnum = notice_viewnum;
	}
	public Date getNotice_regisdate() {
		return notice_regisdate;
	}
	public void setNotice_regisdate(Date notice_regisdate) {
		this.notice_regisdate = notice_regisdate;
	}
	public String getNotice_fileName() {
		return notice_fileName;
	}
	public void setNotice_fileName(String notice_fileName) {
		this.notice_fileName = notice_fileName;
	}
	public String getNotice_file() {
		return notice_file;
	}
	public void setNotice_file(String notice_file) {
		this.notice_file = notice_file;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	
	
	
	
}
