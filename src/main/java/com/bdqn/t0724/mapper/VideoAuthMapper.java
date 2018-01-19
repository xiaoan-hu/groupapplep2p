package com.bdqn.t0724.mapper;

import com.bdqn.t0724.model.VideoAuth;
import java.util.List;

public interface VideoAuthMapper {
    int deleteByPrimaryKey(Long id);

    int insert(VideoAuth record);

    VideoAuth selectByPrimaryKey(Long id);

    List<VideoAuth> selectAll();

    int updateByPrimaryKey(VideoAuth record);
}