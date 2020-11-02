package com.dyung.kim;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/board")
public class BoardController {

	@RequestMapping(value="/boardAllList", method=RequestMethod.GET)
	public String boardList() {
		return "board/boardList";
	}
	
	@RequestMapping(value="/boardWriteForm", method=RequestMethod.GET)
	public String boardWriteForm() {
		return "board/boardWriteForm";
	}
}
