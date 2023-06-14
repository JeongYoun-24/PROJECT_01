package com.ex02.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class LoginVO {
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_age;
}
