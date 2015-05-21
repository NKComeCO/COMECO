package org.gr.comeco.dao;

import java.util.List;

import org.gr.comeco.po.User;


public interface IUserDao {
public abstract int insert(final User user);
public abstract int deleteById(final int userId);
public abstract int update(final User user);
public abstract List<User> selectAll();
public abstract User selectById(final int userId);
public abstract User selsectByEmail(final String email);
public abstract boolean updatePassword(final int userId,String nPassword);
}
