package com.chen.PLoveLibrary.domain;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
   * @类 名： SysUser
   * @功能描述： TODO 系统用户信息相当于shiro的subject
   * @作者信息： Jiangxf
   * @创建时间： 2018年4月14日下午9:04:39
   * @修改备注：
   */
@Data
public class SysUser implements Serializable {
	private String name;
	private String username;
	private String password;
	private String photo;
	private String identity;
	private Date date;

	

}
