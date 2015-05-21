package org.gr.comeco.po;

public class recruit {
	private int id,teamid;
	private String intro,contact;
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
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	@Override
	public String toString() {
		return "recruit [id=" + id + ", teamid=" + teamid + ", intro=" + intro
				+ ", contact=" + contact + "]";
	}
	
	
}
