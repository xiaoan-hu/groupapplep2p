package com.bdqn.t0724.mapper;

import com.bdqn.t0724.model.BidRequest;
import java.util.List;

public interface BidRequestMapper {
    int deleteByPrimaryKey(Long id);

    int insert(BidRequest record);

    BidRequest selectByPrimaryKey(Long id);

    List<BidRequest> selectAll();

    int updateByPrimaryKey(BidRequest record);
}