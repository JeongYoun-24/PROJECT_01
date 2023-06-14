package com.ex02.service;

import org.modelmapper.ModelMapper;

import com.ex02.dao.LoginDAO;
import com.ex02.dto.LoginDTO;
import com.ex02.util.MapperUtil;
import com.ex02.vo.LoginVO;



public enum LoginService {
	INSTANCE;
	
	private LoginDAO dao;
	private ModelMapper modelMapper;
	
	private LoginService() {
		dao = new LoginDAO();
		modelMapper = MapperUtil.INSTANCE.get();
	}
	
	public int LoginCheck(LoginDTO dto) {
		
		LoginVO vo = modelMapper.map(dto, LoginVO.class);
		int check = dao.LoginCheck(vo);
		
		return check;
	}
	
	public String SearchId(LoginDTO dto) {
		LoginVO vo = modelMapper.map(dto, LoginVO.class);
		String user_id = dao.SearchId(vo);
		
		return user_id;
	}
	public String Searchpw(LoginDTO dto) {
		
		LoginVO vo = modelMapper.map(dto, LoginVO.class);
		String user_pw = dao.SearchPW(vo);
		
		return user_pw;
	}
	
}
