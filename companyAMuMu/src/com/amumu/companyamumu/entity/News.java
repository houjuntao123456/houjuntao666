package com.amumu.companyamumu.entity;

public class News {
	private int newsID;
	private String title;
	private String content;
	private String writerDate;
	public News() {
		super();
		// TODO Auto-generated constructor stub
	}
	public News(int newsID, String title, String content, String writerDate) {
		super();
		this.newsID = newsID;
		this.title = title;
		this.content = content;
		this.writerDate = writerDate;
	}
	/**
	 * @return the newsID
	 */
	public int getNewsID() {
		return newsID;
	}
	/**
	 * @param newsID the newsID to set
	 */
	public void setNewsID(int newsID) {
		this.newsID = newsID;
	}
	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * @return the content
	 */
	public String getContent() {
		return content;
	}
	/**
	 * @param content the content to set
	 */
	public void setContent(String content) {
		this.content = content;
	}
	/**
	 * @return the writerDate
	 */
	public String getWriterDate() {
		return writerDate;
	}
	/**
	 * @param writerDate the writerDate to set
	 */
	public void setWriterDate(String writerDate) {
		this.writerDate = writerDate;
	}
	
}
