package org.gr.comeco.po;

public class Member {
	private int id;
	private int teamid;
	private int userid;
	public Member() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTeamid() {
		return teamid;
	}
	public void setTeamid(int teamid) {
		this.teamid = teamid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	@Override
	public String toString() {
		return "member [id=" + id + ", teamid=" + teamid + ", userid=" + userid
				+ "]";
	}
	
}
