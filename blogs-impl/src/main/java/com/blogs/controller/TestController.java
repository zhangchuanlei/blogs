package com.blogs.controller;

import com.blogs.service.ITestService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by OneAPM on 2017/12/5.
 */
@RestController
public class TestController {

    private final ITestService testService;

    public TestController(ITestService testService) {this.testService = testService;}

    @RequestMapping("test/insert")
    public void insertMessage() {
        this.testService.insertTestEntity();
    }

    @RequestMapping("test/delete")
    public void deleteMessage() {
        this.testService.deleteUserInfoEntity(1);
    }
}
