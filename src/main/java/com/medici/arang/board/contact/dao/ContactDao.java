package com.medici.arang.board.contact.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.medici.arang.board.contact.command.ContactCommand;
import com.medici.arang.board.contact.command.FindContactCommend;
import com.medici.arang.user.command.ArtistPageCommand;

@Repository
public class ContactDao {
	private JdbcTemplate jdbcTemplate;
	
	public ContactDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	// contact 처리
	public void contactGallery(ContactCommand contactCommand) {
		String sql = "INSERT INTO Contact (galleryCode, artistId) "
				+ "VALUES(?, ?)";
		jdbcTemplate.update(sql, contactCommand.getGalleryCode(), 
				contactCommand.getArtistId());
	}
	
	public List<ContactCommand> findContactList(long code) {
		String sql = "SELECT * FROM Contact WHERE galleryCode = ?";
		
		return jdbcTemplate.query(sql, new RowMapper<ContactCommand>() {
			public ContactCommand mapRow(ResultSet rs, int rowNum) throws SQLException {
				ContactCommand contactCommand = new ContactCommand(
						rs.getLong("contactId"), rs.getLong("galleryCode"), 
						rs.getLong("artistId"), rs.getString("comment"), 
						rs.getString("exhibitionDate"), rs.getString("accept"),
						rs.getDate("regDate"));
				return contactCommand;
			}
		}, code);
		 
	}
	
	// 승낙/거절 처리
	public void acceptTpye(String accept, long id) {
		String sql = " UPDATE Contact SET accept=? WHERE contactId=?";
		jdbcTemplate.update(sql, accept, id);
	}
	
	
	public List<FindContactCommend> findArtistkById(long id) {
		String sql = "SELECT a.contactId, a.accept, a.regDate, b.name_kor, b.genre, "
				+ "b.imgPath, c.name FROM Contact a LEFT JOIN Artist b "
				+ "ON b.aid = a.artistId JOIN Artwork c "
				+ "ON a.artistId = c.artistId "
				+ "WHERE a.galleryCode = ? GROUP BY a.contactId";
		
		return jdbcTemplate.query(sql, new RowMapper<FindContactCommend>() {

			public FindContactCommend mapRow(ResultSet rs, int rowNum) throws SQLException {
				FindContactCommend artist = new FindContactCommend(rs.getLong("contactId"),
						rs.getString("accept"), rs.getDate("regDate"),
						rs.getString("name_kor"), rs.getString("genre"),
						rs.getString("imgPath"), rs.getString("name"));
				return artist;
			}
		}, id);
	}
	
}