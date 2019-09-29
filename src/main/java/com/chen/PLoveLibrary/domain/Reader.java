package com.chen.PLoveLibrary.domain;

import java.io.Serializable;
import java.util.Date;

import lombok.Data;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;



/**
   * @类 名： Reader
   * @功能描述： TODO 借书证办理的读者信息
   * @作者信息： Jiangxf
   * @创建时间： 2018年4月16日下午2:58:01
   * @修改备注：
   */
@Data
public class Reader implements Serializable{
	@NotBlank(message="{rdID_Message}")
	private String rdID;//用户名
	@NotBlank(message="{rdName_Message}")
	private String rdName;//姓名
	@NotBlank(message="{rdSex_Message}")
	private String rdSex;//性别
	@NotBlank(message="{rdPwd_Message}")
	private String rdPwd;//密码
	private String rdType;//读者类别
	private String rdDept;//单位名称
	private String rdPhone;//电话号码
	@Email(message="{rdEmail_Message")
	private String rdEmail;//邮箱
	private String rdPhoto;//照片
	private String rdStatus;//证件状态
	private Date rdDateReg;//办证日期
	private int rdBorrowQty;//已借书数量
	private String rdAdminRoles;//读者角色

}
