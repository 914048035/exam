package com.java.programmer.dao.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.java.programmer.entity.admin.ExamPaperAnswer;

/**
 * 试卷dao层
 * @author Administrator
 *
 */
@Repository
public interface ExamPaperAnswerDao {
	public int add(ExamPaperAnswer examPaperAnswer);
	public int edit(ExamPaperAnswer examPaperAnswer);
	public List<ExamPaperAnswer> findList(Map<String, Object> queryMap);
	public int delete(Long id);
	public Integer getTotal(Map<String, Object> queryMap);
	public List<ExamPaperAnswer> findListByUser(Map<String, Object> queryMap);
	public int submitAnswer(ExamPaperAnswer examPaperAnswer);
}
