package org.gr.comeco.dao;

import java.util.List;

import org.gr.comece.vo.TRecruit;
import org.gr.comeco.po.Recruit;

public interface IRecruitDao {
	public abstract int insert(final Recruit r);

	public abstract Recruit selectById(final int id);

	public abstract List<Recruit> selectAll();

	public abstract List<TRecruit> selectNew(final int number);

	public abstract int deleteById(final int id);

	public abstract int update(final Recruit r);
}
