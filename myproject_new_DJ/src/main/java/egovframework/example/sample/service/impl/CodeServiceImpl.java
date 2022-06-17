package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.CodeService;
import egovframework.example.sample.service.CodeVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("codeService")
public class CodeServiceImpl implements CodeService {
	
	@Resource(name="codeDAO")
	private CodeDAO codeDAO;

	@Override
	public String insertCodes(CodeVO vo) throws Exception {
		return codeDAO.insertCodes(vo);
	}

	@Override // 다형성(
	public List<?> selectCodesList(CodeVO vo) throws Exception {
		return codeDAO.selectCodesList(vo);
	}

}
