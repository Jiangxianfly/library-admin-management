package com.chen.PLoveLibrary.domain;

import java.io.Serializable;

import lombok.Data;
import org.hibernate.validator.constraints.NotBlank;

/**
   * @类 名： BookClass
   * @功能描述： TODO  图书的编目工作
   * @作者信息： Jiangxf
   * @创建时间： 2018年4月22日下午12:40:16
   * @修改备注：
   */
@Data
public class BookClass implements Serializable{

	@NotBlank(message="不能为空")
	private String bkCatalog;//分类号
	@NotBlank(message="不能为空")
	private String bkClassName;//分类名

}
