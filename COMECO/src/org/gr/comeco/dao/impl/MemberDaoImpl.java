package org.gr.comeco.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.gr.comeco.dao.IMemberDao;
import org.gr.comeco.db.ConnectionManager;
import org.gr.comeco.db.DBUtils;
import org.gr.comeco.po.Advantage;
import org.gr.comeco.po.Member;

public class MemberDaoImpl implements IMemberDao {

	private ConnectionManager connectionManager;
	private Connection connection;
	private DBUtils dbUtils;

	public MemberDaoImpl() {
		super();
		// TODO Auto-generated constructor stub
		this.connectionManager = new ConnectionManager();
		this.dbUtils = new DBUtils();
		connection = null;
	}
	
	@Override
	public List<Member> selectByMem(int id) {
		// 步骤1：获取一个数据库连接对象
		this.connection = connectionManager.openConnection();
		// 步骤2：创建SQL语句模板
		String strSQL = "select * from member where user_id=?";
		Object[] params = new Object[] {id};
		// 步骤4：调用dbutils中的方法完成对数据库的查询操作
		ResultSet resultSet = this.dbUtils
				.execQuery(connection, strSQL, params);
		ArrayList<Member> members = new ArrayList<Member>();

		try {
			while (resultSet.next()) {
				// 步骤6：创建一个对象

				Member member = new Member();
				member.setId(resultSet.getInt(1));
				member.setTeamid(resultSet.getInt(2));
				member.setUserid(resultSet.getInt(3));
				// 步骤7：返回对象
				members.add(member);
			}
			return members;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			this.connectionManager.closeConnection(connection);
		}
	}

}
