package com.bdqn.t0724.model.business.domain;

import com.bdqn.t0724.model.base.domain.BaseDomain;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 系统账户账户流水
 * 
 * @author Administrator
 * 
 */
@Getter
@Setter
public class SystemAccountFlow extends BaseDomain {
	
	/**
	 * 产生流水的时间
	 */
	private Date tradeTime;
	/**
	 * 流水的类型
	 */
	private int actionType;
	/**
	 * 业务金额
	 */
	private BigDecimal amount;
	/**
	 * 操作后的账户金额
	 */
	private BigDecimal usableAmount;
	/**
	 * 操作后的冻结金额
	 */
	private BigDecimal freezedAmount;
	/**
	 * 流水说明
	 */
	private String note;
}
