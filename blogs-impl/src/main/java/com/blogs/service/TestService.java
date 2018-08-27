package com.blogs.service;

import com.blogs.dao.TestDao;
import com.blogs.entity.UserInfoEntity;
import org.springframework.stereotype.Service;

/**
 * Created by OneAPM on 2017/12/5.
 */
@Service
public class TestService implements ITestService {

//    @Autowired
//    private TestDao<UserInfoEntity> testDao;
//
    private final TestDao<UserInfoEntity> testDao;

    public TestService(TestDao testDao) {this.testDao = testDao;}

    @Override
    public void insertTestEntity() {
        UserInfoEntity entity = new UserInfoEntity();
        entity.setUserName("zhang");
        entity.setPassword("pass");
        int insert = testDao.insert(entity);
        System.out.println("result insert is:..." + insert);
    }

    @Override
    public void deleteUserInfoEntity(int id) {
        UserInfoEntity userInfoEntity = new UserInfoEntity();
        userInfoEntity.setId(1);
        testDao.delete(userInfoEntity);
    }
}
