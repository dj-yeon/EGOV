package main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

	@RequestMapping("/boradWrite.do")
	public String boardWrite() {
		
		return "board/boardWrite"; //JSP 파일 경로
		
	}
}
