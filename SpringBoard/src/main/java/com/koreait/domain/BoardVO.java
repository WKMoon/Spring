package com.koreait.domain;

import lombok.Data;

@Data
public class BoardVO {
	Long bno;
	private String title;
	private String content;
	private String writer;
	private String regDate;
	private String updateDate;
}
