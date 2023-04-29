package com.multi.mvc03;

public class MapVO {
	private double lat;
	private double lon;
	private String loc;
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public double getLon() {
		return lon;
	}
	public void setLon(double lon) {
		this.lon = lon;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	@Override
	public String toString() {
		return "MapVO [lat=" + lat + ", lon=" + lon + ", loc=" + loc + "]";
	}

}
