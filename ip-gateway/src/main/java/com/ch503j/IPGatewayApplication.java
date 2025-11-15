package com.ch503j;


import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@Slf4j
@SpringBootApplication
@EnableDiscoveryClient
public class IPGatewayApplication {
    public static void main(String[] args) {
        SpringApplication.run(IPGatewayApplication.class, args);
        log.info("================= Gateway 网关已启动 =================");
    }
}
