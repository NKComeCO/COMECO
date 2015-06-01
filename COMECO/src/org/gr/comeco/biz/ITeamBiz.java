package org.gr.comeco.biz;

import java.util.List;

import org.gr.comeco.po.Team;

public interface ITeamBiz {
	public abstract boolean addTeam(Team team);

	public abstract Team searchById(int id);

	public abstract List<Team> searchByName(String name);

	public abstract List<Team> searchByLeader(int id);

	public abstract List<Team> searchByMember(int id);
}
