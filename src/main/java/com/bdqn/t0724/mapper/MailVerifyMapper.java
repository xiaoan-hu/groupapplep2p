package com.bdqn.t0724.mapper;

import com.bdqn.t0724.model.MailVerify;
import java.util.List;

public interface MailVerifyMapper {
    int deleteByPrimaryKey(Long id);

    int insert(MailVerify record);

    MailVerify selectByPrimaryKey(Long id);

    List<MailVerify> selectAll();

    int updateByPrimaryKey(MailVerify record);
}