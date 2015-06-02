package org.gr.comeco.biz.impl;

import java.util.List;

import org.gr.comeco.biz.ITeamBiz;
import org.gr.comeco.po.Team;
import org.gr.comeco.po.Type;
import org.gr.comeco.po.User;

public class TeamBizImpl implements ITeamBiz {

	@Override
	public Team searchById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Team> searchByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Team> searchByLeader(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Team> searchByMember(int id) {
		// TODO Auto-generated method stub
		return null;
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

}
