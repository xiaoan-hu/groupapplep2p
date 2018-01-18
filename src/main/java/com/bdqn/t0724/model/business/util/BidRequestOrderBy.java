package com.bdqn.t0724.model.business.util;

import lombok.Getter;

@Getter
public enum BidRequestOrderBy {
	BIDREQUEST_STATE("br.bidRequestState");
	private String orderBy;
	BidRequestOrderBy(String orderBy){
		this.orderBy = orderBy;
	}
}
