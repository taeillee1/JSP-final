package kr.co.softcampus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UpdateActionController {
	@RequestMapping(value="/updateAction", method=RequestMethod.POST)
	public String UpdateAction() {
		return "updateAction";
	}
}
