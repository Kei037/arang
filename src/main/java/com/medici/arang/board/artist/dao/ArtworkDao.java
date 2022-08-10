package com.medici.arang.board.artist.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.medici.arang.board.artist.command.ArtworkCommand;

@Repository("artworkDao")
public class ArtworkDao {
	
	private JdbcTemplate jdbcTemplate;
	
	public ArtworkDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public void addArtwork(ArtworkCommand artworkCommand) {
		String sql = "INSERT INTO Artwork (artistId, artworkName, artworkImg, "
				+ "description, artworkCategory) VALUES (?, ?, ?, ?, ?)";
		System.out.println("성공!!");
		jdbcTemplate.update(sql, artworkCommand.getArtistId(), 
				artworkCommand.getArtworkName(), artworkCommand.getArtworkImg(),
				artworkCommand.getDescription(), artworkCommand.getArtworkCategory());
	}
	
	
	public List<ArtworkCommand> findArtworkList(long artistId) {
		String sql = "SELECT a.wid, a.artistId, a.artworkName, a.artworkImg, a.description, "
				+ "a.artworkCategory FROM Artwork a INNER JOIN Artist b ON "
				+ "a.artistId = b.aid WHERE a.artistId = ?";
		
			return jdbcTemplate.query(sql, new RowMapper<ArtworkCommand>() {
			
			public ArtworkCommand mapRow(ResultSet rs, int rowNum) throws SQLException {
				ArtworkCommand artworkCommand = new ArtworkCommand(rs.getLong("wid"), 
						rs.getLong("artistId"), rs.getString("artworkName"), 
						rs.getString("artworkImg"), rs.getString("description"), 
						rs.getString("artworkCategory"));
				return artworkCommand;
			}
		}, artistId);
	}
	
	
	public ArtworkCommand findArtwork(String email, long id) {
		String sql = "SELECT a.wid, a.artistId, a.artworkName, a.artworkImg, a.description, "
				+ "a.artworkCategory FROM Artwork a INNER JOIN Artist b ON "
				+ "a.artistId = b.aid WHERE a.wid = ?";
		
		return jdbcTemplate.queryForObject(sql, new RowMapper<ArtworkCommand>() {
			
			public ArtworkCommand mapRow(ResultSet rs, int rowNum) throws SQLException {
				ArtworkCommand artworkCommand = new ArtworkCommand(rs.getLong("wid"), 
						rs.getLong("artistId"), rs.getString("artworkName"), 
						rs.getString("artworkImg"), rs.getString("description"), 
						rs.getString("artworkCategory"));
				return artworkCommand;
			}
		}, id);
	}
	

	public void updateArtwork(ArtworkCommand artwork) {
		String sql = "UPDATE Artwork SET artistId = ?, artworkName = ?, "
				+ "artworkImg = ?, description = ?, artworkCategory = ? "
				+ "WHERE wid = ?";
		jdbcTemplate.update(sql, artwork.getArtistId(),	artwork.getArtworkName(), 
				artwork.getArtworkImg(), artwork.getDescription(), 
				artwork.getArtworkCategory(), artwork.getWid());
	}
	
	public void deleteArtwork(long id) {
		String sql = "DELETE FROM Artwork WHERE wid=?";
		jdbcTemplate.update(sql, id);
	}
	
	public List<ArtworkCommand> allFindArtwork() {
		String sql = "SELECT * FROM Artwork";
		
		return jdbcTemplate.query(sql, new RowMapper<ArtworkCommand>() {
			
			public ArtworkCommand mapRow(ResultSet rs, int rowNum) throws SQLException {
				ArtworkCommand artworkCommand = new ArtworkCommand(rs.getLong("wid"),
						rs.getLong("artistId"), rs.getString("artworkName"), 
						rs.getString("artworkImg"), rs.getString("description"), 
						rs.getString("artworkCategory"));
				return artworkCommand;
			}
		});
	}
	
}
