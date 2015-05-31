package org.gr.comeco.biz;

import java.util.List;

import org.gr.comece.vo.TRecruit;
import org.gr.comeco.po.Recruit;


public interface IRecruitBiz {
	public List<TRecruit> searchNew();
	public List<Recruit> searchByTeamname(String name);

}
