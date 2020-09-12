package com.example.service;

import cn.hutool.json.JSONUtil;
import com.example.dao.ArgiProductInfoDao;
import org.springframework.stereotype.Service;
import com.example.entity.ArgiProductInfo;
import com.example.entity.AuthorityInfo;
import com.example.entity.Account;
import com.example.vo.ArgiProductInfoVo;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import org.springframework.beans.factory.annotation.Value;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@Service
public class ArgiProductInfoService {

    @Value("${authority.info}")
    private String authorityInfo;

    @Resource
    private ArgiProductInfoDao argiProductInfoDao;

    public ArgiProductInfo add(ArgiProductInfo argiProductInfo) {
        argiProductInfoDao.insertSelective(argiProductInfo);
        return argiProductInfo;
    }

    public void delete(Long id) {
        argiProductInfoDao.deleteByPrimaryKey(id);
    }

    public void update(ArgiProductInfo argiProductInfo) {
        argiProductInfoDao.updateByPrimaryKeySelective(argiProductInfo);
    }

    public ArgiProductInfo findById(Long id) {
        return argiProductInfoDao.selectByPrimaryKey(id);
    }

    public List<ArgiProductInfoVo> findAll() {
        return argiProductInfoDao.findByName("all");
    }

    public PageInfo<ArgiProductInfoVo> findPage(String name, Integer pageNum, Integer pageSize, HttpServletRequest request) {
        PageHelper.startPage(pageNum, pageSize);
        List<ArgiProductInfoVo> all = findAllPage(request, name);
        return PageInfo.of(all);
    }

    public List<ArgiProductInfoVo> findAllPage(HttpServletRequest request, String name) {
		return argiProductInfoDao.findByName(name);
    }

}
