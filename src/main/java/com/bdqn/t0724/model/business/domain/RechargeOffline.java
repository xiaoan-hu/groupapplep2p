package com.bdqn.t0724.model.business.domain;

import com.alibaba.fastjson.JSON;
import com.bdqn.t0724.model.base.domain.BaseAuthDomain;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Getter
@Setter
public class RechargeOffline extends BaseAuthDomain{
	private PlatformBankInfo bankInfo;
	private String tradeCode;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date tradeTime;
	private BigDecimal amount;
	private String note;
	public String getJsonString (){
		Map<String,Object> map = new HashMap<>();
		map.put("id", id);
		map.put("username", this.applier.getUsername());
		map.put("tradeCode", tradeCode);
		map.put("amount", amount);
		map.put("tradeTime", DateFormat.getInstance().format(tradeTime));
		return JSON.toJSONString(map);
	}
}
