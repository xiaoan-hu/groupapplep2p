package com.bdqn.t0724.mapper;

import com.bdqn.t0724.model.Borrow;

import java.util.List;

public interface BorrowMapper {

    List<Borrow> list();

    boolean create (Borrow borrow);

    boolean update(Borrow borrow);

    boolean delete(Integer id);

}
