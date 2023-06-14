package com.ex02.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder

public class LoginDTO {
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_age;
}
