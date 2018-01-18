package com.bdqn.t0724.model;

import lombok.Getter;
import lombok.Setter;

import java.math.BigInteger;

@Setter
@Getter
public class UserInfo {
    private BigInteger id;
    private int version;
    private BigInteger bitState;
    private String realName;
    private int score;
    private BigInteger realAuthId;
    private String idNumber;
    private String phoneNumber;
    private BigInteger incomeGradeId;
    private BigInteger marriageId;
    private BigInteger kidCountId;
    private BigInteger educationBackgroundId;
    private BigInteger houseConditionId;
    private String email;
}
