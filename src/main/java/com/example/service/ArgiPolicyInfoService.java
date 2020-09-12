package com.example.service;

import cn.hutool.json.JSONUtil;
import com.example.dao.ArgiPolicyInfoDao;
import org.springframework.stereotype.Service;
import com.example.entity.ArgiPolicyInfo;
import com.example.entity.AuthorityInfo;
import com.example.entity.Account;
import com.example.vo.ArgiPolicyInfoVo;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import org.springframework.beans.factory.annotation.Value;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@Service
public class ArgiPolicyInfoService {

    @Value("${authority.info}")
    private String authorityInfo;

    @Resource
    private ArgiPolicyInfoDao argiPolicyInfoDao;

    public ArgiPolicyInfo add(ArgiPolicyInfo argiPolicyInfo) {
        argiPolicyInfoDao.insertSelective(argiPolicyInfo);
        return argiPolicyInfo;
    }

    public void delete(Long id) {
        argiPolicyInfoDao.deleteByPrimaryKey(id);
    }

    public void update(ArgiPolicyInfo argiPolicyInfo) {
        argiPolicyInfoDao.updateByPrimaryKeySelective(argiPolicyInfo);
    }

    public ArgiPolicyInfo findById(Long id) {
        return argiPolicyInfoDao.selectByPrimaryKey(id);
    }

    public List<ArgiPolicyInfoVo> findAll() {
        return argiPolicyInfoDao.findByName("all");
    }

    public PageInfo<ArgiPolicyInfoVo> findPage(String name, Integer pageNum, Integer pageSize, HttpServletRequest request) {
        PageHelper.startPage(pageNum, pageSize);
        List<ArgiPolicyInfoVo> all = findAllPage(request, name);
        return PageInfo.of(all);
    }

    public List<ArgiPolicyInfoVo> findAllPage(HttpServletRequest request, String name) {
		return argiPolicyInfoDao.findByName(name);
    }

}
