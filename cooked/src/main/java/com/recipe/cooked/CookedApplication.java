package com.recipe.cooked;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.reactive.function.client.WebClient;

@SpringBootApplication
public class CookedApplication {

//	@Bean
//	public WebClient.Builder getWebClientBuilder(){
//	    return WebClient.builder().baseUrl("https://api.spoonacular.com/recipes");
//	}
//	
	@Bean
    public RestTemplate restTemplate(RestTemplateBuilder builder) {
       return builder.rootUri("https://api.spoonacular.com/recipes").build();
    }
	
	public static void main(String[] args) {
		SpringApplication.run(CookedApplication.class, args);
	}

}
