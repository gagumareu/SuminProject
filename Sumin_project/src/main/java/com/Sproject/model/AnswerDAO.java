package com.Sproject.model;

import java.util.List;

public interface AnswerDAO {
	
	public int insertAnswer(AnswerDTO dto);
	public List<AnswerDTO> getAndswerList();

}
