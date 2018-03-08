package com.amumu.companyamumu.dao;

import java.util.List;

import com.amumu.companyamumu.entity.Users;

public class UserDAO {

	/**
	 * 根据用户名和密码，查找相关用户信�?
	 * 
	 * @param userName
	 * @param password
	 * @return 用户对象
	 */
	public Users findUser(String username, String password) {
		
		Users user = null;
		
		String sql = "SELECT * FROM users"
				+ " WHERE userName=? AND password=?";
		
		Object[] params = { username, password};
		
		List<Users>users = BaseDAO.find(sql, params, Users.class);
		if(users.size()>0) {
			user = users.get(0);
		}
		
		return user;
	}
	
	/**
	 * 判断数据库中当前用户名是否存�?
	 * @param username 用户�?
	 * @return 存在返回true,否则返回false
	 */
	public boolean findUser(String username) {
		
		String sql = "SELECT * FROM users"
				+ " WHERE username= ? ";
		
		Object[] params = { username};
		
		List<Users>users = BaseDAO.find(sql, params,Users.class);
		if (users.size()>0) {
			return true;
		}
		
		return false;
	}
	
	/**
	 * 添加用户信息
	 * @param username
	 * @param password
	 * @return 操作数据库影响行�?
	 */
	public int insertUser(String username,String password,int status) {
		
		String sql = "INSERT INTO"
				+ " users(username,password,status)"
				+ " VALUES(?,?,?) ";
		Object[] params = {username,password,status};
		
		return BaseDAO.executeUpdate(sql, params);
		
	}
	
	/**
	 * 查找�?有的注册用户信息
	 * @return 用户列表
	 */
	public List<Users> selectAllUser(){
		String sql = "SELECT * FROM users";
		Object[] params = {};
		return BaseDAO.find(sql, params, Users.class);
	}
	
	/**
	 * 根据用户ID,进行删除操作
	 * @param userID
	 * @return 执行SQL语句�?影响的数据库行数
	 */
	public int deleteUserByID(String userID) {
		String sql = "DELETE FROM users"
				+ " WHERE userID = ? ";
		
		Object[] params= {userID};
		return BaseDAO.executeUpdate(sql, params);
	}
}
