package com.blogs.dao;

import com.blogs.entity.TestEntity;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by OneAPM on 2017/12/5.
 */
@Mapper
@Component
public interface TestDao<T extends TestEntity> {

    //添加
    int insert(T data);

    //批量添加
    int bachInsert(List<T> list);

    //更新
    int update(T data);

    //删除
    int delete(T data);
}
