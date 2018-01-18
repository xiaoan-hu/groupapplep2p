package com.bdqn.t0724.model.business.domain;

import com.alibaba.fastjson.JSON;
import com.bdqn.t0724.model.base.domain.BaseDomain;
import com.bdqn.t0724.model.base.domain.Logininfo;
import com.bdqn.t0724.model.base.util.BidConst;
import com.bdqn.t0724.model.business.util.CalculatetUtil;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 借款对象
 * @author zhangdingshui
 *
 */
@Getter
@Setter
public class BidRequest extends BaseDomain{
	private int version = 0;//版本号,乐观锁用
	private int returnType;//还款方式
	private int bidRequestType;//贷款类型,这里只做信用贷
	private int bidRequestState;//贷款状态
	private BigDecimal bidRequestAmount;//贷款总额
	private BigDecimal currentRate;//贷款的年化利率
	private BigDecimal minBidAmount;//最小投标金额
	private int monthes2Return;//还款月数
	private int bidCount;//当前投标数量 冗余数量
	private BigDecimal totalRewardAmount = BidConst.ZERO;//总利息 总收益
	private BigDecimal currentSum = BidConst.ZERO;//当前收到的投资总额
	private String title;//借款标题
	private String description;//借款描述
	private String note;//贷款风控信息
	private Date disableDate;//投标截止日期
	private int disableDays;//发标时间天数
	private Logininfo createUser;//借款人
	private List<Bid> Bids = new ArrayList<>();//所有投标
	private Date applyTime;//申请时间
	private Date publishTime;//发布时间
	
	public String getBidRequestStateDisplay(){
		String stateDisplay = "";
		switch (this.bidRequestState) {
		case BidConst.BIDREQUEST_STATE_PUBLISH_PENDING:
			stateDisplay =  "待发布";
			break;
		case BidConst.BIDREQUEST_STATE_BIDDING:
			stateDisplay = "招标中";
			break;
		case BidConst.BIDREQUEST_STATE_UNDO:
			stateDisplay = "已撤销";
			break;
		case BidConst.BIDREQUEST_STATE_BIDDING_OVERDUE:
			stateDisplay = "流标";
			break;
		case BidConst.BIDREQUEST_STATE_APPROVE_PENDING_1:
			stateDisplay = "满标1审";
			break;
		case BidConst.BIDREQUEST_STATE_APPROVE_PENDING_2:
			stateDisplay = "满标2审";
			break;
		case BidConst.BIDREQUEST_STATE_REJECTED:
			stateDisplay = "满标审核被拒绝";
			break;
		case BidConst.BIDREQUEST_STATE_PAYING_BACK:
			stateDisplay = "还款中";
			break;
		case BidConst.BIDREQUEST_STATE_COMPLETE_PAY_BACK:
			stateDisplay = "已还清";
			break;
		case BidConst.BIDREQUEST_STATE_PAY_BACK_OVERDUE:
			stateDisplay = "逾期";
			break;
		case BidConst.BIDREQUEST_STATE_PUBLISH_REFUSE:
			stateDisplay = "发标审核拒绝状态";
			break;
		default:
			break;
		}
		return stateDisplay;
	}
	public String getJsonString(){
		Map<String, Object> map = new  HashMap<>();
		map.put("id", this.id);
		map.put("title", this.title);
		map.put("username", this.createUser.getUsername());
		map.put("bidRequestAmount", this.bidRequestAmount);
		map.put("monthes2Return", this.monthes2Return);
		map.put("returnType", this.getReturnTypeDisplay());
		map.put("currentRate", this.currentRate);
		map.put("totalRewardAmount", this.totalRewardAmount);
		return JSON.toJSONString(map);
	}
	public String getReturnTypeDisplay(){
		String returnTypeDisplay = "";
		switch (this.returnType) {
		case BidConst.RETURN_TYPE_MONTH_INTEREST_PRINCIPAL:
		returnTypeDisplay = "等额本息";
			break;
		case BidConst.RETURN_TYPE_MONTH_INTEREST:
			returnTypeDisplay = "按月到期";
			break;
		default:
			break;
		}
		return returnTypeDisplay;
	}

	public BigDecimal getRemainAmount(){
		return this.bidRequestAmount.subtract(this.currentSum);
	}
	public int getPercent(){
		return this.currentSum.divide(this.bidRequestAmount, 2, RoundingMode.HALF_UP).multiply(CalculatetUtil.ONE_HUNDRED).intValue();
	}
}
