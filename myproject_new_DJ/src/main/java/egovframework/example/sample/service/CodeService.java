package egovframework.example.sample.service;

import java.util.List;

public interface CodeService {	
	
	public String insertCodes(CodeVO vo) throws Exception;
	public List<?> selectCodesList(CodeVO vo) throws Exception;
	
	
} 

