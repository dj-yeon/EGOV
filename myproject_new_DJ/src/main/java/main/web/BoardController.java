package main.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import main.service.BoardService;
import main.service.BoardVO;

@Controller
public class BoardController {

	@Resource(name="boardService")	//Controller의 name과 ServiceImpl의 Service와의 이름은 같아야 함.
	private BoardService boardService;
	
	@RequestMapping("/boardWrite.do")
	public String boardWrite() {
		
		return "board/boardWrite"; //JSP 파일 경로
		
	}
	
	@RequestMapping("/boardWriteSave.do")
	@ResponseBody //비동기 전송방식으로 했을 때, 
	public String insertNBoard(BoardVO vo) throws Exception {
		// result = null; -- 성공했을 시	
		String result = boardService.insertNBoard(vo);
		String msg = "";
		if(result==null) msg = "ok";
		else msg = "fail";
		return msg;
	}
	
	@RequestMapping("/boardList.do")
	public String selectNBoardList(BoardVO vo, ModelMap model) throws Exception {
		
		int unit = 5;
		
		// 총 데이터 개수
		int total = boardService.selectNBoardTotal(vo);		
				
		int totalPage = (int) Math.ceil((double)total/unit); //ceil - 올림함수
		
		int viewPage = vo.getViewPage();
		// 1 -> 1, 10 // 2 -> 11,20
		
		if(viewPage > totalPage || viewPage < 1) {
			viewPage = 1;
		}
		
		int startIndex = (viewPage-1) * unit + 1;
		int endIndex = startIndex + (unit - 1);
				
		int startRowNo = total - (viewPage - 1) * unit;
				
		vo.setStartIndex(startIndex);
		vo.setEndIndex(endIndex);		
		
		List<?> list = boardService.selectNBoardList(vo);
		System.out.println("list : " + list);
		
		model.addAttribute("rowNumber", startRowNo);
		model.addAttribute("total", total);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("resultList", list );
		
		return "board/boardList"; //JSP 경로
	}
	
	
}
