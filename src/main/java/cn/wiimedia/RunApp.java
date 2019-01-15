package cn.wiimedia;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
//@MapperScan(basePackages="cn.tedu.mapper")//mybatis接口文件扫描
@ComponentScan(basePackages = {"com.wiimedia","com.baidu","com.weixin"})
public class RunApp {
	public static void main(String[] args) {
		SpringApplication.run(RunApp.class, args);
	}
}
