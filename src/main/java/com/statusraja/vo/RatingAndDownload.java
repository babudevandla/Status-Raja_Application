package com.statusraja.vo;

import java.util.Date;

public class RatingAndDownload {

	private Integer srid;
	private Integer rating;
	private Integer likes;
	private Integer downloadcount;
	private Integer dislike;
	private Date createddate;
	private Date updateddate;

	public Integer getSrid() {
		return srid;
	}

	public void setSrid(Integer srid) {
		this.srid = srid;
	}

	public Integer getRating() {
		return rating;
	}

	public void setRating(Integer rating) {
		this.rating = rating;
	}

	public Integer getLikes() {
		return likes;
	}

	public void setLikes(Integer likes) {
		this.likes = likes;
	}

	public Integer getDownloadcount() {
		return downloadcount;
	}

	public void setDownloadcount(Integer downloadcount) {
		this.downloadcount = downloadcount;
	}

	public Integer getDislike() {
		return dislike;
	}

	public void setDislike(Integer dislike) {
		this.dislike = dislike;
	}

	public Date getCreateddate() {
		return createddate;
	}

	public void setCreateddate(Date createddate) {
		this.createddate = createddate;
	}

	public Date getUpdateddate() {
		return updateddate;
	}

	public void setUpdateddate(Date updateddate) {
		this.updateddate = updateddate;
	}

	@Override
	public String toString() {
		return "RatingAndDownload [srid=" + srid + ", rating=" + rating + ", likes=" + likes + ", downloadcount="
				+ downloadcount + ", dislike=" + dislike + ", createddate=" + createddate + ", updateddate="
				+ updateddate + "]";
	}

}
