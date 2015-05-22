package org.gr.comeco.dao;

import java.util.List;

import org.gr.comeco.po.Recruit;

public interface IRecruitDao {
	public abstract int insert(final Recruit r);
	public abstract Recruit selectById(final int id);
	public abstract List<Recruit> selectAll();
}
