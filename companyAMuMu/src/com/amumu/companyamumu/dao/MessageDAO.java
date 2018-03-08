package com.amumu.companyamumu.dao;

import java.util.List;

import com.amumu.companyamumu.entity.Message;

public class MessageDAO {

	public int insertMessage(Message message) {
		String sql = "INSERT INTO"
				+ " message(title,content,write,writeDate,count)"
				+ " VALUES(?,?,?,now(),0)";
		Object[] params = {message.getTitle(),
							message.getContent(),
							message.getWriter() };
		return BaseDAO.executeUpdate(sql, params);
	}
	
	public List<Message> selectMessage() {
		String sql="SELECT * FROM message ";
		Object[] params = {};
		return BaseDAO.find(sql, params, Message.class);
	}
	
	public Message selectMessageByID(String messageID) {
		Message message = null;
		String sql="SELECT * FROM message"
				+ " WHERE messageID = ? ";
		Object[] params = {messageID};
		List<Message> messages = BaseDAO.find(sql, params, Message.class);
		if(messages.size()>0) {
			message = messages.get(0);
		}
		return message;
	}
	
	public int updateCount(String messageID) {
		String sql = "UPDATE message"
				+ " SET count=count+1"
				+ " WHERE messageID= ? ";
		Object[] params = {messageID};
		
		return BaseDAO.executeUpdate(sql, params);
	}
}
