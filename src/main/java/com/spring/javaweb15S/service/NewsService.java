package com.spring.javaweb15S.service;

import java.util.ArrayList;
import java.util.List;

import com.spring.javaweb15S.vo.GoodVO;
import com.spring.javaweb15S.vo.NewsVO;

public interface NewsService {

	public List<NewsVO> getNewsList(int startIndexNo, int pageSize);

	public void imgCheck(String content);

	public int setNewsInput(NewsVO vo);

	public NewsVO getNewsContent(int idx);

	public void setNewsReadNum(int idx);

	public ArrayList<NewsVO> getPrevNext(int idx);

	public GoodVO getNewsGoodCheck(int partIdx, String part, String mid);

	public void setNewsGoodPlus(int idx);

	public void setGoodPlusMinus(int idx, int goodCnt);

	public void setGoodDBInput(GoodVO goodVo);

	public void setGoodUpdate(int idx, int item);

	public void setGoodDBDelete(int idx);

	public void imgDelete(String content);

	public int setNewsDelete(int idx);

	public void imgCheckUpdate(String content);

	public int setNewsUpdate(NewsVO vo);


}
