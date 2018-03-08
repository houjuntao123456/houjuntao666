package com.amumu.companyamumu.dao;

import java.util.List;

import com.amumu.companyamumu.entity.messageBoard;
import com.amumu.companyamumu.entity.Revert;

public class messageBoardDAO {
	//查询全部
	public List<messageBoard>All(){
		String sql ="select * from MESSAGE";
		 Object[] params ={};
		 List<messageBoard>All = BaseDAO.find(sql, params, messageBoard.class);
		 return All;
	}
	//通过id查询
	public messageBoard xxmessageID(String messageID){
		messageBoard mb = null;
		String sql ="SELECT * FROM MESSAGE"
				+ " WHERE messageID = ? ";
		Object[]params ={messageID};
		//调用baseDAO
		List<messageBoard>mm =BaseDAO.find(sql, params, messageBoard.class);
		if (mm.size()> 0) {
			mb = mm.get(0);
		}
		return mb;
	}
	//增加方法
	public int zj(messageBoard message){
		String sql="INSERT INTO"
				+ " message(title,content,writer,writeDate,count)"
				+ " VALUES(?,?,?,now(),0) ";
		Object[] params ={message.getTitle(),message.getContent(),message.getWriter()};
		int zj = BaseDAO.executeUpdate(sql, params);
		return zj;
	}
	//通过id更新
	public int Update(String messageID){
		String sql = "UPDATE message"
				+ " SET count=count+1"
				+ " WHERE messageID= ? ";
		Object[]params = {messageID};
		int update =BaseDAO.executeUpdate(sql, params);
		return update;
	}
}
