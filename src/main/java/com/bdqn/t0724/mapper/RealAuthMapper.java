package com.bdqn.t0724.mapper;

import com.bdqn.t0724.model.RealAuth;
import java.util.List;

public interface RealAuthMapper {
    int deleteByPrimaryKey(Long id);

    int insert(RealAuth record);

    RealAuth selectByPrimaryKey(Long id);

    List<RealAuth> selectAll();

    int updateByPrimaryKey(RealAuth record);
}