package com.medici.arang.board.artist.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.medici.arang.board.artist.command.ArtworkCommand;
import com.medici.arang.board.artist.dao.ArtworkDao;

public class ArtworkServiceImpl implements ArtworkService {
	
	@Autowired
	ArtworkDao artworkDao;
	
	public void addArtwork(ArtworkCommand artworkCommand) {
		artworkDao.addArtwork(artworkCommand);
	}
	
	public ArtworkCommand findArtwork(String email, long id) {
		return artworkDao.findArtwork(email, id);
	}

	public void updateMenuItem(ArtworkCommand artwork) {
		artworkDao.updateMenuItem(artwork);
	}
}
