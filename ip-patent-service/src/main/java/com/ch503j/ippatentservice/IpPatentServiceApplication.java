package com.ch503j.ippatentservice;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@Slf4j
@SpringBootApplication
@EnableDiscoveryClient
public class IpPatentServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(IpPatentServiceApplication.class, args);
        log.info("================= patent-service 专利管理微服务已启动 =================");
    }

}
