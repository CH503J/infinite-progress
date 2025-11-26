package com.ch503j.feign.config;

import feign.Logger;
import feign.Request;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class FeignConfig {

    /**
     * 设置Feign日志级别
     * NONE: 不记录任何日志
     * BASIC: 仅记录请求方法、URL、响应状态码及执行时间
     * HEADERS: 记录基本信息及请求/响应头
     * FULL: 记录请求和响应的所有内容
     */
    @Bean
    public Logger.Level feignLoggerLevel() {
        return Logger.Level.FULL;
    }

    /**
     * 设置Feign请求超时时间
     */
    @Bean
    public Request.Options options() {
        // 第一个参数是连接超时时间，第二个参数是读取超时时间，单位都是毫秒
        return new Request.Options(5000, 10000);
    }
}