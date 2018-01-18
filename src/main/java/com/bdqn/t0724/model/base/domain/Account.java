package com.bdqn.t0724.model.base.domain;

import com.bdqn.t0724.model.base.util.BidConst;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;

@Getter
@Setter
public class Account extends BaseDomain{
	private int version;//对象版本号,用作乐观锁
	private String tradePassword;//交易密码
	private BigDecimal usableAmount = BidConst.ZERO;//账户可用余额
	private BigDecimal freezedAmount = BidConst.ZERO;//账户冻结金额
	private BigDecimal unReceiveInterest = BidConst.ZERO;//账户待收利息
	private BigDecimal unReceivePrincipal = BidConst.ZERO;//账户待收本金
	private BigDecimal unReturnAmount = BidConst.ZERO;//账户待还金额
	private BigDecimal remainBorrowLimit = BidConst.DEFAULT_BORROW_LIMIT;//账户剩余授权额度
	private BigDecimal borrowLimit = BidConst.DEFAULT_BORROW_LIMIT;//账户授权额度
	
	private BigDecimal getTotalAmount(){
		return usableAmount.add(freezedAmount).add(unReceivePrincipal);
	}
}
