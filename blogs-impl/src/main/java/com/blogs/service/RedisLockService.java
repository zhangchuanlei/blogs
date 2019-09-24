package com.blogs.service;

import com.crossoverjie.distributed.lock.redis.RedisLock;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
public class RedisLockService implements IRedisLockService{

    private final RedisLock redisLock;
    private final RedisTemplate<Object,Object> redisTemplate;

    public RedisLockService(
            RedisLock redisLock,
            RedisTemplate<Object, Object> redisTemplate
    ) {this.redisLock = redisLock;
        this.redisTemplate = redisTemplate;
    }

    @Override
    public void testRedisLock() {

//        redisTemplate.opsForValue().set("zhang","zhang");
        Object object = redisTemplate.opsForValue().get("zhang");
        System.out.println("current object is:>>>"+object);

//        String zhang1 = UUID.fromString("zhang").toString();
        String zhang1  = UUID.randomUUID().toString();

        boolean unlock = redisLock.unlock("zhang", zhang1);
        if (unlock){
            System.out.println("unlock successful...");
            return;
        }

//        System.out.println(zhang1);
//        boolean zhang = redisLock.tryLock("zhang", zhang1);
//        if (zhang){
//            System.out.println("good option...");
//            boolean unlock = redisLock.unlock("zhang", zhang1);
//            if (unlock){
//                System.out.println("unlock successful...");
//                return;
//            }
//            return;
//        }
        System.out.println("error option...");

//        for (int i = 0 ;i < 10;i++){
//            UUID uuid = UUID.randomUUID();
//            String uuIdStr = uuid.toString();
//            Thread thread = new Thread(() -> {
//                try {
//                    System.out.println("===开始加锁。。。"+uuIdStr);
//                    redisLock.lock("zhang",uuIdStr);
//                    Thread.sleep(10);
//                    System.out.println("我是业务方法！！！");
//                    System.out.println("===开始解锁。。。"+uuIdStr);
////                    redisLock.unlock("zhang", uuIdStr);
//                } catch (InterruptedException e) {
//                    e.printStackTrace();
//                }
//
//            });
//            thread.start();
//        }
    }
}
