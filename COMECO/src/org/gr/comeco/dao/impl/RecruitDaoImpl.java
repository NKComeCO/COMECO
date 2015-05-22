package org.gr.comeco.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.gr.comeco.dao.IRecruitDao;
import org.gr.comeco.db.ConnectionManager;
import org.gr.comeco.db.DBUtils;
import org.gr.comeco.po.Recruit;

public class RecruitDaoImpl implements IRecruitDao {

	private ConnectionManager connectionManager;
	private Connection connection;
	private DBUtils dbUtils;

	public RecruitDaoImpl() {
		super();
		// TODO Auto-generated constructor stub
		this.connectionManager = new ConnectionManager();
		this.dbUtils = new DBUtils();
		connection = null;
	}
	
	@Override
	public int insert(Recruit r) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Recruit selectById(int recruitId) {
		// TODO Auto-generated method stub@Override
		// TODO Auto-generated method stub
		// 步骤1：获取一个数据库连接对象
		this.connection = connectionManager.openConnection();
		// 步骤2：创建SQL语句模板
		String strSQL = "select * from recruit where id=?";
		Object[] params = new Object[] { recruitId };
		// 步骤4：调用dbutils中的方法完成对数据库的查询操作
		ResultSet resultSet = this.dbUtils
				.execQuery(connection, strSQL, params);

		try {
			if (resultSet.next()) {
				// 步骤6：创建一个对象

				Recruit recruit = new Recruit();
				recruit.setId(resultSet.getInt(1));
				recruit.setTeamid(resultSet.getInt(2));
				recruit.setContact(resultSet.getString(3));
				recruit.setIntro(resultSet.getString(4));
				// 步骤7：返回对象
				return recruit;
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
	public List<Recruit> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteById(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Recruit r) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Recruit> selectNew(int number) {
		// TODO Auto-generated method stub
		return null;
	}

}
