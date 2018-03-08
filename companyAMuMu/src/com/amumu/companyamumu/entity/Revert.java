package com.amumu.companyamumu.entity;

public class Revert {
	private int revertID;
	private int messageID;
	private String content;
	private String writer;
	private String writeDate;
	public Revert(int revertID, int messageID, String content, String writer, String writeDate) {
		super();
		this.revertID = revertID;
		this.messageID = messageID;
		this.content = content;
		this.writer = writer;
		this.writeDate = writeDate;
	}
	public Revert() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @return the revertID
	 */
	public int getRevertID() {
		return revertID;
	}
	/**
	 * @param revertID the revertID to set
	 */
	public void setRevertID(int revertID) {
		this.revertID = revertID;
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
	
}
