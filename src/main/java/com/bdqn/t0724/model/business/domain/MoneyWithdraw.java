package com.bdqn.t0724.model.business.domain;

import com.alibaba.fastjson.JSON;
import com.bdqn.t0724.model.base.domain.BaseAuthDomain;
import com.bdqn.t0724.model.base.util.BidConst;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.util.HashMap;
import java.util.Map;

@Getter
@Setter
public class MoneyWithdraw extends BaseAuthDomain{
	private BigDecimal amount;//真实的体现金额
	private BigDecimal fee;//手续费金额
	private String bankName;// 银行名称
	private String accountName;// 开户人姓名
	private String accountNumber;// 银行账号
	private String forkName;// 开户支行
	
	public BigDecimal getTotalAmount(){
		this.fee = BidConst.MONEY_WITHDRAW_CHARGEFEE;
		return this.amount.add(this.fee);
	}
	public String getJsonString(){
		Map<String,Object> map = new HashMap<>();
		map.put("id", id);
		map.put("username", applier.getUsername());
		map.put("realName", accountName);
		map.put("applyTime", DateFormat.getInstance().format(applyTime));
		map.put("bankName", bankName);
		map.put("accountNumber", accountNumber);
		map.put("forkname", forkName);
		map.put("moneyAmount", amount);
		return JSON.toJSONString(map);
	}
}
