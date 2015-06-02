package org.gr.comeco.biz.impl;

import java.util.ArrayList;
import java.util.List;

import org.gr.comeco.biz.ITeamBiz;
import org.gr.comeco.dao.IMemberDao;
import org.gr.comeco.dao.ITeamDao;
import org.gr.comeco.dao.impl.MemberDaoImpl;
import org.gr.comeco.dao.impl.TeamDaoImpl;
import org.gr.comeco.po.Member;
import org.gr.comeco.po.Team;
import org.gr.comeco.po.Type;
import org.gr.comeco.po.User;

public class TeamBizImpl implements ITeamBiz {
	
	private ITeamDao teamDao;
	private IMemberDao memberDao;
	

	public TeamBizImpl() {
		super();
		this.teamDao = new TeamDaoImpl();
		this.memberDao = new MemberDaoImpl();
	}

	@Override
	public Team searchById(int id) {
		// TODO Auto-generated method stub
		return teamDao.selectById(id);
	}

	@Override
	public List<Team> searchByName(String name) {
		// TODO Auto-generated method stub
		return teamDao.selectByName(name);
	}

	@Override
	public List<Team> searchByLeader(int id) {
		// TODO Auto-generated method stub
		return teamDao.selectByLeader(id);
	}

	@Override
	public List<Team> searchByMember(int id) {
		// TODO Auto-generated method stub
		List<Member> members=memberDao.selectByMem(id);
		ArrayList<Team> teams=new ArrayList<>();
		for(Member m:members){
			teams.add(teamDao.selectById(m.getTeamid()));
		}
		return teams;
	}

	@Override
	public boolean addTeam(Team team) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Type> searchType(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> searchMember(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteTeam(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteMember(int tid, int uid) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean changeInfo(Team team) {
		// TODO Auto-generated method stub
		return false;
	}

}
