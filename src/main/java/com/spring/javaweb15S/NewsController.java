package com.spring.javaweb15S;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.javaweb15S.pagination.PageProcess;
import com.spring.javaweb15S.pagination.PageVO;
import com.spring.javaweb15S.service.NewsService;
import com.spring.javaweb15S.vo.GoodVO;
import com.spring.javaweb15S.vo.NewsVO;

@Controller
@RequestMapping("/news")
public class NewsController {
	
	@Autowired
	NewsService newsService;
	
	@Autowired
	PageProcess pageProcess;
	
	@RequestMapping(value = "/newsList", method = RequestMethod.GET)
	public String newsListGet(
			@RequestParam(name="pag", defaultValue = "1", required=false) int pag,
			@RequestParam(name="pageSize", defaultValue = "5", required=false) int pageSize,
			Model model) {
		PageVO pageVO = pageProcess.totRecCnt(pag, pageSize, "news", "", "");
		
		List<NewsVO> vos = newsService.getNewsList(pageVO.getStartIndexNo(), pageSize);
		
		model.addAttribute("vos", vos);
		model.addAttribute("pageVO", pageVO);
		
		return "news/newsList";
	}
	
	
	@RequestMapping(value = "/newsInput", method = RequestMethod.GET)
	public String newsInputGet() {
		return "news/newsInput";
	}
	
	@RequestMapping(value = "/newsInput", method = RequestMethod.POST)
	public String newsInputPost(NewsVO vo) {
		// content에 이미지가 저장되어 있다면, 저장된 이미지만 골라서 /resources/data/news/폴더에 저장시켜준다.
		newsService.imgCheck(vo.getContent());
		
		// 이미지들의 모든 복사작업을 마치면, ckeditor폴더경로를 news폴더 경로로 변경한다.(/resources/data/ckeditor/ ===>> /resources/data/news/)
		vo.setContent(vo.getContent().replace("/data/ckeditor/", "/data/news/"));

		// content안의 내용정리가 끝나면 변경된 vo를 DB에 저장시켜준다.
		int res = newsService.setNewsInput(vo);
		
		if(res == 1) return "redirect:/message/newsInputOk";
		else return "redirect:/message/newsInputNo";
	}
	
	@SuppressWarnings({"rawtypes", "unchecked"})
	@RequestMapping(value = "/newsContent", method = RequestMethod.GET)
	public String newsContentGet(HttpSession session,
		@RequestParam(name="idx", defaultValue = "0", required = false) int idx,
		@RequestParam(name="pag", defaultValue = "1", required = false) int pag,
		@RequestParam(name="pageSize", defaultValue = "5", required = false) int pageSize,
		Model model) {
		
		// 글 조회수 1씩 증가시키기(조회수 중복방지 - 세션처리('news+고유번호'를 객체배열에 추가시켜준다.)
		ArrayList<String> contentIdx = (ArrayList) session.getAttribute("sContentIdx");
		if(contentIdx == null) {
			contentIdx = new ArrayList<String>();
		}
		String imsiContentIdx = "news" + idx;
		if(!contentIdx.contains(imsiContentIdx)) {
			newsService.setNewsReadNum(idx);	// 조회수 1증가하기
			contentIdx.add(imsiContentIdx);
		}
		session.setAttribute("sContentIdx", contentIdx);
		
		NewsVO vo = newsService.getNewsContent(idx);
		
		// 이전글/다음글 가져오기
		ArrayList<NewsVO> pnVos = newsService.getPrevNext(idx);
		model.addAttribute("pnVos", pnVos);
		model.addAttribute("vo", vo);
		model.addAttribute("pag", pag);
		model.addAttribute("pageSize", pageSize);
		
		
		// 해당글에 '좋아요' 버튼을 클릭하였었다면 '좋아요세션'에 아이디를 저장시켜두었기에 찾아서 있다면 sSw값을 1로 보내어 하트색을 빨강색으로 변경유지하게한다.(세션이 끈기면 다시 초기화 된다.)
		ArrayList<String> goodIdx = (ArrayList) session.getAttribute("sGoodIdx");
		if(goodIdx == null) {
			goodIdx = new ArrayList<String>();
		}
		String imsiGoodIdx = "newsGood" + idx;
		if(goodIdx.contains(imsiGoodIdx)) {
			session.setAttribute("sSw", "1");		// 로그인 사용자가 이미 좋아요를 클릭한 게시글이라면 빨강색으로 표시가히위해 sSW에 1을 전송하고 있다.
		}
		else {
			session.setAttribute("sSw", "0");
		}
		
		
		// DB에서 현재 게시글에 '좋아요'가 체크되어있는지를 알아오자.
		String mid = (String) session.getAttribute("sMid");
		GoodVO goodVo = newsService.getNewsGoodCheck(idx, "news", mid);
		model.addAttribute("goodVo", goodVo);
		
		return "news/newsContent";
	}
	
