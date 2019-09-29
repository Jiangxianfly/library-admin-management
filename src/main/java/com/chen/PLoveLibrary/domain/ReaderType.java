package com.chen.PLoveLibrary.domain;

import java.io.Serializable;

import javax.validation.constraints.DecimalMax;

import lombok.Data;
import org.hibernate.validator.constraints.NotBlank;

/**
   * @类 名： ReaderType
   * @功能描述： TODO 读者的类别，这个只有系统管理员才有的操作；该类别里包括了不同读者在图书馆里借书的限制
   * @作者信息： Jiangxf
   * @创建时间： 2018年4月18日上午10:25:36
   * @修改备注：
   */
@Data
public class ReaderType implements Serializable {
	@DecimalMax(value="20",message="{rdType_Int}")
	public int getRdType() {
		return rdType;
	}
	private int rdType;//读者类别
	@NotBlank(message="{rdTypeName_Message}")
	private String rdTypeName;//读者名称
	@DecimalMax(value="20",message="{canLendQty_Message}")
	private int canLendQty;//可借书的数量
	private int canLendDay;//可借书的天数
	private int canContinueTimes;//可续借的次数
	private float punishRate;//罚款率
	private int dateValid;//证件的有效期


}
