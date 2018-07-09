package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.net.InetAddress;
import java.net.UnknownHostException;

@SpringBootApplication
@RestController
public class DockerdemoApplication {





	@RequestMapping("/")
	public String hello(){
		return  "hello";
	}


	public static void main(String[] args) throws UnknownHostException

	{
		InetAddress addr = InetAddress.getLocalHost();
		String ip=addr.getHostAddress().toString(); //获取本机ip
		String hostName=addr.getHostName().toString(); //获取本机计算机名称
		System.out.println(ip);
		System.out.println(hostName);

		SpringApplication.run(DockerdemoApplication.class, args);
	}
}