	// 좋아요수 증가처리하기
		// 좋아요 버튼을 클릭했을때 처리(처음으로 '좋아요'누르면 1을, 이미 '좋아요'가 한번이라도 눌렸었다면 '0'을 돌려준다.
		@SuppressWarnings({ "unchecked", "rawtypes" })
		@ResponseBody
		@RequestMapping(value = "/newsGoodCheckAjax", method = RequestMethod.POST)
		public String newsGoodCheckAjaxPost(HttpSession session, int idx) {
			String res = "0"; // 처음 0으로 셋팅하고, 처음 좋아요 버튼을 누르면 '1'을 돌려준다., 이미 '좋아요'를 한번 눌렀으면 '0'으로 res값을 보내준다.
			ArrayList<String> goodIdx = (ArrayList) session.getAttribute("sGoodIdx");
			if(goodIdx == null) {
				goodIdx = new ArrayList<String>();
			}
			String imsiGoodIdx = "newsGood" + idx;
			if(!goodIdx.contains(imsiGoodIdx)) {
				newsService.setNewsGoodPlus(idx);
				goodIdx.add(imsiGoodIdx);
				res = "1";	// 처음으로 좋아요 버튼을 클릭하였기에 '1'을 반환
			}
			session.setAttribute("sGoodIdx", goodIdx);
			
			return res;	// '좋아요'를 이미 눌렸을때 이곳으로 들어오면 처음설정값인 res는 '0'을 반환, 처음 눌렀으면 '1'을 반환~~
		}
		
		// 좋아요수 Plus버튼누르면 1증가처리..Minus버튼누르면 1감소 
		@SuppressWarnings({ "unchecked", "rawtypes" })
		@ResponseBody
		@RequestMapping(value = "/newsGoodPlusMinus", method = RequestMethod.POST)
		public String newsGoodPlusMinusPost(HttpSession session, int idx, int goodCnt) {
			String res = "0";
			// 좋아요수 단 한번씩만 1회 증가/감소시키기.(중복방지처리 - 세션 사용 : 'good+(고유번호*goodCnt)'를 객체배열에 추가시킨다.)
			ArrayList<String> goodIdx = (ArrayList) session.getAttribute("sGoodIdx");
			if(goodIdx == null) {
				goodIdx = new ArrayList<String>();
			}
			String imsiGoodIdx = "good" + (idx*goodCnt);
			if(!goodIdx.contains(imsiGoodIdx)) {
				newsService.setGoodPlusMinus(idx, goodCnt);	// 좋아요수 증가/감소
				goodIdx.add(imsiGoodIdx);
			}
			else {
				res = "1";
			}
			session.setAttribute("sGoodIdx", goodIdx);
			return res;
		}	
		
		
	
