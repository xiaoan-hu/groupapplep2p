package com.bdqn.t0724.mapper;

import com.bdqn.t0724.model.MoneyWithDraw;
import java.util.List;

public interface MoneyWithDrawMapper {
    int deleteByPrimaryKey(Long id);

    int insert(MoneyWithDraw record);

    MoneyWithDraw selectByPrimaryKey(Long id);

    List<MoneyWithDraw> selectAll();

    int updateByPrimaryKey(MoneyWithDraw record);
}