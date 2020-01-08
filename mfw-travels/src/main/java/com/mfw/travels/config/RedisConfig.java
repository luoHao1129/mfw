//package com.mfw.travels.config;
//
//import com.fasterxml.jackson.annotation.JsonAutoDetect;
//import com.fasterxml.jackson.annotation.PropertyAccessor;
//import com.fasterxml.jackson.databind.ObjectMapper;
//import org.springframework.cache.CacheManager;
//import org.springframework.cache.annotation.CachingConfigurerSupport;
//import org.springframework.cache.annotation.EnableCaching;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.data.redis.cache.RedisCacheConfiguration;
//import org.springframework.data.redis.cache.RedisCacheManager;
//import org.springframework.data.redis.cache.RedisCacheWriter;
//import org.springframework.data.redis.connection.RedisConnectionFactory;
//import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
//import org.springframework.data.redis.core.*;
//import org.springframework.data.redis.serializer.Jackson2JsonRedisSerializer;
//import org.springframework.data.redis.serializer.RedisSerializer;
//import org.springframework.data.redis.serializer.StringRedisSerializer;
//
//import java.time.Duration;
//
//    @Configuration
//    @EnableCaching //开启注解
//    public class RedisConfig extends CachingConfigurerSupport {
//
//        /**
//         * 设置缓存管理器，这里可以配置默认过期时间等
//         *
//         * @param connectionFactory 连接池
//         * @return
//         */
//        @Bean
//        public CacheManager cacheManager(RedisConnectionFactory connectionFactory) {
//            RedisCacheConfiguration redisCacheConfiguration = RedisCacheConfiguration
//                    .defaultCacheConfig()
//                    .entryTtl(Duration.ofSeconds(60));
//            //注意：请勿使用先new 配置对象，然后在调用entryTtl方法的方式来操作
//            //会导致配置不生效，原因是调用.entryTtl方法会返回一个新的配置对象，而不是在原来的配置对象上修改
//
//            RedisCacheWriter redisCacheWriter = RedisCacheWriter.nonLockingRedisCacheWriter(connectionFactory);
//            RedisCacheManager manager = new RedisCacheManager(redisCacheWriter, redisCacheConfiguration);
//            return manager;
//        }
//
//        @SuppressWarnings("all")
//        @Bean
//        public RedisTemplate<String, String> redisTemplate(JedisConnectionFactory factory) {
//            StringRedisTemplate template = new StringRedisTemplate(factory);
//            Jackson2JsonRedisSerializer jackson2JsonRedisSerializer = new Jackson2JsonRedisSerializer(Object.class);
//            ObjectMapper om = new ObjectMapper();
//            om.setVisibility(PropertyAccessor.ALL, JsonAutoDetect.Visibility.ANY);
//            om.enableDefaultTyping(ObjectMapper.DefaultTyping.NON_FINAL);
//            jackson2JsonRedisSerializer.setObjectMapper(om);
//            RedisSerializer stringSerializer = new StringRedisSerializer();
//            template.setKeySerializer(stringSerializer);
//            template.setValueSerializer(jackson2JsonRedisSerializer);
//            template.setHashKeySerializer(stringSerializer);
//            template.setHashValueSerializer(jackson2JsonRedisSerializer);
//            template.afterPropertiesSet();
//            return template;
//        }
//
////        //使用jedis连接池建立jedis连接工厂
////        @Bean
////        public JedisConnectionFactory jedisConnectionFactory() {
////            logger.info("jedisConnectionFactory:初始化了");
////            JedisPoolConfig config = new JedisPoolConfig();
////            config.setMaxIdle(maxIdle);
////            config.setMinIdle(minIdle);
////            config.setMaxWaitMillis(maxWaitMillis);
////            config.setMaxTotal(maxActive);
////            //链接耗尽时是否阻塞，默认true
////            config.setBlockWhenExhausted(true);
////            //是否启用pool的jmx管理功能，默认true
////            config.setJmxEnabled(true);
////            JedisConnectionFactory factory = new JedisConnectionFactory();
////            factory.setPoolConfig(config);
////            factory.setHostName(host);
////            factory.setPort(port);
////            factory.setPassword(password);
////            factory.setDatabase(database);
////            factory.setTimeout(timeout);
////            return factory;
////        }
//
//    }
//
