package com.bdqn.t0724.mapper;

import com.bdqn.t0724.model.SystemAccountFlow;
import java.util.List;

public interface SystemAccountFlowMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SystemAccountFlow record);

    SystemAccountFlow selectByPrimaryKey(Long id);

    List<SystemAccountFlow> selectAll();

    int updateByPrimaryKey(SystemAccountFlow record);
}