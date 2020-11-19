package com.blogs.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

/**
 * @author zhangchuanlei
 */
@Mapper
@Component
public interface DtsDataDao {

    void insertDtsData(List<Map<String,String>> data);

}
