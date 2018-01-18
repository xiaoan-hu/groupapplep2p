package com.bdqn.t0724.model.base.domain;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

//邮箱验证对象
@Getter
@Setter
public class EmailVerify extends BaseDomain{
	private String email;//邮箱地址
	private Long userinfoId;//哪一个用户绑定
	private Date sendTime;//邮件的发送时间
	private String uuid;//uuid
}
