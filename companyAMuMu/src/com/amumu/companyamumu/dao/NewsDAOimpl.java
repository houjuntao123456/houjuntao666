package com.amumu.companyamumu.dao;

import java.util.List;


import com.amumu.companyamumu.entity.News;

public class NewsDAOimpl {


	public int insertNews(News news) {
		String sql = "INSERT INTO news(title,content,writerDate) VALUES(?,?,now())";

		Object[] params = { news.getTitle(), news.getContent() };

		return BaseDAO.executeUpdate(sql, params);

	}


	public int deleteNewsByID(String newsID) {
		String sql = "DELETE FROM news WHERE newsID = ? ";

		Object[] params = {newsID };

		return BaseDAO.executeUpdate(sql, params);

	}


	public List<News> FinNews() {
		String sql = "SELECT * FROM news ORDER BY newsID DESC ";

		Object[] params = {};

		return BaseDAO.find(sql, params, News.class);
	}

}
