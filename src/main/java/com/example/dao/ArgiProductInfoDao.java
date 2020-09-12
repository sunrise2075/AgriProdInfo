package com.example.dao;

import com.example.entity.ArgiProductInfo;
import com.example.vo.ArgiProductInfoVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

@Repository
public interface ArgiProductInfoDao extends Mapper<ArgiProductInfo> {
    List<ArgiProductInfoVo> findByName(@Param("name") String name);
    
    
    
}
