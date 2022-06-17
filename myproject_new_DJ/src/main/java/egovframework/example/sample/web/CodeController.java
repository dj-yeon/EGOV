package egovframework.example.sample.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.sample.service.CodeService;
import egovframework.example.sample.service.CodeVO;

@Controller // 컨트롤러 역할 부여. 반드시 해야함.
public class CodeController {
	
	@Resource(name="codeService")
	private CodeService codeService;
	
	@RequestMapping(value="/codeWrite.do") //맵핑 주소
	public String codeWrite() { //맵핑 주소와 같아도 됨
	
		return "code/codeWrite";
	}
	
	@RequestMapping(value="/codeWriteSave.do")
	public String insertCode(CodeVO vo) throws Exception {
		
		System.out.println("gid : "+vo.getGid());
		System.out.println("name : " + vo.getName());
		
		// String result = null; -- 성공함
		String result = codeService.insertCodes(vo);		
		
		if( result == null) {
			System.out.println("저장완료");
		} else {
			System.out.println("저장실패");
		}
		// UPDATE, DELETE 저장 안되면 IBATIS에서 -> 0, insert는 오류를 던짐
		return "redirect:codeList.do"; // 저장처리 후, 이동해라.
		
		}
	
	@RequestMapping(value="/codeList.do")
	public String selectCodeList(CodeVO vo, ModelMap model) throws Exception {
		
		List<?> list = codeService.selectCodesList(vo);
		
		System.out.println("list =====> " + list);
		
		model.addAttribute("resultList",list);
		
		return "code/codeList";
	}
	
	
	
	
	
	
	
}