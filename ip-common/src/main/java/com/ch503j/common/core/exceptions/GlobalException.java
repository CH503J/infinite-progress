package com.ch503j.common.core.exceptions;

import com.ch503j.common.core.enums.CodeEnum;
import com.ch503j.common.core.enums.StatusEnum;
import lombok.Getter;

/**
 * 自定义业务异常
 */
@Getter
public class GlobalException extends RuntimeException {

    private final int code;
    private final int status;

    public GlobalException(CodeEnum codeEnum) {
        super(codeEnum.getMessage());
        this.code = codeEnum.getCode();
        this.status = StatusEnum.BAD_REQUEST.getStatus();
    }

    public GlobalException(CodeEnum codeEnum, StatusEnum statusEnum) {
        super(codeEnum.getMessage());
        this.code = codeEnum.getCode();
        this.status = statusEnum.getStatus();
    }

    public GlobalException(int code, int status, String message) {
        super(message);
        this.code = code;
        this.status = status;
    }
}