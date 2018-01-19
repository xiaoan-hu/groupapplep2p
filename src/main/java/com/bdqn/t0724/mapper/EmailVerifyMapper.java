package com.bdqn.t0724.mapper;

import com.bdqn.t0724.model.EmailVerify;
import java.util.List;

public interface EmailVerifyMapper {
    int deleteByPrimaryKey(Long id);

    int insert(EmailVerify record);

    EmailVerify selectByPrimaryKey(Long id);

    List<EmailVerify> selectAll();

    int updateByPrimaryKey(EmailVerify record);
}