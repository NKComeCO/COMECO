package org.gr.comeco.biz.impl;

import java.util.List;

import org.gr.comeco.biz.IUserBiz;
import org.gr.comeco.dao.IAdvantageDao;
import org.gr.comeco.dao.IUserDao;
import org.gr.comeco.dao.impl.AdvantageDaoImpl;
import org.gr.comeco.dao.impl.UserDaoImpl;
import org.gr.comeco.po.Advantage;
import org.gr.comeco.po.User;

public class UserBizImpl implements IUserBiz {
	private IUserDao userDao;
	private IAdvantageDao advantageDao;

	public UserBizImpl() {
		super();
		// TODO Auto-generated constructor stub
		this.userDao=new UserDaoImpl();
		this.advantageDao=new AdvantageDaoImpl();
		
		
		//System.out.println(userDao.selsectByEmail("dgzxczh@163.com"));
	}

	@Override
	public int addUser(User user) {
		// TODO Auto-generated method stub
		return userDao.insert(user);
	}

	@Override
	public User searchByEmail(String email) {
		// TODO Auto-generated method stub
		return userDao.selsectByEmail(email);
	}

	@Override
	public User searchById(int id) {
		// TODO Auto-generated method stub
		return userDao.selectById(id);
	}

	@Override
	public List<User> searchAll() {
		// TODO Auto-generated method stub
		return userDao.selectAll();
	}

	@Override
	public List<User> searchFriends(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> searchByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean changeInfo(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Advantage> searchAllAdvantage() {
		// TODO Auto-generated method stub
		return advantageDao.selectAll();
	}

	@Override
	public List<Advantage> searchAdvantage(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean addFriend(int id1, int id2) {
		// TODO Auto-generated method stub
		return false;
	}

}
