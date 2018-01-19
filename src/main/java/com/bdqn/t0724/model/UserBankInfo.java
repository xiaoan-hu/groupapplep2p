package com.bdqn.t0724.model;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class UserBankInfo {
    private Long id;

    private String bankname;

    private String accountname;

    private String accountnumber;

    private String forkname;

    private Long logininfoId;
}