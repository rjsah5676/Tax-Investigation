package question;

import java.sql.Date;

public class quesVO {
	private int noticeboard_num;
	private String ques_title;
	private Date ques_regisdate;
	private String ques_content;
	private String ques_ans;
	private int ques_viewnum;
	
	public int getNoticeboard_num() {
		return noticeboard_num;
	}
	public void setNoticeboard_num(int noticeboard_num) {
		this.noticeboard_num = noticeboard_num;
	}
	public String getQues_title() {
		return ques_title;
	}
	public void setQues_title(String ques_title) {
		this.ques_title = ques_title;
	}
	public Date getQues_regisdate() {
		return ques_regisdate;
	}
	public void setQues_regisdate(Date ques_regisdate) {
		this.ques_regisdate = ques_regisdate;
	}
	public String getQues_content() {
		return ques_content;
	}
	public void setQues_content(String ques_content) {
		this.ques_content = ques_content;
	}
	public String getQues_ans() {
		return ques_ans;
	}
	public void setQues_ans(String ques_ans) {
		this.ques_ans = ques_ans;
	}
	public int getQues_viewnum() {
		return ques_viewnum;
	}
	public void setQues_viewnum(int ques_viewnum) {
		this.ques_viewnum = ques_viewnum;
	}
	
	
	
}
