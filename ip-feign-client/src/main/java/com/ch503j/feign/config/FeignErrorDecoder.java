package com.ch503j.feign.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.ch503j.common.core.result.ApiResult;
import feign.Response;
import feign.codec.ErrorDecoder;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.io.InputStream;

@Slf4j
@Component
public class FeignErrorDecoder implements ErrorDecoder {

    private final ObjectMapper objectMapper = new ObjectMapper();

    @Override
    public Exception decode(String methodKey, Response response) {
        try {
            // 尝试解析错误响应体
            if (response.body() != null) {
                InputStream bodyStream = response.body().asInputStream();
                ApiResult<?> apiResult = objectMapper.readValue(bodyStream, ApiResult.class);
                log.error("Feign调用失败，方法：{}，状态：{}，错误信息：{}", methodKey, response.status(), apiResult.getMsg());
                return new RuntimeException(apiResult.getMsg());
            }
        } catch (IOException e) {
            log.error("解析Feign错误响应失败，方法：{}，状态：{}", methodKey, response.status(), e);
        }

        log.error("Feign调用失败，方法：{}，状态：{}", methodKey, response.status());
        return new RuntimeException("服务调用失败");
    }
}