package com.spring.javaweb15S.vo;

import lombok.Data;

@Data
public class ProDeliveryVO {
	private int idx;
	private int oIdx;
	private String orderIdx;
	private int orderTotalPrice;
	private String mid;
	private String name;
	private String address;
	private String tel;
	private String message;
	private String payment;
	private String payMethod;
	private String orderStatus;
}
