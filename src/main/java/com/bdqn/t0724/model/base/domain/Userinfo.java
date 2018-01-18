package com.bdqn.t0724.model.base.domain;

import com.bdqn.t0724.model.base.util.BitStatesUtils;
import lombok.Getter;
import lombok.Setter;

//个人信息
@Getter
@Setter
public class Userinfo extends BaseDomain{
	private int version;//乐观锁
	private long bitState = 0;//状态码
	private String realName;//真实姓名
	private String idNumber;//身份证号码
	private String phoneNumber;//手机号码
	private String email;//电子邮箱
	private int score;//材料认证分数
	private Long realAuthId;
	private SystemDictionaryItem incomeGrade;//收入水平
	private SystemDictionaryItem marriage;//婚姻状况
	private SystemDictionaryItem kidCount;//子女状况
	private SystemDictionaryItem educationBackground;//教育背景
	private SystemDictionaryItem houseCondition;//住房条件
	//增加一个新的状态
	public void addState(long newState){
		this.bitState = BitStatesUtils.addState(this.bitState, newState);
	}
	//是否已经绑定手机:hasBindPhone
	public boolean getHasBindPhone(){
		return BitStatesUtils.hasState(this.bitState, BitStatesUtils.OP_BIND_PHONE);
	}
	//是否已经绑定邮箱:hasBindEmail
	public boolean getHasBindEmail(){
		return BitStatesUtils.hasState(this.bitState, BitStatesUtils.OP_BIND_EMAIL);
	}
	//是否填写了基本信息:hasBasicInfo
	public boolean getHasBasicInfo(){
		return BitStatesUtils.hasState(this.bitState, BitStatesUtils.OP_BASIC_INFO);
	}
	//是否进行了实名认证
	public boolean getHasRealAuth(){
		return BitStatesUtils.hasState(this.bitState, BitStatesUtils.OP_REAL_AUTH);
	}
	//是否进行了视频认证
	public boolean getHasVideoAuth(){
		return BitStatesUtils.hasState(this.bitState, BitStatesUtils.OP_VIDEO_AUTH);
	}
	/**
	 * 是否绑定了银行卡
	 * @return
	 */
	public boolean getHasBankCard(){
		return BitStatesUtils.hasState(this.bitState, BitStatesUtils.OP_BIND_BANKCARD);
	}
	/**
	 * 是否有借款正在处理流程中
	 * @return
	 */
	public boolean getHasBidRequestProcess(){
		return BitStatesUtils.hasState(this.bitState, BitStatesUtils.OP_HAS_BIDREQUEST_PROCESS);
	}
	/**
	 * 有在申请中的提现
	 * @return
	 */
	public boolean getHasMoneyWithdrawProcessing(){
		return BitStatesUtils.hasState(this.bitState, BitStatesUtils.OP_MOENY_WITHDRAW_PROCESS);
	}
	public void removeState(long removeState) {
		this.bitState = BitStatesUtils.removeState(this.bitState, removeState);
	}
	
}
