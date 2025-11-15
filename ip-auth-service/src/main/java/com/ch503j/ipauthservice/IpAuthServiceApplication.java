package com.ch503j.ipauthservice;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@Slf4j
@SpringBootApplication
public class IpAuthServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(IpAuthServiceApplication.class, args);
        log.info("================= auth-service 鉴权微服务已启动 =================");
    }

}
