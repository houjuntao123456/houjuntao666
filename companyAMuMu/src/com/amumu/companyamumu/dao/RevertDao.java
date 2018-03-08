package com.amumu.companyamumu.dao;

import java.util.List;

import com.amumu.companyamumu.entity.Revert;

public class RevertDao {

	public List<Revert> selectRevertByMessageID(String messageID) {
		// SQL语句
		String sql = "SELECT * FROM revert"
				+ " WHERE messageID = ? ";
		// 参数数组
		Object[] params = { messageID };
		
		// 执行BaseDAO类�?�用的查询方�?
		return BaseDAO.find(sql, params, Revert.class);
	}

	public int insertRevert(Revert revert) {
		// SQL语句
		String sql = "INSERT INTO"
				+ " revert(messageID,content,writer,writeDate)"
				+ " VALUES(?,?,?,now())";
		// 参数数组
		Object[] params =  { revert.getMessageID(),
				revert.getContent(), revert.getWriter() };
		
		// 执行BaseDAO类�?�用的增删改方法
		return BaseDAO.executeUpdate(sql, params);
	}

}
