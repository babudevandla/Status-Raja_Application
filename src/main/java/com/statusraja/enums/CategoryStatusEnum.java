package com.statusraja.enums;

public enum CategoryStatusEnum {

	RINGTONE(1, "RINGTONE"), TEXTSTATUS(2, "TEXTSTATUS"),HD_WALLPAPERS(2, "HD_WALLPAPERS"),MOBILE_WALLPAPERS(2, "MOBILE_WALLPAPERS"),
	IMAGESTATUS(5, "IMAGESTATUS");

	private int id;
	private String status;

	private CategoryStatusEnum(int id, String status) {
		this.id = id;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	static CategoryStatusEnum[] values = values();

	public static CategoryStatusEnum getStatus(int id) {
		for (CategoryStatusEnum value : values) {
			if (value.getId() == id)
				return value;
		}
		return null;
	}
}
