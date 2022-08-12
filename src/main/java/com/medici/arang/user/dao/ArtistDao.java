package com.medici.arang.user.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.annotation.MultipartConfig;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.medici.arang.user.command.ArtistCommand;
import com.medici.arang.user.command.ArtistPageCommand;

public class ArtistDao {
	private JdbcTemplate jdbcTemplate;
	
	public ArtistDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	//아티스트 유저 추가
	public void addArtist(ArtistCommand artistCommand) {
		String sql = "INSERT INTO Artist (email, passwd, name, ssn, phone, genre, career, imgPath)"
				+ " VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql,artistCommand.getEmail(), artistCommand.getPasswd(),
				artistCommand.getName(), artistCommand.getSsn(), artistCommand.getPhone(),
				artistCommand.getGenre(), artistCommand.getCareer(), artistCommand.getImgPath());
	}
			
	//로그인 유효성 검증용
	public boolean isValidUser(String email, String passwd) {
		String sql = "SELECT count(*) FROM Artist WHERE email=? AND passwd=?";
		boolean result = true;
		int ishere = jdbcTemplate.queryForObject(sql, Integer.class, email, passwd);
		if(ishere == 0 ) {
			result = false;
		}
		return result;
	}		
	
	//모든 아티스트 조회
	public List<ArtistCommand> getAllArtist() {
		String sql = "SELECT * FROM Artist";
		return jdbcTemplate.query(sql, new ArtistRowMapper());
	}
	
	//이메일로 해당 유저 찾기
	public ArtistCommand getArtistByEmail(String email) {
		String sql = "SELECT * FROM Artist WHERE email=?";
		return jdbcTemplate.queryForObject(sql, new ArtistRowMapper(), email);
	}
	
	public List<ArtistPageCommand> findAllArtistkByEmail(String email) {
		String sql = "SELECT a.name, a.genre, a.imgPath, b.imgPath, b.aid "
				+ "FROM Artwork a INNER JOIN Artist b "
				+ "ON a.artistId = b.aid WHERE b.email = ?";
		
		return jdbcTemplate.query(sql, new RowMapper<ArtistPageCommand>() {
			
			@Override
			public ArtistPageCommand mapRow(ResultSet rs, int rowNum) throws SQLException {
				ArtistPageCommand artist = new ArtistPageCommand(
						rs.getString("name"), rs.getString("genre"),
						rs.getString("imgPath"), null, rs.getLong("aid"));
				return artist;
			}
		}, email);
	}
}
