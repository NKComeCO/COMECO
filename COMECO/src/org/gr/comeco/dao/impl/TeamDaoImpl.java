package org.gr.comeco.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.gr.comeco.dao.ITeamDao;
import org.gr.comeco.db.ConnectionManager;
import org.gr.comeco.db.DBUtils;
import org.gr.comeco.po.Team;

public class TeamDaoImpl implements ITeamDao {

	private ConnectionManager connectionManager;
	private Connection connection;
	private DBUtils dbUtils;

	public TeamDaoImpl() {
		super();
		// TODO Auto-generated constructor stub
		this.connectionManager = new ConnectionManager();
		this.dbUtils = new DBUtils();
		connection = null;
	}

	@Override
	public Team selectById(int id) {
		// 步骤1：获取一个数据库连接对象
		this.connection = connectionManager.openConnection();
		// 步骤2：创建SQL语句模板
		String strSQL = "select * from team where id=?";
		Object[] params = new Object[] { id };
		// 步骤4：调用dbutils中的方法完成对数据库的查询操作
		ResultSet resultSet = this.dbUtils
				.execQuery(connection, strSQL, params);

		try {
			if (resultSet.next()) {
				// 步骤6：创建一个对象

				Team team = new Team();
				team.setId(resultSet.getInt(1));
				team.setName(resultSet.getString(2));
				team.setStart_time(resultSet.getDate(3));
				team.setEnd_time(resultSet.getDate(4));
				team.setMax_mem(resultSet.getInt(5));
				team.setLeader_id(resultSet.getInt(6));
				team.setImage(resultSet.getString(7));
				// 步骤7：返回对象
				return team;
			} else {
				return null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			this.connectionManager.closeConnection(connection);
		}
	}

	@Override
	public List<Team> selectByName(String name) {
		// 步骤1：获取一个数据库连接对象
		this.connection = connectionManager.openConnection();
		// 步骤2：创建SQL语句模板
		String strSQL = "select * from team where name like '%?%'";
		Object[] params = new Object[] { name };
		// 步骤4：调用dbutils中的方法完成对数据库的查询操作
		ResultSet resultSet = this.dbUtils
				.execQuery(connection, strSQL, params);

		ArrayList<Team> teams = new ArrayList<>();

		try {
			while (resultSet.next()) {
				// 步骤6：创建一个对象

				Team team = new Team();
				team.setId(resultSet.getInt(1));
				team.setName(resultSet.getString(2));
				team.setStart_time(resultSet.getDate(3));
				team.setEnd_time(resultSet.getDate(4));
				team.setMax_mem(resultSet.getInt(5));
				team.setLeader_id(resultSet.getInt(6));
				team.setImage(resultSet.getString(7));
				// 步骤7：返回对象
				teams.add(team);
			}
			return teams;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			this.connectionManager.closeConnection(connection);
		}
	}

	@Override
	public List<Team> selectByLeader(int id) {
		// 步骤1：获取一个数据库连接对象
				this.connection = connectionManager.openConnection();
				// 步骤2：创建SQL语句模板
				String strSQL = "select * from team where id=?";
				Object[] params = new Object[] { id };
				// 步骤4：调用dbutils中的方法完成对数据库的查询操作
				ResultSet resultSet = this.dbUtils
						.execQuery(connection, strSQL, params);

				ArrayList<Team> teams = new ArrayList<>();

				try {
					while (resultSet.next()) {
						// 步骤6：创建一个对象

						Team team = new Team();
						team.setId(resultSet.getInt(1));
						team.setName(resultSet.getString(2));
						team.setStart_time(resultSet.getDate(3));
						team.setEnd_time(resultSet.getDate(4));
						team.setMax_mem(resultSet.getInt(5));
						team.setLeader_id(resultSet.getInt(6));
						team.setImage(resultSet.getString(7));
						// 步骤7：返回对象
						teams.add(team);
					}
					return teams;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return null;
				} finally {
					this.connectionManager.closeConnection(connection);
				}
	}
}
