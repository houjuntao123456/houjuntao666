package com.amumu.companyamumu.dao;

import java.util.List;

import com.amumu.companyamumu.entity.Users;

public class BackDAOimpl {


	public Users doLogin(String username, String password) {
		Users user = null;
		// sql���
		String sql = "select * from company.users where username = ? and password = ?";
		// ��������
		Object[] params = { username, password };
		// ͨ�÷�����ѯ���� ��ȡ�û�����
		List<Users> users = BaseDAO.find(sql, params, Users.class);
		// ������ֻ��һ�����󣬻�ȥ�ö��󷵻ؼ���
		if (users.size() > 0) {
			user = users.get(0);
		}
		return user;
	}


	public int add(Users users) {
		// SQL���
		String sql = "INSERT INTO `USERS`(username,password,status) VALUES(?,?,1)";
		// ��������
		Object[] params = { users.getUsername(), users.getPassword() };

		// ִ��BaseDAO��ͨ�õ���ɾ�ķ���
		return BaseDAO.executeUpdate(sql, params);
	}


	public List<Users> search() {
		// SQL���
		String sql = "SELECT * FROM users";
		// ��������
		Object[] params = {};

		// ִ��BaseDAO��ͨ�õĲ�ѯ����
		return BaseDAO.find(sql, params, Users.class);
	}

	public int delete(String username) {
		// SQL���
		String sql = "DELETE FROM users WHERE username = ? ";
		// ��������
		Object[] params = {username };

		// ִ��BaseDAO��ͨ�õ���ɾ�ķ���
		return BaseDAO.executeUpdate(sql, params);
	}

}
