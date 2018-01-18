package com.bdqn.t0724.model.base.domain;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

//登录日志
@Setter
@Getter
public class Iplog extends BaseDomain{
	public static final int LOGIN_SUCCESS = 0;//登录成功
	public static final int LOGIN_FAIL = 1;//登录失败
	private String username;//登录用户名
	private String ip;//登录ip
	private Date loginTime;//登录时间
	private int state = LOGIN_FAIL;//登录状态:成功(0),失败(1)
	private int userType = Logininfo.USER_NORMAL;
	public String getStateDisplay(){
		return state == LOGIN_SUCCESS ?"成功":"失败";
	}
	public String getUserTypeDisplay(){
		return userType == Logininfo.USER_NORMAL ? "普通用户" : "管理员";
	}
}
