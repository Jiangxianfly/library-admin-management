package com.chen.PLoveLibrary.service;


import com.chen.PLoveLibrary.mybatis.SysurpMapper;
import com.chen.PLoveLibrary.mybatis.UserLoginMapper;
import com.chen.PLoveLibrary.parameter.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * @class name： SysUserService
 * @功能描述： TODO 用戶信息服务层
 * @作者信息： Jiangxf
 * @创建时间： 2019/9/27
 * @修改备注：
 */
public class SysUserService {
    @Autowired
    private UserLoginMapper userLoginMapper;
    @Autowired
    private SysurpMapper sysurpMapper;

    //获取系统用户的总数
    @Transactional(propagation = Propagation.REQUIRED, readOnly = true)
    public int getCounts(Parameter parameter) {
        return this.userLoginMapper.getCounts(parameter);
    }

    //获取系统管理员（SysManager)的个数
    @Transactional(propagation = Propagation.REQUIRED, readOnly = true)
    public int getSysManagerNum() {
        return this.sysurpMapper.getSysManagerNum();
    }

    //获取书籍管理员（BookManager)的个数
    @Transactional(propagation = Propagation.REQUIRED, readOnly = true)
    public int getookManagerNum() {
        return this.sysurpMapper.getBookManagerNum();
    }

    //获取前台管理员（Manager)的个数
    @Transactional(propagation = Propagation.REQUIRED, readOnly = true)
    public int getManagerNum() {
        return this.sysurpMapper.getManagerNum();
    }

}
