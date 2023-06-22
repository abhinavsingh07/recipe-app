package com.recipe.cooked.model;

import java.util.ArrayList;

public class ResponseAsResult {
	public ArrayList<Recipe> results;
	public int offset;
	public int number;
	public int totalResults;

	public ArrayList<Recipe> getResults() {
		return results;
	}

	public void setResults(ArrayList<Recipe> results) {
		this.results = results;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public int getTotalResults() {
		return totalResults;
	}

	public void setTotalResults(int totalResults) {
		this.totalResults = totalResults;
	}

}
