package com.bdqn.t0724.mapper;

import com.bdqn.t0724.model.PlatFormBankInfo;
import java.util.List;

public interface PlatFormBankInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PlatFormBankInfo record);

    PlatFormBankInfo selectByPrimaryKey(Long id);

    List<PlatFormBankInfo> selectAll();

    int updateByPrimaryKey(PlatFormBankInfo record);
}