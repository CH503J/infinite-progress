package com.ch503j.feign.client;

import com.ch503j.common.core.result.ApiResult;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 认证服务Feign客户端
 */
@FeignClient(name = "ip-auth-service", fallback = AuthServiceFallback.class)
public interface AuthServiceClient {

    /**
     * 验证Token
     *
     * @param token 用户token
     * @return 验证结果
     */
    @GetMapping("/auth/validate")
    ApiResult<Boolean> validateToken(@RequestParam("token") String token);
}