package com.medici.arang.board.artist.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.medici.arang.board.artist.command.ArtworkCommand;
import com.medici.arang.board.artist.dao.ArtworkDao;

public class ArtworkServiceImpl implements ArtworkService {
	
	@Autowired
	ArtworkDao artworkDao;
	
	@Override
	public void addArtwork(ArtworkCommand artworkCommand) {
		artworkDao.addArtwork(artworkCommand);
	}
	
	@Override
	public ArtworkCommand findArtwork(String email, long id) {
		return artworkDao.findArtwork(email, id);
	}
	
	@Override
	public void updateArtwork(ArtworkCommand artwork) {
		artworkDao.updateArtwork(artwork);
	}
	
	@Override
	public void deleteArtwork(long id) {
		artworkDao.deleteArtwork(id);
	}
	
	@Override
	public List<ArtworkCommand> findArtworkList(long artistId) {
		return artworkDao.findArtworkList(artistId);
	}
	
	public List<ArtworkCommand> allFindArtwork() {
		return artworkDao.allFindArtwork();
	}
}
