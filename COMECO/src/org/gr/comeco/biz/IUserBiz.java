package org.gr.comeco.biz;

import java.util.List;

import org.gr.comeco.po.User;


public interface IUserBiz {

	int addUser(final User user);

	List<User> searchAll();
	
	User searchByEmail(final String email);
	
	User searchById(final int id);
}