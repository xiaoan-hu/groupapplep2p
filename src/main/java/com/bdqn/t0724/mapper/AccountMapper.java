package com.bdqn.t0724.mapper;

import com.bdqn.t0724.model.Account;
import java.util.List;

public interface AccountMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Account record);

    Account selectByPrimaryKey(Long id);

    List<Account> selectAll();

    int updateByPrimaryKey(Account record);
}