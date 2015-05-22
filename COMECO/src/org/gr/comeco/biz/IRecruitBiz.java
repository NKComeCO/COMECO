package org.gr.comeco.biz;

import java.util.List;

import org.gr.comeco.po.Recruit;


public interface IRecruitBiz {
	public List<Recruit> searchNew();
	public List<Recruit> searchByTeamname(String name);

}
