package com.bdqn.t0724.model.business.domain;

import com.alibaba.fastjson.JSON;
import com.bdqn.t0724.model.base.domain.BaseDomain;
import lombok.Getter;
import lombok.Setter;

import java.util.HashMap;
import java.util.Map;

/**
 * @author zhangdingshui
 * 平台银行账户信息
 */
@Getter
@Setter
public class PlatformBankInfo extends BaseDomain{
	private String bankName;//开户银行名称
	private String accountName;//开户人姓名
	private String accountNumber;//银行账号
	private String forkName;//开户支行名称
	private String iconCls;
	
	public String getJsonString(){
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("bankName", bankName);
		map.put("accountName", accountName);
		map.put("accountNumber", accountNumber);
		map.put("forkName", forkName);
		map.put("iconCls", iconCls);
		return JSON.toJSONString(map);
	}
}
