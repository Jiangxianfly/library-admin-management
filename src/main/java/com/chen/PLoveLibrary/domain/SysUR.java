package com.chen.PLoveLibrary.domain;

import lombok.Data;

import java.io.Serializable;

/**
   * @类 名： SysUR
   * @功能描述： TODO 用户和角色
   * @作者信息： Jiangxf
   * @创建时间： 2018年4月21日下午9:20:29
   * @修改备注：
   */
@Data
public class SysUR implements Serializable{
	private int id;
	private String userName;
	private String roleName;
	

}
