package org.gr.comeco.biz;

import java.util.List;

import org.gr.comeco.po.Team;

public interface ITeamBiz {
	public abstract Team SearchById(int id);
	public abstract List<Team> SearchByName(String name);
	public abstract List<Team> SearchByLeader(int id);
	public abstract List<Team> SearchByMember(int id);
}
