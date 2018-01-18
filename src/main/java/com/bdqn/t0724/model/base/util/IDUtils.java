package com.bdqn.t0724.model.base.util;

import java.util.UUID;

/**
 * IDUtils
 * Created by DaneZhang on 2017/4/30.
 */
public class IDUtils {
    /**
     * 获得32位UUID
     * @return
     */
    public static String uuid(){
        return UUID.randomUUID().toString().replace("-","");
    }
}
