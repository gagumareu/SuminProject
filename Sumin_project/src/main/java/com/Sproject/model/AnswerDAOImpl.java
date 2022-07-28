package com.Sproject.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AnswerDAOImpl implements AnswerDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertAnswer(AnswerDTO dto) {
		return this.sqlSession.insert("insertAnswer", dto);
	}

	@Override
	public List<AnswerDTO> getAndswerList() {
		return this.sqlSession.selectList("getAnswerList");
	}

}
