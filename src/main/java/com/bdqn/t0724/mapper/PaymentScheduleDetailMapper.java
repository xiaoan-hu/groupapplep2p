package com.bdqn.t0724.mapper;

import com.bdqn.t0724.model.PaymentScheduleDetail;
import java.util.List;

public interface PaymentScheduleDetailMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PaymentScheduleDetail record);

    PaymentScheduleDetail selectByPrimaryKey(Long id);

    List<PaymentScheduleDetail> selectAll();

    int updateByPrimaryKey(PaymentScheduleDetail record);
}