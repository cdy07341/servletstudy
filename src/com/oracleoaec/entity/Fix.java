package com.oracleoaec.entity;

/*创建一个遵循javabean的实体类:
HP报修中心的报修页面
电脑型号:
客户姓名:
联系方式:
联系地址:
日期:
报修的详情:*/
public class Fix {
	private String type;
	private String name;
	private String tell;
	private String addr;
	private String time;
	private String comments;
	public Fix() {
		super();
	}
	public Fix(String type, String name, String tell, String addr, String time, String comments) {
		super();
		this.type = type;
		this.name = name;
		this.tell = tell;
		this.addr = addr;
		this.time = time;
		this.comments = comments;
	}
	public String getType() {
		System.out.println("getType()");
		return type;
	}
	public void setType(String type) {
		System.out.println("setType(String type)");
		this.type = type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTell() {
		return tell;
	}
	public void setTell(String tell) {
		this.tell = tell;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	@Override
	public String toString() {
		return "Fix [type=" + type + ", name=" + name + ", tell=" + tell + ", addr=" + addr + ", time=" + time
				+ ", comments=" + comments + "]";
	}
	

	
}











