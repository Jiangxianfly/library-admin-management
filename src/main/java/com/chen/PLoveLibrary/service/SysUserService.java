package com.chen.PLoveLibrary.service;


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

    @Transactional(propagation = Propagation.REQUIRED, readOnly = true)
    public int getCounts(Parameter parameter) {
        return this.userLoginMapper.getCounts(parameter);
    }

}
