package com.fss.wo;

/**
 * 项目异常类
 * @author fushanshan
 * 
 */
public class WoException extends RuntimeException {

	private static final long serialVersionUID = -7936051408147786087L;

	private WoResultCode code = WoResultCode.getUnknown();

	public WoResultCode getCode() {
		return code;
	}

	public String getMessage() {
		return code.getMsg();
	}

	public WoException() {
		super();
	}


	public WoException(WoResultCode code, Object... args) {
		super();
		this.code = code;
		this.code.setMsgArgs(args);
	}

	
	public WoException(Throwable cause, WoResultCode code, Object... args) {
		super(cause);
		this.code = code;
		this.code.setMsgArgs(args);
	}
}
