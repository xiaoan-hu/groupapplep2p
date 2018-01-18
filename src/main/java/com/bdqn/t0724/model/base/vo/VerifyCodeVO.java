package com.bdqn.t0724.model.base.vo;

import lombok.Getter;

import java.util.Date;

@Getter
public class VerifyCodeVO {
	private String code;
	private String phoneNumber;
	private Date sendTime;
	public VerifyCodeVO(String code, String phoneNumber, Date sendTime) {
		super();
		this.code = code;
		this.phoneNumber = phoneNumber;
		this.sendTime = sendTime;
	}
}
