package com.ch503j.ipauthservice;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@Slf4j
@SpringBootApplication
@EnableDiscoveryClient
public class IPAuthServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(IPAuthServiceApplication.class, args);
        log.info("================= auth-service 鉴权微服务已启动 =================");
    }

}
