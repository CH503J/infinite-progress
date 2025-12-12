package com.ch503j.ipfileservice;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@Slf4j
@SpringBootApplication
@EnableDiscoveryClient
public class IpFileServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(IpFileServiceApplication.class, args);
        log.info("================= file-service 文件上传下载微服务已启动 =================");
    }

}
