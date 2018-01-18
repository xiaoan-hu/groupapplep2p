package com.bdqn.t0724.model.base.domain;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class BaseAuthDomain extends BaseDomain{
	public static final int STATE_NORMAL = 0;//待审核
	public static final int STATE_SUCCESS = 1;//审核通过
	public static final int STATE_REJECT = 2;//审核拒绝
	protected Logininfo applier;//申请人
	protected Date applyTime;//申请时间
	protected Logininfo auditor;//审核人
	protected Date auditTime;//审核时间
	protected int state = STATE_NORMAL;//审核状态
	protected String remark;
	public String getStateDisplay(){
		switch(this.state){
			case STATE_NORMAL : return "待审核";
			case STATE_SUCCESS : return "审核通过";
			case STATE_REJECT : return "审核拒绝";
			default : return "";
		}
	}
}