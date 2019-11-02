package com.devfun.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.devfun.vo.MovieVO;

@Repository
public class MovieDAOlmpl implements MovieDAO{
	
	@Inject
	private SqlSession sqlSession;//sqlSession을 통해 등록된 sql쿼리문 실행
	
	private static final String Namespace="com.devfun.mybatis.sql.test";

	@Override
	public List<MovieVO> selectMovie() throws Exception {//List에 sql쿼리문 리턴
		
		return sqlSession.selectList(Namespace+".selectMovie");
	}
	
	

}
