package com.koreait.service;

import java.util.List;

import com.koreait.domain.BoardVO;
import com.koreait.domain.Criteria;

public interface BoardService {

	public void register(BoardVO baord);
	
	public BoardVO get(Long bno);
	
	public int getTotal(Criteria cri);
	
	public boolean modify(BoardVO board);
	
	public boolean remove(Long bno);
	
	public List<BoardVO> getList();
	
	public List<BoardVO> getList(Criteria cri);
}
