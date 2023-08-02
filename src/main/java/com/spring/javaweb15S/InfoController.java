package com.spring.javaweb15S;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/info")
public class InfoController {
	
	
	@RequestMapping(value = "/infoMain", method = RequestMethod.GET)
	public String infoMain() {
		return "info/infoMain";
	}
	
	@RequestMapping(value = "/teamInfo", method = RequestMethod.GET)
	public String teamInfo() {
		return "info/team/teamInfo";
	}

	@RequestMapping(value = "/team/gen", method = RequestMethod.GET)
	public String gen() {
		return "info/team/gen";
	}
	
	@RequestMapping(value = "/team/t1", method = RequestMethod.GET)
	public String t1() {
		return "info/team/t1";
	}
	
	@RequestMapping(value = "/team/kt", method = RequestMethod.GET)
	public String kt() {
		return "info/team/kt";
	}
	
	@RequestMapping(value = "/team/hle", method = RequestMethod.GET)
	public String hle() {
		return "info/team/hle";
	}
	
	@RequestMapping(value = "/team/dk", method = RequestMethod.GET)
	public String dk() {
		return "info/team/dk";
	}
	
	@RequestMapping(value = "/team/lsb", method = RequestMethod.GET)
	public String lsb() {
		return "info/team/lsb";
	}
	
	@RequestMapping(value = "/team/kdf", method = RequestMethod.GET)
	public String kdf() {
		return "info/team/kdf";
	}
	
	@RequestMapping(value = "/team/bro", method = RequestMethod.GET)
	public String bro() {
		return "info/team/bro";
	}
	
	@RequestMapping(value = "/team/drx", method = RequestMethod.GET)
	public String drx() {
		return "info/team/drx";
	}
	
	@RequestMapping(value = "/team/ns", method = RequestMethod.GET)
	public String ns() {
		return "info/team/ns";
	}

	
	
	
	@RequestMapping(value = "/playerInfo", method = RequestMethod.GET)
	public String playerInfo() {
		return "info/playerInfo";
	}

}
