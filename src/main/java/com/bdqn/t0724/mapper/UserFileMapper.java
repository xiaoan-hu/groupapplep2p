package com.bdqn.t0724.mapper;

import com.bdqn.t0724.model.UserFile;
import java.util.List;

public interface UserFileMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UserFile record);

    UserFile selectByPrimaryKey(Long id);

    List<UserFile> selectAll();

    int updateByPrimaryKey(UserFile record);
}