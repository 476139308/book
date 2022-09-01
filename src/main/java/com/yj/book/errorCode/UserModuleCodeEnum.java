package com.yj.book.errorCode;

import org.springframework.web.client.RestTemplate;

/**
 * @author Shi Xianjun
 * @version 1.0.0
 * @date 2022/8/31 21:52
 */
public enum UserModuleCodeEnum {
    LOGIN(1,1,"登录模块"),
    USER(1,2,"用户模块");

    private final int projectNum;
    private final int moduleNum;
    private final String moduleName;

    UserModuleCodeEnum(int projectNum, int moduleNum, String moduleName) {
        this.projectNum = projectNum;
        this.moduleNum = moduleNum;
        this.moduleName = moduleName;
    }
}
