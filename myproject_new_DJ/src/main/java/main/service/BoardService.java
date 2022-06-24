package main.service;

import java.util.List;

// 컨트롤러와 연결되는 설정

public interface BoardService {
	/*
	 * 일반게시판 저장처리
	 */
	public String insertNBoard(BoardVO vo) throws Exception;
	/*
	 * 일반게시판 화면목록	
	 */
	public List<?> selectNBoardList(BoardVO vo) throws Exception;
	/*
	 * Total 갯수 얻기
	 */
	public int selectNBoardTotal(BoardVO vo) throws Exception;

}
