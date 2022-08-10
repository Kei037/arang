package com.medici.arang.board.artist.service;

import java.util.List;

import com.medici.arang.board.artist.command.ArtworkCommand;

public interface ArtworkService {
	
	void addArtwork(ArtworkCommand artworkCommand);
	ArtworkCommand findArtwork(String email, long id);
	void updateArtwork(ArtworkCommand artwork);
	void deleteArtwork(long id);
	List<ArtworkCommand> findArtworkList(long artistId);
}
