package com.Sproject.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StudentsDAOImpl implements StudentsDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<StudentsDTO> getStudentsList() {
		return this.sqlSession.selectList("getStudentsList");
		
	}

}
