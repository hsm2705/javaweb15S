package com.spring.javaweb15S;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.javaweb15S.pagination.PageProcess;
import com.spring.javaweb15S.service.VodService;
import com.spring.javaweb15S.vo.VodVO;

@Controller
@RequestMapping("/vod")
public class VodController {
	
	@Autowired
	VodService vodService;
	
	@Autowired
	PageProcess pageProcess;
	
	@RequestMapping(value = "/vodList", method = RequestMethod.GET)
	public String vodList(Model model,
				@RequestParam(name = "part", defaultValue = "전체", required = false) String part) {
		ArrayList<VodVO> partVOS = vodService.getVodPart();
		
		model.addAttribute("partVOS", partVOS);
		model.addAttribute("part",part);
		
		ArrayList<VodVO> vodVOS = vodService.getPartVodList(part);
		model.addAttribute("vodVOS",vodVOS);
		return "vod/vodList";
	}

}
