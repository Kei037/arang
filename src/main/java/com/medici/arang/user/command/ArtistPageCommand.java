package com.medici.arang.user.command;

import java.util.List;

import com.medici.arang.board.artist.command.ArtworkCommand;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class ArtistPageCommand {
	private String name;
	private String genre;
	private String imgPath;
	private List<ArtworkCommand> artworkCommand;
	private long aid;
	
	public ArtistPageCommand() {
		super();
	}
}
