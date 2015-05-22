package org.gr.comeco.dao;

import org.gr.comeco.po.Team;

public interface ITeamDao {
	public abstract Team selectById(int id);
}
