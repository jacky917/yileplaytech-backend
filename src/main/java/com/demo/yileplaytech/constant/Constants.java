package com.demo.yileplaytech.constant;

/**
 * 常量類
 */
public final class Constants {

	/**********************通用代码 start***********************/
	//密碼錯誤
	public static final Integer PASSWORD_CHECK_INVALID = 401;

	//驗證成功
	public static final Integer TOKEN_CHECK_SUCCESS = 200;

	//伺服器錯誤
	public static final Integer SERVER_ERROR = 500;

	//參數不完整
	public static final Integer PARAMETERS_MISSING = 502;

	/**
	 * 過期時間
	 */
	public static class ExpireTime {
		private ExpireTime() {
		}
		//10秒
		public static final int TEN_SEC =  10;
		//30秒
		public static final int THIRTY_SEC =  30;
		//1分鐘
		public static final int ONE_MINUTE =  60;
		//30分鐘
		public static final int THIRTY_MINUTES =  60 * 30;
		//1小時
		public static final int ONE_HOUR = 60 * 60;
		//3小時
		public static final int THREE_HOURS = 60 * 60 * 3;
		//12小時
		public static final int TWELVE_HOURS =  60 * 60 * 12;
		//1天
		public static final int ONE_DAY = 60 * 60 * 24;
	}
}
