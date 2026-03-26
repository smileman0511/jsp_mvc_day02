package com.app.dao;

import java.util.List;
import java.util.Optional;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.PostVO;

public class PostDAO {
	private SqlSession SqlSession;
	
	public PostDAO() {
		SqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void insert(PostVO postVO) {
		SqlSession.insert("post.insert", postVO);
	}
	
	public List<PostVO> selectAll() {
		return SqlSession.selectList("post.selectAll");
	}
	
	public Optional<PostVO> select(Long id) {
		return Optional.ofNullable(SqlSession.selectOne("post.select", id));
	}
	
	public void update(PostVO postVO) {
		SqlSession.update("post.update", postVO);
	}
	
	public void delete(Long id) {
		SqlSession.delete("post.delete", id);
	}
}














