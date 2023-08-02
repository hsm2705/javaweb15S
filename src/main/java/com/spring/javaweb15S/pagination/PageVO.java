package com.spring.javaweb15S.pagination;

import lombok.Data;

@Data
public class PageVO {
	private int pag;
	private int pageSize;
	private int totRecCnt;
	private int totPage;
	private int startIndexNo;
	private int curScrStartNo;
	private int curBlock;
	private int blockSize;
	private int lastBlock;
	
	private String part;
	private String search;
	private String searchString;
	
}
