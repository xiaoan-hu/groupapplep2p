package com.bdqn.t0724.mapper;

import com.bdqn.t0724.model.PaymentSchedule;
import java.util.List;

public interface PaymentScheduleMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PaymentSchedule record);

    PaymentSchedule selectByPrimaryKey(Long id);

    List<PaymentSchedule> selectAll();

    int updateByPrimaryKey(PaymentSchedule record);
}