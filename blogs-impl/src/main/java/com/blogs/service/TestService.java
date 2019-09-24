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
    public void testService() {
        System.out.println("this test method is execute...");
    }

    @Override
    public void insertTestEntity() {
        UserInfoEntity build = UserInfoEntity.builder().id(1).userName("userName").password("password").build();
        int insert = testDao.insert(build);
        System.out.println("result insert is:..." + insert);
    }

    @Override
    public void deleteUserInfoEntity(int id) {
//        UserInfoEntity userInfoEntity = new UserInfoEntity();
        UserInfoEntity build = UserInfoEntity.builder().id(1).build();
        testDao.delete(build);
    }
}
