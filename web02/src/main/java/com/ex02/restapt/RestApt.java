package com.ex02.restapt;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Iterator;

import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.ex02.util.ConnectionUtil;

import lombok.Cleanup;

@WebServlet("/RestApt")
public class RestApt extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String json_info = req.getParameter("user_info");
		System.out.println(json_info);
		JSONParser jsonParser = new JSONParser();
		
		try {
			JSONObject jsonObject  = (JSONObject) jsonParser.parse(json_info);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			resp.setContentType("text/html;charset=utf-8");
			PrintWriter out = resp.getWriter();
			JSONObject Object2 = new JSONObject();
			JSONArray Array = new JSONArray();
			
			String sql = "select * from user_list";
			@Cleanup Connection conn = ConnectionUtil.INSTANCE.getConnection();
			@Cleanup PreparedStatement pstmt = conn.prepareStatement(sql);
			@Cleanup ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				JSONObject Info = new JSONObject();
				Info.put("user_id", rs.getString(1));
				Info.put("user_pw", rs.getString(2));
				Info.put("user_name", rs.getString(3));
				Info.put("user_age", rs.getString(4));
				Array.add(Info);
			}
			Object2.put("user", Array);
			String jsonInfo = Object2.toJSONString();
			
			out.print(jsonInfo);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
}
