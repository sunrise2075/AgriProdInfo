package com.example.service;

import cn.hutool.json.JSONUtil;
import com.example.dao.AgriTechInfoDao;
import org.springframework.stereotype.Service;
import com.example.entity.AgriTechInfo;
import com.example.entity.AuthorityInfo;
import com.example.entity.Account;
import com.example.vo.AgriTechInfoVo;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import org.springframework.beans.factory.annotation.Value;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@Service
public class AgriTechInfoService {

    @Value("${authority.info}")
    private String authorityInfo;

    @Resource
    private AgriTechInfoDao agriTechInfoDao;

    public AgriTechInfo add(AgriTechInfo agriTechInfo) {
        agriTechInfoDao.insertSelective(agriTechInfo);
        return agriTechInfo;
    }

    public void delete(Long id) {
        agriTechInfoDao.deleteByPrimaryKey(id);
    }

    public void update(AgriTechInfo agriTechInfo) {
        agriTechInfoDao.updateByPrimaryKeySelective(agriTechInfo);
    }

    public AgriTechInfo findById(Long id) {
        return agriTechInfoDao.selectByPrimaryKey(id);
    }

    public List<AgriTechInfoVo> findAll() {
        return agriTechInfoDao.findByName("all");
    }

    public PageInfo<AgriTechInfoVo> findPage(String name, Integer pageNum, Integer pageSize, HttpServletRequest request) {
        PageHelper.startPage(pageNum, pageSize);
        List<AgriTechInfoVo> all = findAllPage(request, name);
        return PageInfo.of(all);
    }

    public List<AgriTechInfoVo> findAllPage(HttpServletRequest request, String name) {
		return agriTechInfoDao.findByName(name);
    }

}
