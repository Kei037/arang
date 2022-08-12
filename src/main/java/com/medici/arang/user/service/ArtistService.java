package com.medici.arang.user.service;

import java.util.List;

import com.medici.arang.user.command.ArtistCommand;

public interface ArtistService {
	public void addArtist(ArtistCommand artistCommand);
	List<ArtistCommand> getAllArtist();
	ArtistCommand getArtistByEmail(String email);
}