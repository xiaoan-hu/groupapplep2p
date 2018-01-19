package com.bdqn.t0724.mapper;

import com.bdqn.t0724.model.SystemAccount;
import java.util.List;

public interface SystemAccountMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SystemAccount record);

    SystemAccount selectByPrimaryKey(Long id);

    List<SystemAccount> selectAll();

    int updateByPrimaryKey(SystemAccount record);
}