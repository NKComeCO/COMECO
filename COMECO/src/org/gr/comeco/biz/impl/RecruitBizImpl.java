package org.gr.comeco.biz.impl;

import java.util.List;

import org.gr.comece.vo.TRecruit;
import org.gr.comeco.biz.IRecruitBiz;
import org.gr.comeco.dao.IRecruitDao;
import org.gr.comeco.dao.IUserDao;
import org.gr.comeco.dao.impl.RecruitDaoImpl;
import org.gr.comeco.po.Recruit;

public class RecruitBizImpl implements IRecruitBiz {

	private IRecruitDao recruitDao;
	
	public RecruitBizImpl() {
		super();
		// TODO Auto-generated constructor stub
		recruitDao=new RecruitDaoImpl();
	}

	@Override
	public List<TRecruit> searchNew(int num) {
		// TODO Auto-generated method stub
		return recruitDao.selectNew(num);
	}

	@Override
	public List<Recruit> searchByTeamname(String name) {
		// TODO Auto-generated method stub
		return null;
	}

}
