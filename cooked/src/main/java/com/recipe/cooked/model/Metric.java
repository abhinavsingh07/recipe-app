package com.recipe.cooked.model;

public class Metric {
	public double amount;
	public String unitShort;
	public String unitLong;

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public String getUnitShort() {
		return unitShort;
	}

	public void setUnitShort(String unitShort) {
		this.unitShort = unitShort;
	}

	public String getUnitLong() {
		return unitLong;
	}

	public void setUnitLong(String unitLong) {
		this.unitLong = unitLong;
	}
}
