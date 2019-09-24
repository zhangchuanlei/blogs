package com.blogs.entity;

import lombok.Builder;
import lombok.Data;

/**
 * Created by OneAPM on 2017/12/5.
 */
@Data
@Builder
public class UserInfoEntity extends TestEntity {

    private Integer id;

    private String userName;

    private String password;
}
