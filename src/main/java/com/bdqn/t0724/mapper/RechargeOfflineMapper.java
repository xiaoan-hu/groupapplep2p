package com.bdqn.t0724.mapper;

import com.bdqn.t0724.model.RechargeOffline;
import java.util.List;

public interface RechargeOfflineMapper {
    int deleteByPrimaryKey(Long id);

    int insert(RechargeOffline record);

    RechargeOffline selectByPrimaryKey(Long id);

    List<RechargeOffline> selectAll();

    int updateByPrimaryKey(RechargeOffline record);
}