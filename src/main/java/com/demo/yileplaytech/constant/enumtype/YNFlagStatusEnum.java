package com.demo.yileplaytech.constant.enumtype;


public enum YNFlagStatusEnum {
	VALID("1","有效"),
	FAIL("0","無效");
	
	private YNFlagStatusEnum(String code, String desc) {
		this.code = code;
		this.desc = desc;
	}

	private String desc;
	private String code;
	
	public String getDesc() {
		return desc;
	}

	public String getCode() {
		return code;
	}
	
	public String toString(){
		return code+","+desc;
	}
	
	/**
	 * 通過key查找描述方法
	 * @param key
	 */
	public static String getValueByKey(String key) {
		for (YNFlagStatusEnum pm : YNFlagStatusEnum.values()) {
			if (pm.getCode().equals(key)) {
				return pm.getDesc();
			}
		}
		return null;
	}
}
