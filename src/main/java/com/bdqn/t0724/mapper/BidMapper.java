package com.bdqn.t0724.mapper;

import com.bdqn.t0724.model.Bid;
import java.util.List;

public interface BidMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Bid record);

    Bid selectByPrimaryKey(Long id);

    List<Bid> selectAll();

    int updateByPrimaryKey(Bid record);
}