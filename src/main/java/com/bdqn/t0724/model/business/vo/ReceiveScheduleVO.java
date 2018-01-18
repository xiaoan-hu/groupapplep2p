package com.bdqn.t0724.model.business.vo;

import com.bdqn.t0724.model.base.util.BidConst;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.Date;

/**
 * Created by DaneZhang on 2017/5/1.
 */
@Getter
@Setter
public class ReceiveScheduleVO {
    private Long bidRequestId;//借款id
    private String bidRequestTitle;//借款标题
    private BigDecimal totalAmount; // 本期还款总金额，利息 +本金
    private BigDecimal principal; // 本期还款本金
    private BigDecimal interest; // 本期还款总利息
    private int monthIndex; // 第几期 (即第几个月)
    private Date deadLine; // 本期还款截止期限
    private Date payDate;//投资时间
    private int state = BidConst.PAYMENT_STATE_NORMAL; // 本期还款状态（默认正常待还）
    private int bidRequestType; // 借款类型
    private int returnType; // 还款方式，等同借款(BidRequest)中的还款方式

    public String getStateDisplay() {
        switch (state) {
            case BidConst.PAYMENT_STATE_NORMAL:
                return "正常待还";
            case BidConst.PAYMENT_STATE_DONE:
                return "已还";
            case BidConst.PAYMENT_STATE_OVERDUE:
                return "逾期";
            default:
                return "未知情况";
        }
    }
}
