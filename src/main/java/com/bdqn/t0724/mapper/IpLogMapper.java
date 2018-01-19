package com.bdqn.t0724.mapper;

import com.bdqn.t0724.model.IpLog;
import java.util.List;

public interface IpLogMapper {
    int deleteByPrimaryKey(Long id);

    int insert(IpLog record);

    IpLog selectByPrimaryKey(Long id);

    List<IpLog> selectAll();

    int updateByPrimaryKey(IpLog record);
}