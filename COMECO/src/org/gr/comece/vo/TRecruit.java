package org.gr.comece.vo;

import java.sql.Date;

public class TRecruit {
	private int id, teamid;
	private String intro, contact;
	private String name;
	private int max_mem;
	private int leader_id;
	private String image;
	private Date start_time, end_time;

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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getMax_mem() {
		return max_mem;
	}

	public void setMax_mem(int max_mem) {
		this.max_mem = max_mem;
	}

	public int getLeader_id() {
		return leader_id;
	}

	public void setLeader_id(int leader_id) {
		this.leader_id = leader_id;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Date getStart_time() {
		return start_time;
	}

	public void setStart_time(Date start_time) {
		this.start_time = start_time;
	}

	public Date getEnd_time() {
		return end_time;
	}

	public void setEnd_time(Date end_time) {
		this.end_time = end_time;
	}

}
