package com.bdqn.t0724.model.base.domain;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class Logininfo extends BaseDomain{
	public static final int USER_NORMAL = 0;//前台用户
	public static final int USER_MANAGER = 1;//后台管理员
	public static int STATE_NORMAL = 0;//启用账号
	public static int STATE_LOCK = 1;//禁用账号
	private String username;
	private String password;
	private int state = Logininfo.STATE_NORMAL;//账号状态
	private int userType = USER_NORMAL;//用户类型
	public Logininfo(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	public Logininfo(){
		super();
	}
}
