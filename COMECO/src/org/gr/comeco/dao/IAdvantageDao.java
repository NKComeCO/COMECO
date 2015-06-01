package org.gr.comeco.dao;

import java.util.List;

import org.gr.comeco.po.Advantage;

public interface IAdvantageDao {
	
	public abstract List<Advantage> selectAll();

}
