package com.mfw.user.config;

import org.springframework.cache.annotation.CachingConfigurerSupport;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.cache.RedisCacheManager;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.session.data.redis.config.annotation.web.http.EnableRedisHttpSession;

@Configuration
//    @EnableCaching //开启注解
@EnableRedisHttpSession(maxInactiveIntervalInSeconds = 86400*30)
public class RedisConfig {

//    @Bean
//    public RedisCacheManager cacheManager(RedisConnectionFactory factory) {
//        return RedisCacheManager.create(factory);
//    }
//
//    @Bean
//    public RedisTemplate<String, String> redisTemplate(RedisConnectionFactory factory) {
//        RedisTemplate<String, String> redisTemplate = new RedisTemplate<>();
//        redisTemplate.setConnectionFactory(factory);
//        return redisTemplate;
//    }

}

