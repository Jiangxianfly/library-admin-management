package com.chen.PLoveLibrary.domain;

import java.io.Serializable;

/**
   * @classname： sysPermission
   * @desc： 权限
   * @author: Jiangxf
   * @createtime: 2019/09/26
   * @修改备注：
   */
@SuppressWarnings("serial")
public class SysPermission implements Serializable{
	private String perName;

	public String getPerName() {
		return perName;
	}

	public void setPerName(String perName) {
		this.perName = perName;
	}
	

}
