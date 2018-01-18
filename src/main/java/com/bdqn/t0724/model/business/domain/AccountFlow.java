package com.bdqn.t0724.model.business.domain;

import com.bdqn.t0724.model.base.domain.Account;
import com.bdqn.t0724.model.base.domain.BaseDomain;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 账户流水
 * @author zhangdingshui
 *
 */
@Getter
@Setter
public class AccountFlow extends BaseDomain{
	
	/**
	 * 流水发生的账户
	 */
	private Account account;
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
