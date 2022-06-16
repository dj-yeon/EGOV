package egovframework.example.sample.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.CodeVO;
import egovframework.example.sample.service.CodeService;

@Service("codeService") // 서비스 파일을 서비스한다.
public class CodeServiceImpl implements CodeService {

	// 다른 클래스 사용을 위한, Annotation 설정
	@Resource(name="codeDAO")
	private CodeDAO codeDAO;
	
	@Override
	public String insertCodes(CodeVO vo) throws Exception {
		return codeDAO.insertCodes(vo);
	}
}
