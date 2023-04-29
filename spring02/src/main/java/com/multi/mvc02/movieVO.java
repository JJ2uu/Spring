package com.multi.mvc02;

public class movieVO {
	String id;
	String title;
	String genre;
	String location;
	String director;
	String img;

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	@Override
	public String toString() {
		return "movieVO [id=" + id + ", title=" + title + ", genre=" + genre + ", location=" + location + ", director="
				+ director + ", img=" + img + "]";
	}
	
	
	
}
