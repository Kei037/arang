package com.medici.arang.board.gallery.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.medici.arang.board.artist.command.FindArtistInfoCommand;
import com.medici.arang.board.gallery.command.GalleryInfoCommand;
import com.medici.arang.board.gallery.command.GalleryPageCommand;

@Repository
public class GalleryInfoDao {
	private JdbcTemplate jdbcTemplate;
	
	public GalleryInfoDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public void insertGalleryInfo(GalleryInfoCommand infoCommand) {
		String sql = "INSERT INTO GalleryInfo (galleryCode, description, "
				+ "infoImgPath) VALUES(?, ?, ?)";
		jdbcTemplate.update(sql, infoCommand.getGalleryCode(), 
				infoCommand.getDescription(), infoCommand.getInfoImgPath());
	}
	
	public List<GalleryPageCommand> allFindGallery(){
		String sql = "SELECT a.code, a.galleristEmail, a.galleryName_kor, "
				+ "a.galleryName_eng, a.address, a.galleryEmail, "
				+ "a.galleryPhone, a.since, a.area, a.openClose, "
				+ "a.galleryImgPath, b.description, b.infoImgPath "
				+ "FROM GalleryInfo b LEFT JOIN Gallery a "
				+ "ON a.code = b.galleryCode";
		return jdbcTemplate.query(sql, new RowMapper<GalleryPageCommand>() {
			
			public GalleryPageCommand mapRow(ResultSet rs, int rowNum) throws SQLException {
				GalleryPageCommand artistInfo = new GalleryPageCommand(
						rs.getLong("code"), rs.getString("galleristEmail"),
						rs.getString("galleryName_kor"), rs.getString("galleryName_eng"), 
						rs.getString("address"), rs.getString("galleryEmail"), 
						rs.getString("galleryPhone"), rs.getString("since"), 
						rs.getString("area"), rs.getString("openClose"),
						rs.getString("galleryImgPath"), rs.getString("description"),
						rs.getString("infoImgPath"));
				return artistInfo;
			}
		});
	}
}
