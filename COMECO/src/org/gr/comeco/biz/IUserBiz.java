package org.gr.comeco.biz;

import java.util.List;

import org.gr.comeco.po.Advantage;
import org.gr.comeco.po.Team;
import org.gr.comeco.po.User;

public interface IUserBiz {

	public abstract int addUser(final User user);

	public abstract List<User> searchAll();

	public abstract User searchByEmail(final String email);

	public abstract User searchById(final int id);

	public abstract List<User> searchFriends(final int id);

	public abstract List<Advantage> searchAdvantage();

	public abstract List<User> searchByName(String name);
	
	public abstract boolean changeInfo(User user);
}
