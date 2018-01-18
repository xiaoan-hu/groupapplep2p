package com.bdqn.t0724.model.base.domain;

import com.alibaba.fastjson.JSON;
import lombok.Getter;
import lombok.Setter;

import java.util.HashMap;
import java.util.Map;

//数据字典明细
@Getter
@Setter
public class SystemDictionaryItem extends BaseDomain{
	private long parentId;//数据字典明细对应的分类id
	private String title;//数据字典明细显示名称
	private int sequence;//数据字典明细在该分类中的排序//增删改时怎样维护排序?
	public String getJsonString(){
		Map<String, Object> map = new HashMap<>();
		map.put("id",id);
		map.put("title",title);
		map.put("sequence", sequence);
		map.put("parentId", parentId);
		return JSON.toJSONString(map);
	}
}
