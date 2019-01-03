package com.rubic.txcrm;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages={"com.rubic.txcrm"})
public class TxcrmApplication {

	public static void main(String[] args) {
		SpringApplication.run(TxcrmApplication.class, args);
	}

}

