package com.recipe.cooked.model;

public class RecipeAutoComplete {

	private int id;
	private String title;
	private String imageType;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImageType() {
		return imageType;
	}

	public void setImageType(String imageType) {
		this.imageType = imageType;
	}

	@Override
	public String toString() {
		return "RecipeAutoComplete [id=" + id + ", title=" + title + ", imageType=" + imageType + "]";
	}

}
