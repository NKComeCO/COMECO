package org.gr.comeco.dao;

import java.util.List;

import org.gr.comeco.po.Member;

public interface IMemberDao {
	
	public abstract List<Member> selectByMem(int id);

}
