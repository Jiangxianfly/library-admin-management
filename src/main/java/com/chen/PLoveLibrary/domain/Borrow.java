package com.chen.PLoveLibrary.domain;

import java.io.Serializable;
import java.util.Date;

import lombok.Data;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

/**
   * @类 名： Borrow 
   * @功能描述： TODO 借阅图书的信息
   * @作者信息： Jiangxf
   * @创建时间： 2018年4月25日下午9:44:35
   * @修改备注：
   */
@Data
public class Borrow implements Serializable{
	private int borrowID;
	@NotBlank(message="不能为空")
	private String rdID;//读者序号
	@NotBlank(message="不能为空")
	private String bkID;//图书序号
	private int idContinueTimes;//续借的次数
	private Date idDateOut;//借书日期
	private Date idDateRetPlan;//应还日期
	private Date idDateRetAct;//实际还书日期
	private int idOverDay;//超期天数
	private float idOverMoney;//超期金额
	private float idPunishMoney;//罚款金额
	private String isHasReturn;//是否还书
	private String operatorLend;//借书操作员
	private String operatorRet;//还书操作员

}
