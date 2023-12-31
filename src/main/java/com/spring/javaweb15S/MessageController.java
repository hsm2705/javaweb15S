package com.spring.javaweb15S;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MessageController {
	
	@RequestMapping(value = "/message/{msgFlag}", method = RequestMethod.GET)
	public String listGet(@PathVariable String msgFlag,
			@RequestParam(name="mid", defaultValue = "", required=false) String mid,
			@RequestParam(name="temp", defaultValue = "", required=false) String temp,
			@RequestParam(name="idx", defaultValue = "0", required=false) int idx,
			@RequestParam(name="pag", defaultValue = "1", required=false) int pag,
			@RequestParam(name="pageSize", defaultValue = "5", required=false) int pageSize,
			Model model) {
		
		
		if(msgFlag.equals("guestAdminOk")) {
			model.addAttribute("msg", "관리자 인증 성공");
			model.addAttribute("url", "/guest/guestList");
		}
		else if(msgFlag.equals("guestAdminNo")) {
			model.addAttribute("msg", "관리자 인증 실패~~~");
			model.addAttribute("url", "/guest/adminLogin");
		}
		else if(msgFlag.equals("adminLogout")) {
			model.addAttribute("msg", "관리자 로그아웃");
			model.addAttribute("url", "/");
		}
		else if(msgFlag.equals("idCheckNo")) {
			model.addAttribute("msg", "아이디가 중복되었습니다.");
			model.addAttribute("url", "/member/memberJoin");
		}
		else if(msgFlag.equals("nickCheckNo")) {
			model.addAttribute("msg", "닉네임이 중복되었습니다.");
			model.addAttribute("url", "/member/memberJoin");
		}
		else if(msgFlag.equals("memberJoinOk")) {
			model.addAttribute("msg", "회원가입완료!!!");
			model.addAttribute("url", "/member/memberLogin");
		}
		else if(msgFlag.equals("memberJoinNo")) {
			model.addAttribute("msg", "회원가입 실패~~");
			model.addAttribute("url", "/member/memberJoin");
		}
		else if(msgFlag.equals("memberLoginOk")) {
			model.addAttribute("msg", mid + "님 로그인 되셨습니다.");
			model.addAttribute("url", "/member/memberMain");
		}
		else if(msgFlag.equals("memberLoginNo")) {
			model.addAttribute("msg", mid + "로그인 실패~~");
			model.addAttribute("url", "/member/memberLogin");
		}
		else if(msgFlag.equals("memberLogout")) {
			model.addAttribute("msg", mid + "로그아웃 되었습니다.");
			model.addAttribute("url", "/member/memberLogin");
		}
		else if(msgFlag.equals("adminNo")) {
			model.addAttribute("msg", "관리자가 아니시군요. 확인해 보세요.");
			model.addAttribute("url", "/");
		}
		else if(msgFlag.equals("memberNo")) {
			model.addAttribute("msg", "로그인후 사용하세요.");
			model.addAttribute("url", "/member/memberLogin");
		}
		else if(msgFlag.equals("levelCheckNo")) {
			model.addAttribute("msg", "회원 등급을 확인하세요.");
			model.addAttribute("url", "/member/memberMain");
		}
		else if(msgFlag.equals("memberIdCheckNo")) {
			model.addAttribute("msg", "회원아이디를 확인해 주세요.");
			model.addAttribute("url", "/member/memberPwdFind");
		}
		else if(msgFlag.equals("memberEmailCheckNo")) {
			model.addAttribute("msg", "회원 메일주소를 확인해 주세요.");
			model.addAttribute("url", "/member/memberPwdFind");
		}
		else if(msgFlag.equals("memberImsiPwdOk")) {
			model.addAttribute("msg", "임시비밀번호가 발급되었습니다.\\n가입된 메일을 확인후 비밀번호를 변경처리해 주세요.");
			model.addAttribute("url", "/member/memberLogin");
		}
		else if(msgFlag.equals("memberImsiPwdNo")) {
			model.addAttribute("msg", "임시비밀번호가 발급 실패~~");
			model.addAttribute("url", "/member/memberPwdFind");
		}
		else if(msgFlag.equals("memberPwdUpdateOk")) {
			model.addAttribute("msg", "비밀번호가 변경되었습니다.");
			model.addAttribute("url", "/member/memberMain");
		}
		else if(msgFlag.equals("memberPwdNewCheckNo")) {
			model.addAttribute("msg", "기존비밀번호와 같습니다. 새로운 비밀번호를 입력하세요.");
			model.addAttribute("url", "/member/memberPwdUpdate");
		}
		else if(msgFlag.equals("memberPwdNewCheckNo")) {
			model.addAttribute("msg", "비밀번호 오류~ 기존 비밀번호 확인후 다시 새 비밀번호로 수정하세요.");
			model.addAttribute("url", "/member/memberPwdUpdate");
		}
		else if(msgFlag.equals("fileUploadOk")) {
			model.addAttribute("msg", "파일이 업로드 되었습니다.");
			model.addAttribute("url", "/study/fileUpload/fileUploadForm");
		}
		else if(msgFlag.equals("fileUploadNo")) {
			model.addAttribute("msg", "파일이 업로드 실패~~");
			model.addAttribute("url", "/study/fileUpload/fileUploadForm");
		}
		else if(msgFlag.equals("memberPwdCheckNo")) {
			model.addAttribute("msg", "회원 정보를 확인하세요.");
			model.addAttribute("url", "/member/memberPwdCheck");
		}
		else if(msgFlag.equals("memberNickCheckNo")) {
			model.addAttribute("msg", "닉네임을 확인하세요.");
			model.addAttribute("url", "/member/member");
		}
		else if(msgFlag.equals("memberUpdateOk")) {
			model.addAttribute("msg", "회원 정보가 수정되었습니다.");
			model.addAttribute("url", "/member/memberMain");
		}
		else if(msgFlag.equals("memberUpdateNo")) {
			model.addAttribute("msg", "회원 정보가 수정 실패~~");
			model.addAttribute("url", "/member/memberUpdate");
		}
		else if(msgFlag.equals("memberDeleteOk")) {
			model.addAttribute("msg", mid+"님 회원에서 탈퇴되었습니다.\\n같은 아이디로 1달이내 재가입 하실수 없습니다.");
			model.addAttribute("url", "/member/memberLogin");
		}
		else if(msgFlag.equals("newsInputOk")) {
			model.addAttribute("msg", "게시글이 등록되었습니다.");
			model.addAttribute("url", "/news/newsList");
		}
		else if(msgFlag.equals("newsInputNo")) {
			model.addAttribute("msg", "게시글 등록실패~~");
			model.addAttribute("url", "/news/newsInput");
		}
		else if(msgFlag.equals("newsDeleteOk")) {
			model.addAttribute("msg", "게시글이 삭제 되었습니다.");
			model.addAttribute("url", "/news/newsList");
		}
		else if(msgFlag.equals("newsDeleteNo")) {
			model.addAttribute("msg", "게시글이 삭제 실패~~");
			model.addAttribute("url", "/news/newsContent?idx="+idx+"&pag="+pag+"&pageSize="+pageSize);
		}
		else if(msgFlag.equals("newsUpdateOk")) {
			model.addAttribute("msg", "게시글이 수정되었습니다.");
			model.addAttribute("url", "/news/newsList?pag="+pag+"&pageSize="+pageSize);
		}
		else if(msgFlag.equals("newsUpdateNo")) {
			model.addAttribute("msg", "게시글이 수정 실패~~");
			model.addAttribute("url", "/news/newsUpdate?idx="+idx+"&pag="+pag+"&pageSize="+pageSize);
		}
		else if(msgFlag.equals("userInputOk")) {
			model.addAttribute("msg", "유저등록 OK!!!");
			model.addAttribute("url", "/study/validator/validatorList");
		}
		else if(msgFlag.equals("userInputNo")) {
			model.addAttribute("msg", "유저등록 실패~~~");
			model.addAttribute("url", "/study/validator/validatorForm");
		}
		else if(msgFlag.equals("userCheckNo")) {
			model.addAttribute("msg", "유저정보를 확인하세요~~");
			model.addAttribute("url", "/study/validator/validatorForm");
		}
		else if(msgFlag.equals("validatorDeleteOk")) {
			model.addAttribute("msg", "유저정보가 삭제 되었습니다.");
			model.addAttribute("url", "/study/validator/validatorList");
		}
		else if(msgFlag.equals("validatorError")) {
			model.addAttribute("msg", "등록 실패~~ "+temp+"를 확인하세요...");
			model.addAttribute("url", "/study/validator/validatorForm");
		}
		else if(msgFlag.equals("pdsInputOk")) {
			model.addAttribute("msg", "파일이 업로드 되었습니다.");
			model.addAttribute("url", "/pds/pdsList");
		}
		else if(msgFlag.equals("pdsInputNo")) {
			model.addAttribute("msg", "파일 업로드 실패~~");
			model.addAttribute("url", "/pds/pdsInput");
		}
		else if(msgFlag.equals("dbProductInputOk")) {
			model.addAttribute("msg", "상품이 등록되었습니다.");
			model.addAttribute("url", "/dbShop/dbShopList");
		}
		else if(msgFlag.equals("dbOptionInputOk")) {
			model.addAttribute("msg", "옵션 항목이 등록되었습니다.");
			model.addAttribute("url", "/dbShop/dbOption");
		}
		else if(msgFlag.equals("dbOptionInput2Ok")) {
			model.addAttribute("msg", "옵션 항목이 등록되었습니다.");
			model.addAttribute("url", "/dbShop/dbOption2?productName="+temp);
		}
		else if(msgFlag.equals("thumbnailCreateOk")) {
			model.addAttribute("msg", "썸네일 이미지가 생성되었습니다.");
			model.addAttribute("url", "/study/thumbnail/thumbnailResult");
		}
		else if(msgFlag.equals("thumbnailCreateNo")) {
			model.addAttribute("msg", "썸네일 이미지 생성 실패~~");
			model.addAttribute("url", "/study/thumbnail/thumbnailForm");
		}
		else if(msgFlag.equals("cartOrderOk")) {
			model.addAttribute("msg", "장바구니에 상품이 등록되었습니다.\\n주문창으로 이동합니다.");
			model.addAttribute("url", "/dbShop/dbCartList");
		}
		else if(msgFlag.equals("cartInputOk")) {
			model.addAttribute("msg", "장바구니에 상품이 등록되었습니다.\\n즐거운 쇼핑되세요.");
			model.addAttribute("url", "/dbShop/dbProductList");
		}
		else if(msgFlag.equals("cartEmpty")) {
			model.addAttribute("msg", "장바구니가 비어있습니다.");
			model.addAttribute("url", "/dbShop/dbProductList");
		}
		else if(msgFlag.equals("paymentResultOk")) {
			model.addAttribute("msg", "결제가 정상적으로 완료되었습니다.");
			model.addAttribute("url", "/dbShop/paymentResultOk");
		}
		else if(msgFlag.equals("transactionInput1Ok")) {
			model.addAttribute("msg", "개별 회원 처리가 성공적으로 수행되었습니다.");
			model.addAttribute("url", "/study/transaction/transactionList");
		}
		else if(msgFlag.equals("transactionInput2Ok")) {
			model.addAttribute("msg", "회원 일괄 처리가 성공적으로 수행되었습니다.");
			model.addAttribute("url", "/study/transaction/transactionList");
		}
		else if(msgFlag.equals("mainImageInputOk")) {
			model.addAttribute("msg", "메인이미지가 등록되었습니다.");
			model.addAttribute("url", "/dbShop/mainImageList");
		}
		else if(msgFlag.equals("mainImageInputNo")) {
			model.addAttribute("msg", "메인이미지 등록 실패~~");
			model.addAttribute("url", "/dbShop/mainImageInput");
		}
		else if(msgFlag.equals("inquiryInputOk")) {
			model.addAttribute("msg", "1:1 문의사항이 등록되었습니다.");
			model.addAttribute("url", "/inquiry/inquiryList");
		}
		else if(msgFlag.equals("inquiryUpdateOk")) {
			model.addAttribute("msg", "1:1 문의사항이 수정되었습니다.");
			model.addAttribute("url", "/inquiry/inquiryView?idx="+idx);
		}
		else if(msgFlag.equals("inquiryDeleteOk")) {
			model.addAttribute("msg", "1:1 문의사항이 삭제되었습니다.");
			model.addAttribute("url", "/inquiry/inquiryList?pag="+pag);
		}
		else if(msgFlag.equals("adInquiryDeleteOk")) {
			model.addAttribute("msg", "1:1 문의글과 답변글이 삭제되었습니다.");
			model.addAttribute("url", "/admin/adInquiryList?pag="+pag);
		}
		
		
		
		return "include/message";
	}
	
	
}
