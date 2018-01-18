package com.bdqn.t0724.mapper;

import com.bdqn.t0724.model.UserBankInfo;
import java.util.List;

public interface UserBankInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UserBankInfo record);

    UserBankInfo selectByPrimaryKey(Long id);

    List<UserBankInfo> selectAll();

    int updateByPrimaryKey(UserBankInfo record);
}