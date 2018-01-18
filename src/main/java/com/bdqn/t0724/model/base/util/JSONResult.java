package com.bdqn.t0724.model.base.util;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class JSONResult {
	private boolean success = true;
	private String message;
	public void mark(String  errorMsg){
		this.success = false;
		this.message = errorMsg;
	}

	public JSONResult() {}

	public JSONResult(String message) {
		this.message = message;
	}
}
