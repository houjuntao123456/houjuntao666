package com.amumu.companyamumu.dao;

import java.util.List;

import com.amumu.companyamumu.entity.News;

public class NewsDAO {
	
	private final int TOP = 7;
	public static final int PAGE_NUM = 10;
	
	/**
	 * 查找所有的新闻
	 * 
	 * @return 新闻的集合
	 */
	public List<News> findAllNews() {
		
		String sql = "SELECT * FROM news"
					+ " ORDER BY newsID DESC ";
		
		Object[] params = {};
		
		return BaseDAO.find(sql, params, News.class);
	}
	
	
	/**
	 * 查找最新的七条新闻（在主页显示）
	 * 
	 * @return 七条新闻的集合
	 */
	public List<News> findNews() {
		
		String sql = "SELECT * FROM news"
					+ " ORDER BY newsID DESC"
					+ " limit 0," + TOP;
		
		Object[] params = {};
		
		return BaseDAO.find(sql, params, News.class);
	}
	
	
	/**
	 * 根据新闻的ID查找新闻信息
	 * 
	 * @param newsID
	 * @return 与newsID相关的新闻信息对象
	 */
	public News findNewsByID (String newsID) {
		
		News news = null;
		
		String sql = "SELECT * FROM news"
					+ " WHERE newsID = ? ";
		
		Object[] params = {newsID};
		
		List<News> news2 = BaseDAO.find(sql, params, News.class);
		if (news2.size()>0) {
			news = news2.get(0);
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
	public List<News> showNewsForPage (int pageNo) {
		// 每页第一条记录的索引
		int startIndex = 0;
		if (pageNo>1) {
			startIndex = PAGE_NUM * (pageNo-1);
		}
		
		String sql = "SELECT * FROM news"
				+ " ORDER BY newsID DESC"
				+ " limit " + startIndex 
				+ "," + PAGE_NUM;
		System.out.println(sql);
		
		Object[] params = {};
		
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
		
		String sql = "DELETE FROM news"
				+ " WHERE newsID = ? ";
		
		Object[] params = {newsID};
		
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
		
		String sql = "INSERT INTO"
				+ " news(title,content,writerDate)"
				+ " VALUES(?,?,now())";
		
		Object[] params = {	news.getTitle(),
							news.getContent() };
		
		return BaseDAO.executeUpdate(sql, params);
	}
}
