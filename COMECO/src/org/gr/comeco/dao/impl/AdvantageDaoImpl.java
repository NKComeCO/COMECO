package org.gr.comeco.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.gr.comeco.dao.IAdvantageDao;
import org.gr.comeco.dao.IRecruitDao;
import org.gr.comeco.db.ConnectionManager;
import org.gr.comeco.db.DBUtils;
import org.gr.comeco.po.Advantage;
import org.gr.comeco.po.Recruit;

public class AdvantageDaoImpl implements IAdvantageDao {

	private ConnectionManager connectionManager;
	private Connection connection;
	private DBUtils dbUtils;

	public AdvantageDaoImpl() {
		super();
		// TODO Auto-generated constructor stub
		this.connectionManager = new ConnectionManager();
		this.dbUtils = new DBUtils();
		connection = null;
	}

	@Override
	public List<Advantage> selectAll() {
		// TODO Auto-generated method stub

		// 步骤1：获取一个数据库连接对象
		this.connection = connectionManager.openConnection();
		// 步骤2：创建SQL语句模板
		String strSQL = "select * from advantage";
		Object[] params = new Object[] {};
		// 步骤4：调用dbutils中的方法完成对数据库的查询操作
		ResultSet resultSet = this.dbUtils
				.execQuery(connection, strSQL, params);
		ArrayList<Advantage> arrayList=new ArrayList<Advantage>();

		try {
			while (resultSet.next()) {
				// 步骤6：创建一个对象

				Advantage advantage = new Advantage();
				advantage.setId(resultSet.getInt(1));
				advantage.setName(resultSet.getString(2));
				// 步骤7：返回对象
				arrayList.add(advantage);
			} 
			return arrayList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			this.connectionManager.closeConnection(connection);
		}
	}

}
