package org.gr.comeco.dao.impl;

import java.sql.Connection;
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
		return null;
	
	}
}