		// 좋아요~ 토글 처리(DB를 활용한 예제)
		@ResponseBody
		@RequestMapping(value = "/newsGoodDBCheck", method=RequestMethod.POST)
		public void newsGoodDBCheckPost(GoodVO goodVo) {
			// 처음 '좋아요'클릭시는 무조건 레코드를 생성, 그렇지 않으면, 즉 기존에 '좋아요'레코드가 있었다면 '해당레코드를 삭제' 처리한다.
			if(goodVo.getIdx() == 0) {
				newsService.setGoodDBInput(goodVo);
				newsService.setGoodUpdate(goodVo.getPartIdx(), 1);
			}
			else {
				newsService.setGoodDBDelete(goodVo.getIdx());
				newsService.setGoodUpdate(goodVo.getPartIdx(), -1);
			}
		}
		
		
		// 게시글 삭제하기
		@RequestMapping(value = "/newsDelete", method = RequestMethod.GET)
		public String newsDeleteGet(HttpSession session, HttpServletRequest request,
				@RequestParam(name="idx", defaultValue = "0", required=false) int idx,
				@RequestParam(name="pag", defaultValue = "1", required=false) int pag,
				@RequestParam(name="pageSize", defaultValue = "5", required=false) int pageSize,
				@RequestParam(name="nickName", defaultValue = "", required=false) String nickName
				) {
			// String sNickName = (String) session.getAttribute("sNickName");
			// if(!sNickName.equals(nickName)) return "redirect:/";
			
			// 게시글에 사진이 존재한다면 서버에 있는 사진파일을 먼저 삭제처리한다.
			NewsVO vo = newsService.getNewsContent(idx);
			if(vo.getContent().indexOf("src=\"/") != -1) newsService.imgDelete(vo.getContent());
			
			// DB에서 실제로 존재하는 게시글을 삭제처리한다.
			int res = newsService.setNewsDelete(idx);
			
			if(res == 1) return "redirect:/message/newsDeleteOk";
			else return "redirect:/message/newsDeleteNo?idx="+idx+"&pag="+pag+"&pageSize="+pageSize;
		}
		
		
		// 게시글 수정하기 폼 호출
		@RequestMapping(value = "/newsUpdate", method = RequestMethod.GET)
		public String newsUpdateGet(Model model,
				@RequestParam(name="idx", defaultValue = "0", required=false) int idx,
				@RequestParam(name="pag", defaultValue = "1", required=false) int pag,
				@RequestParam(name="pageSize", defaultValue = "5", required=false) int pageSize
			) {
			// 수정창으로 이동시에는 먼저 원본파일에 그림파일이 있다면, 현재폴더(news)의 그림파일들을 ckeditor폴더로 복사시켜둔다.
			NewsVO vo = newsService.getNewsContent(idx);
			if(vo.getContent().indexOf("src=\"/") != -1) newsService.imgCheckUpdate(vo.getContent());
			
			model.addAttribute("vo", vo);
			model.addAttribute("pag", pag);
			model.addAttribute("pageSize", pageSize);
			
			return "news/newsUpdate";
		}
		
		// 게시글에 변경된 내용을 수정처리하기(그림포함)
		@RequestMapping(value = "/newsUpdate", method = RequestMethod.POST)
		public String newsUpdatePost(NewsVO vo,
				@RequestParam(name="pag", defaultValue = "1", required=false) int pag,
				@RequestParam(name="pageSize", defaultValue = "5", required=false) int pageSize,
				Model model) {
			// 수정된 자료가 원본자료와 완전히 동일하다면 수정할 필요가 없기에, 먼저 DB에 저장된 원본자료를 불러와서 비교처리한다.
			NewsVO origVO = newsService.getNewsContent(vo.getIdx());
			
			// content의 내용이 조금이라도 변경된것이 있다면 내용을 수정처리한다.
			if(!origVO.getContent().equals(vo.getContent())) {
				// 실제로 수정하기 버튼을 클릭하게되면, 기존의 news폴더에 저장된, 현재 content의 그림파일 모두를 삭제 시킨다.
				if(origVO.getContent().indexOf("src=\"/") != -1) newsService.imgDelete(origVO.getContent());
				
				// news폴더에는 이미 그림파일이 삭제되어 있으므로(ckeditor폴더로 복사해놓았음), vo.getContent()에 있는 그림파일경로 'news'를 'ckeditor'경로로 변경해줘야한다.
				vo.setContent(vo.getContent().replace("/data/news/", "/data/ckeditor/"));
				
				// 앞의 작업이 끝나면 파일을 처음 업로드한것과 같은 작업을 처리시켜준다.
				// content에 이미지가 저장되어 있다면, 저장된 이미지만 골라서 /resources/data/news/폴더에 저장시켜준다.
				newsService.imgCheck(vo.getContent());
				
				// 이미지들의 모든 복사작업을 마치면, ckeditor폴더경로를 news폴더 경로로 변경한다.(/resources/data/ckeditor/ ===>> /resources/data/news/)
				vo.setContent(vo.getContent().replace("/data/ckeditor/", "/data/news/"));
			}
			
			// content의 내용과 그림파일까지, 잘 정비된 vo를 DB에 Update시켜준다.
			int res = newsService.setNewsUpdate(vo);
			
			model.addAttribute("idx", vo.getIdx());
			model.addAttribute("pag", pag);
			model.addAttribute("pageSize", pageSize);
			
			if(res == 1) {
				return "redirect:/message/newsUpdateOk";
			}
			else {
				return "redirect:/message/newsUpdateNo";
			}
		}
		
		

	
}
