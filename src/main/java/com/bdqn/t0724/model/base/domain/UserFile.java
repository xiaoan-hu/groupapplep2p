package com.bdqn.t0724.model.base.domain;

import com.alibaba.fastjson.JSON;
import lombok.Getter;
import lombok.Setter;

import java.util.HashMap;
import java.util.Map;

/**
 * 风控资料
 * @author zhangdingshui
 *
 */
@Getter
@Setter
public class UserFile extends BaseAuthDomain{
	private String image;//图片路径
	private SystemDictionaryItem fileType;//材料类型
	private int score ;//材料得分
	public String getJsonString(){
		Map<String,Object> map = new HashMap<>();
		map.put("id", id);
		map.put("applier", applier.getUsername());
		map.put("fileType", fileType.getTitle());
		map.put("image", image);
		return JSON.toJSONString(map);
	}
}
