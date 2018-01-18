package com.bdqn.t0724.model.base.domain;

import com.alibaba.fastjson.JSON;
import lombok.Getter;
import lombok.Setter;

import java.util.HashMap;
import java.util.Map;

//数据字典目录
@Getter
@Setter
public class SystemDictionary extends BaseDomain{
	private String sn;//数据字典分类编码,英文
	private String title;//数据字典分类名称,中文
	public String getJsonString(){
		Map<String, Object> map = new HashMap<>();
		map.put("id",id);
		map.put("sn",sn);
		map.put("title",title);
		return JSON.toJSONString(map);
	}
}
