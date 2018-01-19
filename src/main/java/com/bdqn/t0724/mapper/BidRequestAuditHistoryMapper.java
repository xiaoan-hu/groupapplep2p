package com.bdqn.t0724.mapper;

import com.bdqn.t0724.model.BidRequestAuditHistory;
import java.util.List;

public interface BidRequestAuditHistoryMapper {
    int deleteByPrimaryKey(Long id);

    int insert(BidRequestAuditHistory record);

    BidRequestAuditHistory selectByPrimaryKey(Long id);

    List<BidRequestAuditHistory> selectAll();

    int updateByPrimaryKey(BidRequestAuditHistory record);
}