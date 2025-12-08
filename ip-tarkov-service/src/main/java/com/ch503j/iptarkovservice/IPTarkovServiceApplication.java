package com.ch503j.iptarkovservice;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@Slf4j
@SpringBootApplication
@EnableDiscoveryClient
public class IPTarkovServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(IPTarkovServiceApplication.class, args);
        log.info("================= tarkov-service 用户微服务已启动 =================");
    }

}
