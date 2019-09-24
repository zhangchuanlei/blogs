package com.blogs.config;

//import com.crossoverjie.distributed.lock.redis.RedisLock;

import com.crossoverjie.distributed.lock.redis.RedisLock;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import redis.clients.jedis.Jedis;

@Configuration
public class RedisConfig {

    @Bean
    public RedisLock build(){
        RedisLock redisLock = new RedisLock();

//        HostAndPort hostAndPort = new HostAndPort("localhost", 6379);
//        JedisCluster jedisCluster = new JedisCluster(hostAndPort);
        Jedis localhost = new Jedis("localhost", 6379);
        redisLock.setJedis(localhost);
        return redisLock;
    }

    @Bean
    public RedisTemplate<Object,Object> getRedisTemplate(RedisConnectionFactory factory){
        RedisTemplate<Object, Object> objectObjectRedisTemplate = new RedisTemplate<>();
        objectObjectRedisTemplate.setConnectionFactory(factory);
        return objectObjectRedisTemplate;
    }
}
