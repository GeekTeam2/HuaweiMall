package com.fss.bean;

	
	import java.io.Serializable;
	public class Base<T> implements Serializable{

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;
	
		private Integer code;
		private String msg;
		private User user;
		
		private T content;
		
		
		public User getUser() {
			return user;
		}
		public void setUser(User user) {
			this.user = user;
		}
		public Integer getCode() {
			return code;
		}
		public void setCode(Integer code) {
			this.code = code;
		}
		public String getMsg() {
			return msg;
		}
		public void setMsg(String msg) {
			this.msg = msg;
		}
		public T getContent() {
			return content;
		}
		public void setContent(T content) {
			this.content = content;
		}
		
		
		
		
		
		
		
	

}
