package com.chen.PLoveLibrary.domain;

import java.io.Serializable;
import java.util.Date;

import javax.validation.constraints.Size;

import lombok.Data;
import org.hibernate.validator.constraints.NotBlank;

/**
   * @类 名： Book
   * @功能描述： TODO  图书信息
   * @作者信息： Jiangxf
   * @创建时间： 2018年4月22日下午9:04:15
   * @修改备注：
   */
@Data
public class Book implements Serializable {
	@NotBlank(message="不能为空")
	private String bkID;//图书序号
	@NotBlank(message="不能为空")
	private String bkCode;//图书编号
	@NotBlank(message="不能为空")
	private String bkName;//书名
	private String bkAuthor;//作者
	private String bkPress;//出版社
	private Date bkDatePress;//出版日期
	@NotBlank(message="不能为空")
	private String bkISBN;//ISBN书号
	@NotBlank(message="不能为空")
	private String bkCatalog;//分类号
	private String bkLanguage;//语言
	private int bkPages;//页数
	private String bkPrice;//价格
	private Date bkDateIn;//入馆日期
	@NotBlank(message="不能为空")
	@Size(min=0,max=100,message="字数超了100个")
	private String bkBrief;//内容简介
	private String bkCover;//图书封面
	private String bkStatus;//图书状态
}
