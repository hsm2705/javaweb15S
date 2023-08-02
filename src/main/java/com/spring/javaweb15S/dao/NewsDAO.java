package com.spring.javaweb15S.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.javaweb15S.vo.GoodVO;
import com.spring.javaweb15S.vo.NewsVO;

public interface NewsDAO {

	public int totRecCnt();

	public List<NewsVO> getNewsList(@Param("startIndexNo") int startIndexNo, @Param("pageSize") int pageSize);

	public int totRecCntSearch(@Param("search") String search, @Param("searchString") String searchString);

	public int setNewsInput(@Param("vo") NewsVO vo);

	public NewsVO getNewsContent(@Param("idx") int idx);

	public void setNewsReadNum(@Param("idx") int idx);

	public ArrayList<NewsVO> getPrevNext(@Param("idx") int idx);

	public GoodVO getNewsGoodCheck(@Param("partIdx") int partIdx, @Param("part") String part, @Param("mid") String mid);

	public void setNewsGoodPlus(@Param("idx") int idx);

	public void setGoodPlusMinus(@Param("idx") int idx);

	public void setGoodDBInput(@Param("goodVo") GoodVO goodVo);

	public void setGoodUpdate(@Param("idx") int idx, @Param("item") int item);

	public void setGoodDBDelete(@Param("idx") int idx);

	public int setNewsDelete(@Param("idx") int idx);

	public int setNewsUpdate(@Param("vo") NewsVO vo);



}
