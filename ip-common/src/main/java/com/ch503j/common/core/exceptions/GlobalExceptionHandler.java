package com.ch503j.common.core.exceptions;

import com.ch503j.common.core.enums.CodeEnum;
import com.ch503j.common.core.enums.StatusEnum;
import com.ch503j.common.core.result.ApiResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * 全局异常处理器
 */
@RestControllerAdvice(basePackages = "com.ch503j")
public class GlobalExceptionHandler {

    /**
     * 处理自定义业务异常
     */
    @ExceptionHandler(GlobalException.class)
    public ApiResult<?> handleGlobalException(GlobalException e) {
        return ApiResult.fail(
                e.getCode(),
                e.getStatus(),
                e.getMessage()
        );
    }

    /**
     * 处理所有未捕获的异常（兜底）
     */
    @ExceptionHandler(Exception.class)
    public ApiResult<?> handleException(Exception e) {
        // 使用日志记录异常堆栈
        System.out.println( "系统异常" + e);

        // 生产环境返回统一友好提示
        return ApiResult.fail(
                CodeEnum.FAIL.getCode(),
                StatusEnum.INTERNAL_ERROR.getStatus(),
                "服务器内部错误，请联系管理员"
        );
    }
}