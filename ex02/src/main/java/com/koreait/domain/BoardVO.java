package com.koreait.domain;

import lombok.Data;

/*BNO NUMBER(10),
TITLE SVARCHAR2(200) NOT NULL,
CONTENT VARCHAR2(2000) NOT NULL,
WRITER VARCHAR2(200) NOT NULL,
REGDATE DATE DEFAULTS SYSDATE,
UPDATEDATE DATE DEFAULT SYSDATE*/
@Data
public class BoardVO {
	Long bno;
	private String title;
	private String content;
	private String writer;
	private String regDate;
	private String updateDate;
}