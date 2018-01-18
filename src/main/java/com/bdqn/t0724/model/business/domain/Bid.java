package com.bdqn.t0724.model.business.domain;

import com.bdqn.t0724.model.base.domain.BaseDomain;
import com.bdqn.t0724.model.base.domain.Logininfo;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 投标对象
 * @author zhangdingshui
 *
 */
@Getter
@Setter
public class Bid extends BaseDomain{
	BigDecimal actualRate;//实际利率
	BigDecimal availableAmount;//可用总额
	BidRequest bidRequest;//所投标的
	String bidRequestTitle;//所投标的标题
	Logininfo bidUser;//投资人
	Date bidTime;//投标时间
	int bidRequestState;//标的状态
}
