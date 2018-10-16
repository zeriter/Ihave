package com.myhave.old.domain;
/**
 * 旧物信息类
 * @author 皇家科研小组
 * @version 1.0
 *  
 *
 */

public class Old {
     private int id;
     private String url;
     private int price;
     private String word;
     private int userid;
     private String kind;
     private String name;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getWord() {
		return word;
	}
	public void setWord(String word) {
		this.word = word;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	@Override
	public String toString() {
		return "Old [id=" + id + ", url=" + url + ", price=" + price + ", word=" + word + ", userid=" + userid
				+ ", kind=" + kind + ", name=" + name + "]";
	}
     

}
