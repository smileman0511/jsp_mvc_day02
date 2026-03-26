package com.app.post.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.PostDAO;

public class PostUpdateController implements Action {

	@Override
	public Result excute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		PostDAO postDAO = new PostDAO();
		
		postDAO.select(Long.parseLong(req.getParameter("id"))).ifPresent((post) -> {
			req.setAttribute("post", post);
		});
		
		result.setPath("/post/update.jsp");
		return result;
	}

}
