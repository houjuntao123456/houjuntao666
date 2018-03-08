package com.amumu.companyamumu.dao;

import java.util.List;

import com.amumu.companyamumu.entity.Users;

public class BackDAOimpl {


	public Users doLogin(String username, String password) {
		Users user = null;
		// sql语句
		String sql = "select * from company.users where username = ? and password = ?";
		// 参数数组
		Object[] params = { username, password };
		// 通用方法查询方法 获取用户集合
		List<Users> users = BaseDAO.find(sql, params, Users.class);
		// 集合中只有一个对象，回去该对象返回即可
		if (users.size() > 0) {
			user = users.get(0);
		}
		return user;
	}


	public int add(Users users) {
		// SQL语句
		String sql = "INSERT INTO `USERS`(username,password,status) VALUES(?,?,1)";
		// 参数数组
		Object[] params = { users.getUsername(), users.getPassword() };

		// 执行BaseDAO类通用的增删改方法
		return BaseDAO.executeUpdate(sql, params);
	}


	public List<Users> search() {
		// SQL语句
		String sql = "SELECT * FROM users";
		// 参数数组
		Object[] params = {};

		// 执行BaseDAO类通用的查询方法
		return BaseDAO.find(sql, params, Users.class);
	}

	public int delete(String username) {
		// SQL语句
		String sql = "DELETE FROM users WHERE username = ? ";
		// 参数数组
		Object[] params = {username };

		// 执行BaseDAO类通用的增删改方法
		return BaseDAO.executeUpdate(sql, params);
	}

}
