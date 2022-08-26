package com.medici.arang.like.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.medici.arang.like.domain.LikeVo;
import com.medici.arang.like.service.LikeRowMapper;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Repository("likeDao")
public class LikeDao {
	private JdbcTemplate jdbcTemplate;
	
	public LikeDao(DataSource datasource) {
		jdbcTemplate = new JdbcTemplate(datasource);
	}
	
	public void likeUp(LikeVo likeVo) {
		String sql = " INSERT INTO LikeTable (userId, targetValue, likeNum)"
				+ " VALUES (?, ?, ?)";
		jdbcTemplate.update(sql, likeVo.getUserId(), likeVo.getTargetValue(),
				likeVo.getLikeNum());
	}
	
	public void likeDown(String userId, String targetValue) {
		String sql = "DELETE FROM LikeTable WHERE userId = ? AND targetValue = ?";
		jdbcTemplate.update(sql, userId, targetValue); 
	}
	
	//UPDATE
	public void updateLike(LikeVo likeVo, String userId, String targetValue) {
		String sql = "UPDATE LikeTable SET LikeNum = (SELECT COUNT(*) FROM Like)"				
				+ " WHERE userId = ? AND targetValue = ?";
		jdbcTemplate.update
				(sql, likeVo.getUserId(), likeVo.getTargetValue(),
						likeVo.getLikeNum(), userId, targetValue);
	}
	
	//COUNT
	public int getLike(String userId, String targetValue) {
		String sql = "SELECT Count(*) FROM LikeTable"
				+ " WHERE userId = ? AND targetValue = ?";
		return jdbcTemplate.queryForObject(sql, int.class, userId, targetValue);
	}
	
	//FIND by 아이디, 대상아이디
	public LikeVo findLike(String userId, String targetValue) {
		String sql = "SELECT * FROM LikeTable"
				+ " WHERE userId = ? AND targetValue = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new LikeRowMapper(), userId, targetValue);			
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	//FIND ALL
	public List<LikeVo> findLike() {
		String sql = "SELECT * FROM LikeTable";
		return jdbcTemplate.query(sql, new LikeRowMapper());
	}
	
	//FIND by 아이디
	public List<LikeVo> findLike(String userId) {
		String sql = "SELECT * FROM LikeTable"
				+ " WHERE userId = ?";
			return jdbcTemplate.query(sql, new LikeRowMapper(), userId);			
	}
	
}
