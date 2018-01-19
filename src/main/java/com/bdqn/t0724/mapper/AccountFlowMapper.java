package com.bdqn.t0724.mapper;

import com.bdqn.t0724.model.AccountFlow;
import java.util.List;

public interface AccountFlowMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AccountFlow record);

    AccountFlow selectByPrimaryKey(Long id);

    List<AccountFlow> selectAll();

    int updateByPrimaryKey(AccountFlow record);
}