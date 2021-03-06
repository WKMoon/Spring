package com.koreait.service;

import java.util.List;

import com.koreait.domain.BoardVO;
import com.koreait.domain.Criteria;

public interface BoardService {
	//게시물 등록
	public void register(BoardVO board);
	
	//특정 게시물 가져오기
	public BoardVO get(Long bno);
	
	//전체 게시글 개수
	public int getTotal(Criteria cri);
	
	//게시물 수정
	public boolean modify(BoardVO board);
	
	//게시물 삭제
	public boolean remove(Long bno);
	
	//전체 게시물 가져오기
	public List<BoardVO> getList();
	
	public List<BoardVO> getList(Criteria cri);
}
