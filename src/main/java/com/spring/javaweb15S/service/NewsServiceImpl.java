package com.spring.javaweb15S.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.spring.javaweb15S.dao.NewsDAO;
import com.spring.javaweb15S.vo.GoodVO;
import com.spring.javaweb15S.vo.NewsVO;

@Service
public class NewsServiceImpl implements NewsService {
	
	@Autowired
	NewsDAO newsDAO;

	@Override
	public List<NewsVO> getNewsList(int startIndexNo, int pageSize) {
		return newsDAO.getNewsList(startIndexNo, pageSize);
	}

	@Override
	public void imgCheck(String content) {
		if(content.indexOf("src=\"/") == -1) return;
		
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		String realPath = request.getSession().getServletContext().getRealPath("/resources/data/");
		
		int position = 29;
		String nextImg = content.substring(content.indexOf("src=\"/") + position);
		boolean sw = true;
		
		while(sw) {
			String imgFile = nextImg.substring(0, nextImg.indexOf("\""));
			
			String origFilePath = realPath + "ckeditor/" + imgFile;
			String copyFilePath = realPath + "news/" + imgFile;
			
			fileCopyCheck(origFilePath, copyFilePath);	// ckeditor폴더의 그림파일을 board폴더위치로 복사처리한다.
			
			if(nextImg.indexOf("src=\"/") == -1) {
				sw = false;
			}
			else {
				nextImg = nextImg.substring(nextImg.indexOf("src=\"/") + position);
			}
		}
	}

	private void fileCopyCheck(String origFilePath, String copyFilePath) {
		try {
			FileInputStream  fis = new FileInputStream(new File(origFilePath));
			FileOutputStream fos = new FileOutputStream(new File(copyFilePath));
			
			byte[] bytes = new byte[2048];
			int cnt = 0;
			while((cnt = fis.read(bytes)) != -1) {
				fos.write(bytes, 0, cnt);
			}
			fos.flush();
			fos.close();
			fis.close();		
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public int setNewsInput(NewsVO vo) {
		return newsDAO.setNewsInput(vo);
	}

	@Override
	public NewsVO getNewsContent(int idx) {
		return newsDAO.getNewsContent(idx);
	}

	@Override
	public void setNewsReadNum(int idx) {
		newsDAO.setNewsReadNum(idx);
	}

	@Override
	public ArrayList<NewsVO> getPrevNext(int idx) {
		return newsDAO.getPrevNext(idx);
	}

	@Override
	public GoodVO getNewsGoodCheck(int partIdx, String part, String mid) {
		return newsDAO.getNewsGoodCheck(partIdx, part, mid);
	}

	@Override
	public void setNewsGoodPlus(int idx) {
		newsDAO.setNewsGoodPlus(idx);
		
	}

	@Override
	public void setGoodPlusMinus(int idx, int goodCnt) {
		newsDAO.setGoodPlusMinus(idx);
		
	}

	@Override
	public void setGoodDBInput(GoodVO goodVo) {
		newsDAO.setGoodDBInput(goodVo);
		
	}

	@Override
	public void setGoodUpdate(int idx, int item) {
		newsDAO.setGoodUpdate(idx, item);
		
	}

	@Override
	public void setGoodDBDelete(int idx) {
		newsDAO.setGoodDBDelete(idx);
		
	}

	@Override
	public void imgDelete(String content) {
		if(content.indexOf("src=\"/") == -1) return;
		
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		String realPath = request.getSession().getServletContext().getRealPath("/resources/data/");
		
		int position = 26;
		String nextImg = content.substring(content.indexOf("src=\"/") + position);
		boolean sw = true;
		
		while(sw) {
			String imgFile = nextImg.substring(0, nextImg.indexOf("\""));	// 그림파일명만 꺼내오기
			
			String origFilePath = realPath + "news/" + imgFile;
			
			fileDelete(origFilePath);	// 폴더의 그림을 삭제처리한다.
			
			if(nextImg.indexOf("src=\"/") == -1) {
				sw = false;
			}
			else {
				nextImg = nextImg.substring(nextImg.indexOf("src=\"/") + position);
			}
		}
	}

	// 실제로 서버의 파일을 삭제처리한다.
	private void fileDelete(String origFilePath) {
		File delFile = new File(origFilePath);
		if(delFile.exists()) delFile.delete();
	}

	@Override
	public int setNewsDelete(int idx) {
		return newsDAO.setNewsDelete(idx);
	}

	@Override
	public void imgCheckUpdate(String content) {
		if(content.indexOf("src=\"/") == -1) return;
		
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		String realPath = request.getSession().getServletContext().getRealPath("/resources/data/");
		
		int position = 26;
		String nextImg = content.substring(content.indexOf("src=\"/") + position);
		boolean sw = true;
		
		while(sw) {
			String imgFile = nextImg.substring(0, nextImg.indexOf("\""));
			
			String origFilePath = realPath + "news/" + imgFile;
			String copyFilePath = realPath + "ckeditor/" + imgFile;
			
			fileCopyCheck(origFilePath, copyFilePath);	// ckeditor폴더의 그림파일을 폴더위치로 복사처리한다.
			
			if(nextImg.indexOf("src=\"/") == -1) {
				sw = false;
			}
			else {
				nextImg = nextImg.substring(nextImg.indexOf("src=\"/") + position);
			}
		}
	}

	@Override
	public int setNewsUpdate(NewsVO vo) {
		return newsDAO.setNewsUpdate(vo);
	}





		
	}

