package com.example.dao;

import com.example.entity.AgriTechInfo;
import com.example.vo.AgriTechInfoVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

@Repository
public interface AgriTechInfoDao extends Mapper<AgriTechInfo> {
    List<AgriTechInfoVo> findByName(@Param("name") String name);
    
    
    
}
