package com.spring.javaweb15S.vo;

import lombok.Data;

@Data
public class NewsReplyVO {
	private int idx;
	private int newsIdx;
	private String mid;
	private String nickName;
	private String wDate;
	private String content;
	private int groupId;
	private int level;

	
}
