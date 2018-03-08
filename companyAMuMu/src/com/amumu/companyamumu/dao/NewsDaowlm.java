package com.amumu.companyamumu.dao;

import java.util.List;

import com.amumu.companyamumu.entity.News;

public class NewsDaowlm {

	private final int TOP = 7; // 定义首页上显示新闻的记录数
	public static final int PAGE_NUM = 10;// 定义新闻列表页面显示新闻行数

	/**
	 * 查找所有的新闻
	 * 
	 * @return 新闻的集合
	 */
	public List<News> findAllNews() {
		// SQL语句
		String sql = "SELECT * FROM news"
				+ " ORDER BY newsID DESC ";
		// 参数数组
		Object[] params = {};
		
		// 执行BaseDAO类通用的查询方法
		return BaseDAO.find(sql, params, News.class);
	}

	/**
	 * 查找最新的7条新闻
	 * 
	 * @return 7条新闻的集合
	 */
	public List<News> findNews() {
		// SQL语句
		String sql = "SELECT * FROM news"
				+ " ORDER BY newsID DESC"
				+ " limit 0," + TOP;
		// 参数数组
		Object[] params = {};
		
		// 执行BaseDAO类通用的查询方法
		return BaseDAO.find(sql, params, News.class);
	}

	/**
	 * 根据新闻的ID查找新闻信息
	 * 
	 * @param newsID
	 * @return 与newsID相关的新闻信息对象
	 */
	public News findNewsByID(String newsID) {
		// 新闻对象
		News news = null;
		// SQL语句
		String sql = "SELECT * FROM news"
				+ " WHERE newsID = ? ";
		// 参数数组
		Object[] params = {newsID};
		
		// 执行BaseDAO类通用的查询方法
		List<News> newss = BaseDAO.find(sql, params, News.class);
		if (newss.size() > 0) {
			news = newss.get(0);
		}
		
		return news;
	}

	/**
	 * 实现新闻分页显示
	 * 
	 * @param page 当前页码
	 * 
	 * @return 显示新闻的列表
	 */
	public List<News> showNewsForPage(int pageNo) {
		// 每页第一条记录的索引
		int startIndex = 0;
		if (pageNo > 1) {
			startIndex = PAGE_NUM * (pageNo - 1);
		}
//		String sql = "SELECT top "
//				+ PAGE_NUM
//				+ " * FROM news WHERE  newsID NOT IN ( select top "
//				+ number
//				+ " newsID from news order by newsID desc ) ORDER BY newsID DESC";
		// SQL语句
		String sql = "SELECT * FROM news"
				+ " ORDER BY newsID DESC"
				+ " limit " + startIndex + "," + PAGE_NUM;
		System.out.println(sql);
		// 参数数组
		Object[] params = {};

		// 执行BaseDAO类通用的查询方法
		return BaseDAO.find(sql, params, News.class);
	}

	/**
	 * 根据新闻ID删除相关新闻信息
	 * 
	 * @param newsID 新闻ID
	 * 
	 * @return 执行SQL语句影响数据库的行数
	 */
	public int deleteNewsByID(String newsID) {
		// SQL语句
		String sql = "DELETE FROM news"
				+ " WHERE newsID = ? ";
		// 参数数组
		Object[] params =  { newsID };
		
		// 执行BaseDAO类通用的增删改方法
		return BaseDAO.executeUpdate(sql, params);
	}

	/**
	 * 添加新闻信息
	 * 
	 * @param news 封装了信息的新闻对象
	 * 
	 * @return 执行SQL语句所影响数据库的行数
	 */
	public int insertNews(News news) {
		// SQL语句
		String sql = "INSERT INTO"
				+ " news(title,content,writerDate)"
				+ " VALUES(?,?,now())";
		// 参数数组
		Object[] params = { news.getTitle(), 
							news.getContent() };
		
		// 执行BaseDAO类通用的增删改方法
		return BaseDAO.executeUpdate(sql, params);
	}

}
