package QnA;

import java.sql.Date;

public class qnaVO {
	private int noticeboard_num;
	private String QnA_open_chk;
	private Date QnA_regisdate;
	private String QnA_Writer;
	private String QnA_Pw;
	private String QnA_email;
	private String QnA_place;
	private String QnA_phone;
	private String QnA_title;
	private String QnA_content;
	private int QnA_viewnum;
	private String QnA_reply;
	
	public int getNoticeboard_num() {
		return noticeboard_num;
	}
	public void setNoticeboard_num(int noticeboard_num) {
		this.noticeboard_num = noticeboard_num;
	}
	public String getQnA_open_chk() {
		return QnA_open_chk;
	}
	public void setQnA_open_chk(String qnA_open_chk) {
		QnA_open_chk = qnA_open_chk;
	}
	public Date getQnA_regisdate() {
		return QnA_regisdate;
	}
	public void setQnA_regisdate(Date qnA_regisdate) {
		QnA_regisdate = qnA_regisdate;
	}
	public String getQnA_Writer() {
		return QnA_Writer;
	}
	public void setQnA_Writer(String qnA_Writer) {
		QnA_Writer = qnA_Writer;
	}
	public String getQnA_Pw() {
		return QnA_Pw;
	}
	public void setQnA_Pw(String qnA_Pw) {
		QnA_Pw = qnA_Pw;
	}
	public String getQnA_email() {
		return QnA_email;
	}
	public String getQnA_reply() {
		return QnA_reply;
	}
	public void setQnA_email(String qnA_email) {
		QnA_email = qnA_email;
	}
	public String getQnA_place() {
		return QnA_place;
	}
	public void setQnA_place(String qnA_place) {
		QnA_place = qnA_place;
	}
	public String getQnA_phone() {
		return QnA_phone;
	}
	public void setQnA_phone(String qnA_phone) {
		QnA_phone = qnA_phone;
	}
	public String getQnA_title() {
		return QnA_title;
	}
	public void setQnA_title(String qnA_title) {
		QnA_title = qnA_title;
	}
	public String getQnA_content() {
		return QnA_content;
	}
	public void setQnA_content(String qnA_content) {
		QnA_content = qnA_content;
	}
	public int getQnA_viewnum() {
		return QnA_viewnum;
	}
	public void setQnA_viewnum(int qnA_viewnum) {
		QnA_viewnum = qnA_viewnum;
	}
	public void setQnA_reply(String qnA_reply) {
		QnA_reply = qnA_reply;
	}
	
}
