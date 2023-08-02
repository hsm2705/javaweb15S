package com.spring.javaweb15S.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.javaweb15S.vo.DbBaesongVO;
import com.spring.javaweb15S.vo.DbCartVO;
import com.spring.javaweb15S.vo.DbOptionVO;
import com.spring.javaweb15S.vo.DbOrderVO;
import com.spring.javaweb15S.vo.DbProductVO;
import com.spring.javaweb15S.vo.MainImageVO;
	
public interface DbShopService {

	public List<DbProductVO> getCategoryMain();

	public void setCategoryMainInput(DbProductVO vo);

	public DbProductVO getCategoryMainOne(String categoryMainCode, String categoryMainName);

	public List<DbProductVO> getCategoryMiddle();

	public DbProductVO getCategoryMiddleOne(DbProductVO vo);

	public void setCategoryMiddleInput(DbProductVO vo);

	public List<DbProductVO> getCategorySub();

	public List<DbProductVO> getCategoryMiddleName(String categoryMainCode);

	public DbProductVO getCategorySubOne(DbProductVO vo);

	public void setCategorySubInput(DbProductVO vo);

	public List<DbProductVO> getCategorySubName(String categoryMainCode, String categoryMiddleCode);

	public List<DbProductVO> getCategoryProductName(String categoryMainCode, String categoryMiddleCode, String categorySubCode);

	public void imgCheckProductInput(MultipartFile file, DbProductVO vo);

	public List<DbProductVO> getSubTitle();

	public List<DbProductVO> getDbShopList(String part);

	public DbProductVO getDbShopProduct(int idx);

	public DbProductVO getProductInfor(String productName);

	public List<DbOptionVO> getOptionList(int productIdx);

	public void setDbOptionInput(DbOptionVO vo);

	public int getOptionSame(int productIdx, String optionName);

	public void setOptionDelete(int idx);

	public List<DbOptionVO> getDbShopOption(int productIdx);

	public void setCategoryMainDelete(String categoryMainCode);

	public void setCategoryMiddleDelete(String categoryMiddleCode);

	public DbProductVO getDbProductOne(String categorySubCode);

	public void setCategorySubDelete(String categorySubCode);

	public DbCartVO getDbCartProductOptionSearch(String productName, String optionName, String mid);

	public void dbShopCartUpdate(DbCartVO vo);

	public void dbShopCartInput(DbCartVO vo);

	public List<DbCartVO> getDbCartList(String mid);

	public void dbCartDelete(int idx);

	public DbCartVO getCartIdx(int idx);

	public DbOrderVO getOrderMaxIdx();

	public void setDbOrder(DbOrderVO vo);

	public void setDbCartDeleteAll(int idx);

	public void setDbBaesong(DbBaesongVO baesongVO);

	public List<DbBaesongVO> getOrderBaesong(String orderIdx);

	public List<DbBaesongVO> getMyOrderList(int startIndexNo, int pageSize, String mid);

	public List<DbBaesongVO> getMyOrderStatus(int startIndexNo, int pageSize, String mid, String startJumun, String endJumun, String conditionOrderStatus);

	public List<DbBaesongVO> getOrderCondition(String mid, int conditionDate, int startIndexNo, int pageSize);
	
	public List<DbBaesongVO> getAdminOrderStatus(int startIndexNo, int pageSize, String startJumun, String endJumun, String orderStatus);

	public void setOrderStatusUpdate(String orderIdx, String orderStatus);

	public List<MainImageVO> getMainImageSearch(String productCode);

	public List<MainImageVO> getMainImageList();

	public int mainImageInput(MainImageVO vo, MultipartHttpServletRequest fName);

	public int mainImageDelete(String productCode);

	public int getTotalBaesongOrder(String orderIdx);


}
