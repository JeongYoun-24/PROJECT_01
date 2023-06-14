package com.ex02.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ex02.util.ConnectionUtil;
import com.ex02.vo.LoginVO;

import lombok.Cleanup;

public class LoginDAO {

	
	public int LoginCheck(LoginVO vo) {
		
		String sql = "SELECT * FROM user_list where id = ?";
		int check = 0;
		try {
			@Cleanup Connection conn = ConnectionUtil.INSTANCE.getConnection();
			@Cleanup PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, vo.getUser_id());
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			
			if(vo.getUser_pw().equals(rs.getString("pw"))) {
				System.out.println("로그인 성공");
				check = 1;
			}else {
				System.out.println("로그인 실패");
				check = 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return check;
	}
	public String SearchId(LoginVO vo) {
		
		String user_id = null;
		String sql = "select * from user_list where name = ?";
		
		try {
			@Cleanup Connection conn = ConnectionUtil.INSTANCE.getConnection();
			@Cleanup PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, vo.getUser_name());
			ResultSet rs = pstmt.executeQuery();

			rs.next();
			user_id = rs.getString("id");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user_id;
	}
	
	
	public String SearchPW(LoginVO vo) {
		String user_pw = null;
		String sql = "select pw from user_list where id = ? and name = ? and age = ?";
		
		try {
			
			@Cleanup Connection conn = ConnectionUtil.INSTANCE.getConnection();
			@Cleanup PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, vo.getUser_id());
			pstmt.setString(2, vo.getUser_name());
			pstmt.setString(3, vo.getUser_age());
			
			ResultSet rs = pstmt.executeQuery();
			rs.next();

			user_pw = rs.getString(1);
			
		} catch (Exception e) {
		}
		return user_pw;
	}
	
}
