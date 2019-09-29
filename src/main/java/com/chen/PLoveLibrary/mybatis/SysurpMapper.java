package com.chen.PLoveLibrary.mybatis;

import java.util.List;

import com.chen.PLoveLibrary.domain.SysPermission;
import com.chen.PLoveLibrary.domain.SysRole;

public interface SysurpMapper {

	List<SysRole> getRole(String rdID);

	List<SysPermission>getPermission(String roleName);

	int getSysManagerNum();

	int getManagerNum();

	int getBookManagerNum();



}
