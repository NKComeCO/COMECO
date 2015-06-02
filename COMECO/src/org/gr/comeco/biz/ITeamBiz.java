package org.gr.comeco.biz;

import java.util.List;

import org.gr.comeco.po.Team;
import org.gr.comeco.po.Type;
import org.gr.comeco.po.User;

public interface ITeamBiz {
	public abstract boolean addTeam(Team team);

	public abstract Team searchById(int id);

	public abstract List<Team> searchByName(String name);

	public abstract List<Team> searchByLeader(int id);

	public abstract List<Team> searchByMember(int id);

	public abstract List<Type> searchType(int id);

	public abstract List<User> searchMember(int id);

	public abstract boolean deleteTeam(int id);

	public abstract boolean deleteMember(int tid,int uid);
}
