package com.amumu.companyamumu.entity;

public class messageBoard {
	private int messageID;//id
	private String title;//标题
	private String content;//内容�?
	private String writer;//作�??
	private String writeDate;//留言时间�?
	private int count;//回复次数�?
	/**
	 * 
	 */
	public messageBoard() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param messageID
	 * @param title
	 * @param content
	 * @param writer
	 * @param writeDate
	 * @param count
	 */
	public messageBoard(int messageID, String title, String content, String writer, String writeDate, int count) {
		super();
		this.messageID = messageID;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.writeDate = writeDate;
		this.count = count;
	}
	/**
	 * @return the messageID
	 */
	public int getMessageID() {
		return messageID;
	}
	/**
	 * @param messageID the messageID to set
	 */
	public void setMessageID(int messageID) {
		this.messageID = messageID;
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
	 * @return the writer
	 */
	public String getWriter() {
		return writer;
	}
	/**
	 * @param writer the writer to set
	 */
	public void setWriter(String writer) {
		this.writer = writer;
	}
	/**
	 * @return the writeDate
	 */
	public String getWriteDate() {
		return writeDate;
	}
	/**
	 * @param writeDate the writeDate to set
	 */
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
	/**
	 * @return the count
	 */
	public int getCount() {
		return count;
	}
	/**
	 * @param count the count to set
	 */
	public void setCount(int count) {
		this.count = count;
	}
	
}
