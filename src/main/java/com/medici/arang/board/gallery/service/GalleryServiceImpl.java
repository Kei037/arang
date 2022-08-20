package com.medici.arang.board.gallery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.medici.arang.board.gallery.command.GalleryCommand;
import com.medici.arang.board.gallery.dao.GalleryDao;
import com.medici.arang.board.gallery.domain.GalleryVo;
import com.medici.arang.user.command.GalleristCommend;

public class GalleryServiceImpl implements GalleryService{
	
	@Autowired
	private GalleryDao galleryDao = new GalleryDao();

	@Override
	public void insertGallery(GalleryCommand galleryCommand) {
		galleryDao.insertGallery(galleryCommand);
	}
	
	public GalleryCommand findAllGalleryByRepresenterNum(String num) {
		return galleryDao.findAllGalleryByRepresenterNum(num);
	}
	/*
	@Override
	public void updateGallery(GalleryCommand galleryCommand, long gallery_code) {
		galleryDao.updateGallery(galleryCommand, gallery_code);
	}

	@Override
	public void deleteGallery(long gallery_code) {
		galleryDao.deleteGallery(gallery_code);
	}

	@Override
	public List<GalleryCommand> findAllGalleryInfo() {
		return galleryDao.findAllGalleryInfo();
	}
	
	@Override
	public GalleristCommend GalleristbyEmail(String email) {
		return galleryDao.GalleristbyEmail(email);
	}
	
	@Override
	public List<GalleryCommand> findImgPath() {
		return galleryDao.findImgPath();
	}
	
	@Override
	public GalleryCommand findOneGalleryInfo(long gallery_code) {
		return galleryDao.findOneGalleryInfo(gallery_code);
	}
	*/
}
