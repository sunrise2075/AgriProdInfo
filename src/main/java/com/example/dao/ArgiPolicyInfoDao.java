package com.example.dao;

import com.example.entity.ArgiPolicyInfo;
import com.example.vo.ArgiPolicyInfoVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

@Repository
public interface ArgiPolicyInfoDao extends Mapper<ArgiPolicyInfo> {
    List<ArgiPolicyInfoVo> findByName(@Param("name") String name);
    
    
    
}
