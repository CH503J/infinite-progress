package com.ch503j.feign.client;

import com.ch503j.common.core.result.ApiResult;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

/**
 * AuthServiceClient的降级处理类
 */
@Slf4j
@Component
public class AuthServiceFallback implements AuthServiceClient {

    @Override
    public ApiResult<Boolean> validateToken(String token) {
        log.error("AuthService服务调用失败，触发降级处理");
        return ApiResult.fail("认证服务暂时不可用");
    }
}