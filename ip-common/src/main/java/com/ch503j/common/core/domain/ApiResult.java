package com.ch503j.common.core.domain;

import com.ch503j.common.core.enums.CodeEnum;
import com.ch503j.common.core.enums.StatusEnum;

import java.io.Serial;
import java.io.Serializable;

public class ApiResult<T> implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    private int code;
    private int status;
    private String msg;
    private T data;

    // ================= 构造方法 =================

    public ApiResult() {}

    public ApiResult(int code, int status, String msg, T data) {
        this.code = code;
        this.status = status;
        this.msg = msg;
        this.data = data;
    }

    // ================= 静态快速方法 =================

    public static <T> ApiResult<T> success(T data) {
        return new ApiResult<>(
                CodeEnum.SUCCESS.getCode(),
                StatusEnum.OK.getStatus(),
                StatusEnum.OK.getMessage(),
                data
        );
    }

    public static <T> ApiResult<T> success() {
        return success(null);
    }

    public static <T> ApiResult<T> fail(String msg) {
        return new ApiResult<>(
                CodeEnum.FAIL.getCode(),
                StatusEnum.INTERNAL_ERROR.getStatus(),
                msg,
                null
        );
    }

    public static <T> ApiResult<T> fail(int code, int status, String msg) {
        return new ApiResult<>(code, status, msg, null);
    }

    // ================= 链式方法 =================

    public ApiResult<T> code(int code) {
        this.code = code;
        return this;
    }

    public ApiResult<T> status(int status) {
        this.status = status;
        return this;
    }

    public ApiResult<T> msg(String msg) {
        this.msg = msg;
        return this;
    }

    public ApiResult<T> msg(String msg, Object... args) {
        if (args != null) {
            for (Object arg : args) {
                msg = msg.replaceFirst("\\{\\}", arg == null ? "null" : arg.toString());
            }
        }
        this.msg = msg;
        return this;
    }

    public ApiResult<T> data(T data) {
        this.data = data;
        return this;
    }

    // ================= Getter / Setter =================

    public int getCode() { return code; }
    public void setCode(int code) { this.code = code; }

    public int getStatus() { return status; }
    public void setStatus(int status) { this.status = status; }

    public String getMsg() { return msg; }
    public void setMsg(String msg) { this.msg = msg; }

    public T getData() { return data; }
    public void setData(T data) { this.data = data; }
}
