package com.koreait.sample;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.Setter;

//2
@Component
@Data
public class Restaurant {
	//3
	//onMethod 속성은 생성되는 setChef에 @Autowired 어노테이션을 추가하도록 할 떄 사용된다.
	//버젼에 따라 onMethod 혹은 onMethod_ 를 사용하게 된다.
	@Setter(onMethod_ = @Autowired)
	private Chef chef;
}
