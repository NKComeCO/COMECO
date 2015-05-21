package org.gr.comeco.biz;

import org.gr.comeco.po.User;


public interface IUserBiz {

	int addUser(final User user);

	User searchByEmail(final String email);
	
	User searchById(final int id);
}
