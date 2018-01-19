package com.bdqn.t0724.model.base.util;



import com.bdqn.t0724.model.base.domain.Logininfo;
import com.bdqn.t0724.model.base.vo.VerifyCodeVO;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpSession;

public class UserContext {
	public static final String USER_IN_SESSION = "logininfo";//freemark从session取值
	public static final String VERIFYCODE_IN_SESSION = "code";//freemark从session取值
	public static HttpSession getSession (){
		return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest().getSession();
	}
	public static void setCurrentUser(Logininfo currentUser){
		getSession().setAttribute(UserContext.USER_IN_SESSION, currentUser);
	}
	public static Logininfo getCurrentUser(){
		return (Logininfo) getSession().getAttribute(USER_IN_SESSION);
	}
	//将手机验证码存储到session中
	public static void setVerifyCodeVO(VerifyCodeVO vo){
		getSession().setAttribute(VERIFYCODE_IN_SESSION, vo);
	}
	public static VerifyCodeVO getVerifyCodeVO() {
		return (VerifyCodeVO) getSession().getAttribute(VERIFYCODE_IN_SESSION);
	}
}
