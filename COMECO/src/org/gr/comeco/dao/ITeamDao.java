package org.gr.comeco.dao;

import java.util.List;

import org.gr.comeco.po.Team;

public interface ITeamDao {
	public abstract Team selectById(int id);
	public abstract List<Team> selectByName(String name);
	public abstract List<Team> selectByLeader(int id);
}
