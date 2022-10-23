package com.demo.yileplaytech.constant;

public class SecurityConsts {

    public static final String LOGIN_SALT = "backend-admin";

    /**
     * request請求頭屬性
     */
    public static final String REQUEST_AUTH_HEADER="Authorization";

    /**
     * JWT-account
     */
    public static final String ACCOUNT = "account";

    /**
     * 組織ID
     */
    public static final String ORG_ID_TOKEN = "orgIdToken";

    /**
     * Shiro redis 前綴
     */
    public static final String PREFIX_SHIRO_CACHE = "backend-admin:cache:";

    /**
     * redis-key-前綴-shiro:refresh_token
     */
    public final static String PREFIX_SHIRO_REFRESH_TOKEN = "backend-admin:refresh_token:";

    /**
     * redis-key-前綴-shiro:refresh_check
     */
    public final static String PREFIX_SHIRO_REFRESH_CHECK = "backend-admin:refresh_check:";

    /**
     * JWT-currentTimeMillis
     */
    public final static String CURRENT_TIME_MILLIS = "currentTimeMillis";

}
