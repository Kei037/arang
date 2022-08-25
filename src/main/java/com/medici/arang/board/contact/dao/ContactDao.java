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
import com.medici.arang.board.contact.command.FindContactGalleryCommand;

@Repository
public class ContactDao {
	private JdbcTemplate jdbcTemplate;
	
	public ContactDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	// contact 처리
	public void contactGallery(ContactCommand contactCommand) {
		String sql = "INSERT INTO Contact (galleryCode, artistId, sendingType) "
				+ "VALUES(?, ?, ?)";
		jdbcTemplate.update(sql, contactCommand.getGalleryCode(), 
				contactCommand.getArtistId(), contactCommand.getSendingType());
	}
	
	public void contactArtist(ContactCommand contactCommand) {
		String sql = "INSERT INTO Contact (galleryCode, artistId, comment, "
				+ "exhibitionTitle, startDate, endDate, sendingType) "
				+ "VALUES(?, ?, ?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, contactCommand.getGalleryCode(), 
				contactCommand.getArtistId(), contactCommand.getComment(),
				contactCommand.getExhibitionTitle(), contactCommand.getStartDate(),
				contactCommand.getEndDate(), contactCommand.getSendingType());
	}
	
	public List<ContactCommand> findContactList(long code) {
		String sql = "SELECT * FROM Contact WHERE galleryCode = ?";
		
		return jdbcTemplate.query(sql, new RowMapper<ContactCommand>() {
			public ContactCommand mapRow(ResultSet rs, int rowNum) throws SQLException {
				ContactCommand contactCommand = new ContactCommand(
						rs.getLong("contactId"), rs.getLong("galleryCode"), 
						rs.getLong("artistId"), rs.getString("comment"), 
						rs.getString("exhibitionTitle"), rs.getString("startDate"),
						rs.getString("endDate"), rs.getString("accept"),
						rs.getString("sendingType"), rs.getDate("regDate"));
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
				+ "b.imgPath, c.name, a.artistId, a.sendingType "
				+ "FROM Contact a LEFT JOIN Artist b "
				+ "ON b.aid = a.artistId JOIN Artwork c "
				+ "ON a.artistId = c.artistId "
				+ "WHERE a.galleryCode = ? AND a.sendingType = ? GROUP BY a.contactId";
		
		return jdbcTemplate.query(sql, new RowMapper<FindContactCommend>() {

			public FindContactCommend mapRow(ResultSet rs, int rowNum) throws SQLException {
				FindContactCommend artist = new FindContactCommend(rs.getLong("contactId"),
						rs.getString("accept"), rs.getDate("regDate"),
						rs.getString("name_kor"), rs.getString("genre"),
						rs.getString("imgPath"), rs.getString("name"),
						rs.getLong("artistId"), rs.getString("sendingType"));
				return artist;
			}
		}, id, "A");
	}
	
	public List<FindContactGalleryCommand> findGalleryByEmail(long id) {
		String sql = "SELECT a.contactId, a.accept, a.regDate, b.galleryName_eng, "
				+ "b.galleryImgPath, a.startDate, a.endDate, a.exhibitionTitle, "
				+ "a.comment, a.galleryCode, a.sendingType FROM Contact a LEFT JOIN Gallery b "
				+ "ON b.code = a.galleryCode WHERE a.artistId = ? "
				+ "AND a.sendingType = ? GROUP BY a.contactId";
		
		return jdbcTemplate.query(sql, new RowMapper<FindContactGalleryCommand>() {

			public FindContactGalleryCommand mapRow(ResultSet rs, int rowNum) throws SQLException {
				FindContactGalleryCommand gallery = new FindContactGalleryCommand(
						rs.getLong("contactId"), rs.getString("accept"), 
						rs.getDate("regDate"), rs.getString("galleryName_eng"),
						rs.getString("galleryImgPath"), rs.getString("startDate"),
						rs.getString("endDate"), rs.getString("exhibitionTitle"),
						rs.getString("comment"), rs.getLong("galleryCode"), 
						rs.getString("sendingType"));
				return gallery;
			}
		}, id, "G");
	}
	
}
